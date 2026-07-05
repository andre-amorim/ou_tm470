#!/usr/bin/env python3
import sys
import re
import yaml
from pathlib import Path
import xml.etree.ElementTree as ET
from xml.dom import minidom

def escape_xml(text):
    return text.replace('&', '&amp;').replace('<', '&lt;').replace('>', '&gt;').replace('"', '&quot;').replace("'", '&apos;')

def parse_inline(text):
    # Parse inline formatting: bold, italic, code, glossary, links
    # 1. Links: [text](href) -> <a href="href">text</a>
    text = re.sub(r'\[([^\]]+)\]\(([^)]+)\)', r'<a href="\2">\1</a>', text)
    # 2. Glossary Term: [Term]{glossary} -> <GlossaryTerm>Term</GlossaryTerm>
    text = re.sub(r'\[([^\]]+)\]\{glossary\}', r'<GlossaryTerm>\1</GlossaryTerm>', text)
    # 3. Bold: **text** or __text__ -> <b>text</b>
    text = re.sub(r'\*\*([^*]+)\*\*|__([^_]+)__', lambda m: f"<b>{m.group(1) or m.group(2)}</b>", text)
    # 4. Italic: *text* or _text_ -> <i>text</i>
    text = re.sub(r'\*([^*]+)\*|_([^_]+)_', lambda m: f"<i>{m.group(1) or m.group(2)}</i>", text)
    # 5. Inline Code: `code` -> <ComputerCode>code</ComputerCode>
    text = re.sub(r'`([^`]+)`', r'<ComputerCode>\1</ComputerCode>', text)
    return text

def parse_codelab_markdown(md_content):
    # Split frontmatter
    frontmatter = {}
    content = md_content
    if md_content.startswith('---'):
        parts = md_content.split('---', 2)
        if len(parts) >= 3:
            try:
                frontmatter = yaml.safe_load(parts[1])
            except Exception as e:
                print(f"Warning: Failed to parse frontmatter: {e}", file=sys.stderr)
            content = parts[2]

    # Split by H2 headers (steps/sessions)
    h2_pattern = re.compile(r'^##\s+(.+)$', re.MULTILINE)
    h2_matches = list(h2_pattern.finditer(content))
    
    # Unit Title is H1
    h1_match = re.search(r'^#\s+(.+)$', content, re.MULTILINE)
    unit_title = h1_match.group(1).strip() if h1_match else "Untitled Unit"

    sessions = []
    
    # If there is content before the first H2, treat it as part of an intro session
    start_pos = 0
    if h2_matches:
        intro_content = content[start_pos:h2_matches[0].start()].strip()
        # Strip the H1 header if it's there
        if h1_match:
            intro_content = intro_content.replace(h1_match.group(0), "").strip()
        if intro_content:
            sessions.append({
                "title": "Introduction",
                "content": intro_content
            })
    
    for i, match in enumerate(h2_matches):
        title = match.group(1).strip()
        start = match.end()
        end = h2_matches[i+1].start() if i+1 < len(h2_matches) else len(content)
        step_content = content[start:end].strip()
        # Remove "Duration: ..." lines common in Codelabs
        step_content = re.sub(r'^Duration:\s*\d+:\d+\s*$', '', step_content, flags=re.MULTILINE | re.IGNORECASE).strip()
        step_content = re.sub(r'^Duration:\s*\d+\s*$', '', step_content, flags=re.MULTILINE | re.IGNORECASE).strip()
        sessions.append({
            "title": title,
            "content": step_content
        })

    return frontmatter, unit_title, sessions

def convert_session_to_xml(session_data):
    session_xml = []
    session_xml.append(f"        <Session>")
    session_xml.append(f"            <Title>{escape_xml(session_data['title'])}</Title>")
    
    # Split content by H3 (sections)
    content = session_data['content']
    h3_pattern = re.compile(r'^###\s+(.+)$', re.MULTILINE)
    h3_matches = list(h3_pattern.finditer(content))
    
    sections = []
    if h3_matches:
        # Pre-H3 content
        pre_content = content[0:h3_matches[0].start()].strip()
        if pre_content:
            sections.append({
                "title": None,
                "content": pre_content
            })
        for i, match in enumerate(h3_matches):
            title = match.group(1).strip()
            start = match.end()
            end = h3_matches[i+1].start() if i+1 < len(h3_matches) else len(content)
            sections.append({
                "title": title,
                "content": content[start:end].strip()
            })
    else:
        # Whole content as single section
        sections.append({
            "title": None,
            "content": content
        })

    for section in sections:
        session_xml.append("            <Section>")
        if section['title']:
            session_xml.append(f"                <Title>{escape_xml(section['title'])}</Title>")
        
        # Parse blocks in section content
        blocks = parse_blocks(section['content'])
        for block in blocks:
            session_xml.append(block)
            
        session_xml.append("            </Section>")
        
    session_xml.append("        </Session>")
    return "\n".join(session_xml)

def parse_blocks(content):
    # Parse markdown into XML blocks (Paragraphs, BulletedList, Boxes, Activities, SAQs, ProgramListings)
    xml_blocks = []
    lines = content.split('\n')
    i = 0
    while i < len(lines):
        line = lines[i]
        
        # Skip empty lines
        if not line.strip():
            i += 1
            continue
            
        # 1. Custom Code Fences (Activity, SAQ, Media, ProgramListing)
        if line.strip().startswith('```'):
            fence = line.strip()
            # Find matching closing fence
            closing_idx = -1
            for j in range(i+1, len(lines)):
                if lines[j].strip() == '```' or lines[j].strip() == '````':
                    closing_idx = j
                    break
            if closing_idx != -1:
                block_content = "\n".join(lines[i+1:closing_idx])
                header_match = re.match(r'^[`{]*([a-zA-Z0-9_-]+)(?:\s+(.+))?$', fence.lstrip('`{').rstrip('}'))
                block_type = header_match.group(1) if header_match else "code"
                block_arg = header_match.group(2) if header_match and header_match.group(2) else ""
                
                xml_blocks.append(parse_custom_fence(block_type, block_arg, block_content))
                i = closing_idx + 1
                continue

        # 2. Blockquotes / Boxes / Notes
        if line.strip().startswith('>'):
            # Collect entire blockquote
            quote_lines = []
            while i < len(lines) and lines[i].strip().startswith('>'):
                quote_lines.append(lines[i].strip().lstrip('>').strip())
                i += 1
            
            quote_content = "\n".join(quote_lines)
            # Check for Alert types: [!NOTE], [!KEYPOINT], [!WARNING], [!TIP], [!CAUTION]
            alert_match = re.match(r'^\[!(NOTE|KEYPOINT|WARNING|TIP|CAUTION|KEY\s+POINT)\]\s*(.*)$', quote_content, re.IGNORECASE)
            if alert_match:
                alert_type = alert_match.group(1).upper()
                if alert_type == "KEYPOINT" or alert_type == "KEY POINT":
                    box_type = "Key Point"
                elif alert_type == "WARNING":
                    box_type = "Warning"
                else:
                    box_type = "Note"
                
                remaining_content = alert_match.group(2) + "\n" + "\n".join(quote_lines[1:])
                # Try to extract Heading
                heading_match = re.match(r'^###\s+(.+)$', remaining_content.strip(), re.MULTILINE)
                heading = box_type
                body = remaining_content
                if heading_match:
                    heading = heading_match.group(1).strip()
                    body = remaining_content.replace(heading_match.group(0), "").strip()
                
                box_xml = []
                box_xml.append(f'                <Box type="{box_type}">')
                box_xml.append(f'                    <Heading>{escape_xml(heading)}</Heading>')
                # Parse body paragraphs
                for p in body.split('\n\n'):
                    if p.strip():
                        box_xml.append(f'                    <Paragraph>{parse_inline(escape_xml(p.strip()))}</Paragraph>')
                box_xml.append('                </Box>')
                xml_blocks.append("\n".join(box_xml))
            else:
                # Ordinary Quote
                xml_blocks.append('                <Quote>')
                for p in quote_content.split('\n\n'):
                    if p.strip():
                        xml_blocks.append(f'                    <Paragraph>{parse_inline(escape_xml(p.strip()))}</Paragraph>')
                xml_blocks.append('                </Quote>')
            continue

        # 3. Lists (Bulleted or Numbered)
        if line.strip().startswith('* ') or line.strip().startswith('- ') or re.match(r'^\d+\.\s+', line.strip()):
            is_numbered = re.match(r'^\d+\.\s+', line.strip()) is not None
            list_tag = "NumberedList" if is_numbered else "BulletedList"
            xml_blocks.append(f"                <{list_tag}>")
            
            while i < len(lines) and (lines[i].strip().startswith('* ') or lines[i].strip().startswith('- ') or re.match(r'^\d+\.\s+', lines[i].strip())):
                item_text = re.sub(r'^\*\s+|^\-\s+|^\d+\.\s+', '', lines[i].strip())
                xml_blocks.append(f"                    <ListItem>{parse_inline(escape_xml(item_text))}</ListItem>")
                i += 1
            xml_blocks.append(f"                </{list_tag}>")
            continue

        # 4. Images
        img_match = re.match(r'^!\[([^\]]*)\]\(([^)]+)\)$', line.strip())
        if img_match:
            caption = img_match.group(1).strip()
            src = img_match.group(2).strip()
            # Title extraction for description
            desc = ""
            src_parts = src.split(' "', 1)
            if len(src_parts) == 2:
                src = src_parts[0]
                desc = src_parts[1].rstrip('"')
                
            xml_blocks.append(f'                <MediaContent src="{src}" type="image">')
            if caption:
                xml_blocks.append(f'                    <Caption>{escape_xml(caption)}</Caption>')
            if desc:
                xml_blocks.append(f'                    <Description>{escape_xml(desc)}</Description>')
            xml_blocks.append('                </MediaContent>')
            i += 1
            continue

        # 5. Standard Paragraph
        xml_blocks.append(f"                <Paragraph>{parse_inline(escape_xml(line.strip()))}</Paragraph>")
        i += 1

    return xml_blocks

def parse_custom_fence(block_type, block_arg, content):
    block_type = block_type.lower()
    if block_type == "activity":
        heading = block_arg or "Activity"
        lines = []
        lines.append("                <Activity>")
        lines.append(f"                    <Heading>{escape_xml(heading)}</Heading>")
        lines.append("                    <Question>")
        for p in content.split('\n\n'):
            if p.strip():
                lines.append(f"                        <Paragraph>{parse_inline(escape_xml(p.strip()))}</Paragraph>")
        lines.append("                    </Question>")
        lines.append("                </Activity>")
        return "\n".join(lines)
        
    elif block_type == "saq":
        heading = block_arg or "Self-Assessment Question"
        question_part = content
        answer_part = ""
        if "---answer---" in content:
            parts = content.split("---answer---", 1)
            question_part = parts[0].strip()
            answer_part = parts[1].strip()
            
        lines = []
        lines.append("                <SAQ>")
        lines.append(f"                    <Heading>{escape_xml(heading)}</Heading>")
        lines.append("                    <Question>")
        for p in question_part.split('\n\n'):
            if p.strip():
                lines.append(f"                        <Paragraph>{parse_inline(escape_xml(p.strip()))}</Paragraph>")
        lines.append("                    </Question>")
        if answer_part:
            lines.append("                    <Answer>")
            for p in answer_part.split('\n\n'):
                if p.strip():
                    lines.append(f"                        <Paragraph>{parse_inline(escape_xml(p.strip()))}</Paragraph>")
            lines.append("                    </Answer>")
        lines.append("                </SAQ>")
        return "\n".join(lines)
        
    elif block_type in ["audio", "video"]:
        src = block_arg or "media_file"
        caption = ""
        transcript_part = ""
        
        # Parse arguments/metadata inside fence
        meta_lines = []
        lines_list = content.split('\n')
        parsing_transcript = False
        transcript_lines = []
        
        for line in lines_list:
            if line.strip() == "---transcript---":
                parsing_transcript = True
                continue
            if parsing_transcript:
                transcript_lines.append(line)
            else:
                if line.strip().startswith(':caption:'):
                    caption = line.replace(':caption:', '').strip()
                elif line.strip():
                    meta_lines.append(line)
                    
        lines = []
        lines.append(f'                <MediaContent src="{src}" type="{block_type}">')
        if caption:
            lines.append(f'                    <Caption>{escape_xml(caption)}</Caption>')
        if transcript_lines:
            lines.append('                    <Transcript>')
            for p in "\n".join(transcript_lines).split('\n\n'):
                if p.strip():
                    lines.append(f'                        <Paragraph>{parse_inline(escape_xml(p.strip()))}</Paragraph>')
            lines.append('                    </Transcript>')
        lines.append('                </MediaContent>')
        return "\n".join(lines)
        
    else:
        # Default ProgramListing code block
        lang = block_type
        # Escape HTML inside program listings carefully, but without adding inline tags
        escaped_content = escape_xml(content)
        lines = []
        lines.append(f'                <ProgramListing language="{lang}">')
        # Standard OU-XML requires ProgramListing contents to be wrapped in Paragraphs or just as raw?
        # Actually in unit 2/3 it's raw text. Let's output it inside Paragraph tags as the validator uses it.
        for p in escaped_content.split('\n'):
            lines.append(f'                    <Paragraph>{p}</Paragraph>')
        lines.append('                </ProgramListing>')
        return "\n".join(lines)

def generate_ouxml(frontmatter, unit_title, sessions):
    course_code = frontmatter.get('course_code', 'nixB')
    course_title = frontmatter.get('course_title', 'nixB – A Didactic Laboratory for Software Reproducibility')
    unit_id = frontmatter.get('id', 'nixB-Unit')
    
    xml_out = []
    xml_out.append('<?xml version="1.0" encoding="UTF-8"?>')
    xml_out.append('<Item xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" TextType="CompleteItem" SchemaVersion="2.0" xsi:noNamespaceSchemaLocation="http://www.open.ac.uk/openlearn/ou-xml/schema.xsd">')
    xml_out.append(f'    <CourseCode>{escape_xml(course_code)}</CourseCode>')
    xml_out.append(f'    <CourseTitle>{escape_xml(course_title)}</CourseTitle>')
    xml_out.append(f'    <ItemID>{escape_xml(unit_id)}</ItemID>')
    xml_out.append(f'    <ItemTitle>{escape_xml(unit_title)}</ItemTitle>')
    
    xml_out.append('    <Unit>')
    xml_out.append(f'        <UnitID>{escape_xml(unit_id)}</UnitID>')
    xml_out.append(f'        <UnitTitle>{escape_xml(unit_title)}</UnitTitle>')
    
    for session in sessions:
        xml_out.append(convert_session_to_xml(session))
        
    xml_out.append('    </Unit>')
    xml_out.append('</Item>')
    
    return "\n".join(xml_out)

def main():
    if len(sys.argv) < 3:
        print("Usage: codelab2ouxml <input_md_file> <output_xml_file>")
        sys.exit(1)
        
    input_path = Path(sys.argv[1])
    output_path = Path(sys.argv[2])
    
    if not input_path.exists():
        print(f"Error: Input file {input_path} does not exist.")
        sys.exit(1)
        
    with open(input_path, 'r', encoding='utf-8') as f:
        md_content = f.read()
        
    frontmatter, unit_title, sessions = parse_codelab_markdown(md_content)
    ouxml_content = generate_ouxml(frontmatter, unit_title, sessions)
    
    # Try to validate and pretty print XML
    try:
        reparsed = minidom.parseString(ouxml_content)
        # Note: topreserve encoding and structure, write out the string directly.
        # minidom toprettyxml adds extra whitespace inside text nodes which breaks schema.
        # We write it directly.
    except Exception as e:
        print(f"Warning XML Parse Error: {e}. Outputting raw generated XML.", file=sys.stderr)
        
    with open(output_path, 'w', encoding='utf-8') as f:
        f.write(ouxml_content)
        
    print(f"Successfully converted {input_path} to {output_path}")

if __name__ == '__main__':
    main()
