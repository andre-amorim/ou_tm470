package main

import (
	"bufio"
	"fmt"
	"os"
	"regexp"
	"strings"
)

type Session struct {
	Title   string
	Content string
}

func escapeXML(text string) string {
	r := strings.NewReplacer(
		"&", "&amp;",
		"<", "&lt;",
		">", "&gt;",
		"\"", "&quot;",
		"'", "&apos;",
	)
	return r.Replace(text)
}

func parseInline(text string) string {
	// Parse inline formatting: links, glossary, bold, italic, code
	
	// 1. Links: [text](href) -> <a href="href">text</a>
	reLink := regexp.MustCompile(`\[([^\]]+)\]\(([^)]+)\)`)
	text = reLink.ReplaceAllString(text, `<a href="$2">$1</a>`)
	
	// 2. Glossary Term: [Term]{glossary} -> <GlossaryTerm>Term</GlossaryTerm>
	reGlossary := regexp.MustCompile(`\[([^\]]+)\]\{glossary\}`)
	text = reGlossary.ReplaceAllString(text, `<GlossaryTerm>$1</GlossaryTerm>`)
	
	// 3. Bold: **text** or \b__text__\b -> <b>text</b>
	reBold := regexp.MustCompile(`\*\*([^*]+)\*\*`)
	text = reBold.ReplaceAllString(text, `<b>$1</b>`)
	reBoldUnderscore := regexp.MustCompile(`\b__([^_]+)__\b`)
	text = reBoldUnderscore.ReplaceAllString(text, `<b>$1</b>`)
	
	// 4. Italic: *text* or \b_text_\b -> <i>text</i>
	reItalic := regexp.MustCompile(`\*([^*]+)\*`)
	text = reItalic.ReplaceAllString(text, `<i>$1</i>`)
	reItalicUnderscore := regexp.MustCompile(`\b_([^_]+)_\b`)
	text = reItalicUnderscore.ReplaceAllString(text, `<i>$1</i>`)
	
	// 5. Inline Code: `code` -> <ComputerCode>code</ComputerCode>
	reCode := regexp.MustCompile("`([^`]+)`")
	text = reCode.ReplaceAllString(text, `<ComputerCode>$1</ComputerCode>`)
	
	return text
}

func parseFrontmatterAndContent(content string) (map[string]string, string, string) {
	frontmatter := make(map[string]string)
	body := content

	if strings.HasPrefix(content, "---") {
		parts := strings.SplitN(content, "---", 3)
		if len(parts) >= 3 {
			// Parse YAML-like simple key-value pairs
			scanner := bufio.NewScanner(strings.NewReader(parts[1]))
			for scanner.Scan() {
				line := strings.TrimSpace(scanner.Text())
				if line == "" || strings.HasPrefix(line, "#") {
					continue
				}
				if idx := strings.Index(line, ":"); idx != -1 {
					key := strings.TrimSpace(line[:idx])
					val := strings.TrimSpace(line[idx+1:])
					// Strip quotes if present
					val = strings.Trim(val, "\"'")
					frontmatter[key] = val
				}
			}
			body = parts[2]
		}
	}

	// Extract H1 Unit Title
	unitTitle := "Untitled Unit"
	reH1 := regexp.MustCompile(`(?m)^#\s+(.+)$`)
	if match := reH1.FindStringSubmatch(body); len(match) > 1 {
		unitTitle = strings.TrimSpace(match[1])
		body = reH1.ReplaceAllString(body, "")
	}

	return frontmatter, unitTitle, body
}

func parseSessions(body string) []Session {
	// Split by H2 headers
	reH2 := regexp.MustCompile(`(?m)^##\s+(.+)$`)
	indices := reH2.FindAllStringSubmatchIndex(body, -1)
	matches := reH2.FindAllStringSubmatch(body, -1)
	
	var sessions []Session
	
	if len(indices) == 0 {
		sessions = append(sessions, Session{
			Title:   "Introduction",
			Content: strings.TrimSpace(body),
		})
		return sessions
	}
	
	// Handle intro before first H2
	introContent := strings.TrimSpace(body[:indices[0][0]])
	if introContent != "" {
		sessions = append(sessions, Session{
			Title:   "Introduction",
			Content: introContent,
		})
	}
	
	for i := 0; i < len(indices); i++ {
		title := strings.TrimSpace(matches[i][1])
		start := indices[i][1]
		end := len(body)
		if i+1 < len(indices) {
			end = indices[i+1][0]
		}
		
		stepContent := strings.TrimSpace(body[start:end])
		// Remove Codelabs Duration metadata
		reDuration := regexp.MustCompile(`(?mi)^Duration:\s*\d+(:\d+)?\s*$`)
		stepContent = reDuration.ReplaceAllString(stepContent, "")
		
		sessions = append(sessions, Session{
			Title:   title,
			Content: strings.TrimSpace(stepContent),
		})
	}
	
	return sessions
}

func convertSessionToXML(session Session) string {
	var sb strings.Builder
	sb.WriteString("        <Session>\n")
	sb.WriteString(fmt.Sprintf("            <Title>%s</Title>\n", escapeXML(session.Title)))
	
	// Split by H3 headers (sections)
	reH3 := regexp.MustCompile(`(?m)^###\s+(.+)$`)
	indices := reH3.FindAllStringSubmatchIndex(session.Content, -1)
	matches := reH3.FindAllStringSubmatch(session.Content, -1)
	
	type SubSection struct {
		Title   string
		Content string
	}
	
	var subSections []SubSection
	if len(indices) == 0 {
		subSections = append(subSections, SubSection{
			Title:   "",
			Content: session.Content,
		})
	} else {
		preContent := strings.TrimSpace(session.Content[:indices[0][0]])
		if preContent != "" {
			subSections = append(subSections, SubSection{
				Title:   "",
				Content: preContent,
			})
		}
		for i := 0; i < len(indices); i++ {
			title := strings.TrimSpace(matches[i][1])
			start := indices[i][1]
			end := len(session.Content)
			if i+1 < len(indices) {
				end = indices[i+1][0]
			}
			subSections = append(subSections, SubSection{
				Title:   title,
				Content: strings.TrimSpace(session.Content[start:end]),
			})
		}
	}
	
	for _, sec := range subSections {
		sb.WriteString("            <Section>\n")
		if sec.Title != "" {
			sb.WriteString(fmt.Sprintf("                <Title>%s</Title>\n", escapeXML(sec.Title)))
		}
		
		blocks := parseBlocks(sec.Content)
		for _, block := range blocks {
			sb.WriteString(block + "\n")
		}
		
		sb.WriteString("            </Section>\n")
	}
	
	sb.WriteString("        </Session>")
	return sb.String()
}

func parseBlocks(content string) []string {
	var blocks []string
	lines := strings.Split(content, "\n")
	i := 0
	
	for i < len(lines) {
		line := strings.TrimSpace(lines[i])
		if line == "" {
			i++
			continue
		}
		
		// 1. Code fence blocks
		if strings.HasPrefix(line, "```") {
			fence := line
			closingIdx := -1
			for j := i + 1; j < len(lines); j++ {
				if strings.TrimSpace(lines[j]) == "```" || strings.TrimSpace(lines[j]) == "````" {
					closingIdx = j
					break
				}
			}
			if closingIdx != -1 {
				blockContent := strings.Join(lines[i+1:closingIdx], "\n")
				reCurly := regexp.MustCompile("^`+\\s*\\{([a-zA-Z0-9_-]+)\\}(?:\\s+(.+))?$")
				reSimple := regexp.MustCompile("^`+\\s*([a-zA-Z0-9_-]+)(?:\\s+(.+))?$")
				blockType := "code"
				blockArg := ""
				
				if m := reCurly.FindStringSubmatch(fence); len(m) > 1 {
					blockType = strings.ToLower(m[1])
					if len(m) > 2 {
						blockArg = strings.TrimSpace(m[2])
					}
				} else if m := reSimple.FindStringSubmatch(fence); len(m) > 1 {
					blockType = strings.ToLower(m[1])
					if len(m) > 2 {
						blockArg = strings.TrimSpace(m[2])
					}
				}
				
				blocks = append(blocks, parseCustomFence(blockType, blockArg, blockContent))
				i = closingIdx + 1
				continue
			}
		}
		
		// 2. Blockquotes / Alerts
		if strings.HasPrefix(line, ">") {
			var quoteLines []string
			for i < len(lines) && strings.HasPrefix(strings.TrimSpace(lines[i]), ">") {
				quoteLines = append(quoteLines, strings.TrimSpace(strings.TrimPrefix(strings.TrimSpace(lines[i]), ">")))
				i++
			}
			quoteContent := strings.Join(quoteLines, "\n")
			reAlert := regexp.MustCompile(`(?i)^\[!(NOTE|KEYPOINT|WARNING|TIP|CAUTION|KEY\s+POINT)\]\s*(?s)(.*)$`)
			if match := reAlert.FindStringSubmatch(quoteContent); len(match) > 2 {
				alertType := strings.ToUpper(match[1])
				boxType := "style3" // Default style3 for Note
				headingDefault := "Note"
				if alertType == "KEYPOINT" || alertType == "KEY POINT" {
					boxType = "style1" // style1 for Key Point
					headingDefault = "Key Point"
				} else if alertType == "WARNING" {
					boxType = "style2" // style2 for Warning
					headingDefault = "Warning"
				} else if alertType == "TIP" || alertType == "CAUTION" {
					boxType = "style4" // style4 for Tip/Caution
					headingDefault = "Tip"
				}
				
				remaining := strings.TrimSpace(match[2])
				reH3 := regexp.MustCompile(`(?m)^###\s+(.+)$`)
				heading := headingDefault
				body := remaining
				if hMatch := reH3.FindStringSubmatch(remaining); len(hMatch) > 1 {
					heading = strings.TrimSpace(hMatch[1])
					body = strings.TrimSpace(reH3.ReplaceAllString(remaining, ""))
				}
				
				var boxXML strings.Builder
				boxXML.WriteString(fmt.Sprintf("                <Box type=\"%s\">\n", boxType))
				boxXML.WriteString(fmt.Sprintf("                    <Heading>%s</Heading>\n", escapeXML(heading)))
				for _, p := range strings.Split(body, "\n\n") {
					if strings.TrimSpace(p) != "" {
						boxXML.WriteString(fmt.Sprintf("                    <Paragraph>%s</Paragraph>\n", parseInline(escapeXML(strings.TrimSpace(p)))))
					}
				}
				boxXML.WriteString("                </Box>")
				blocks = append(blocks, boxXML.String())
			} else {
				var quoteXML strings.Builder
				quoteXML.WriteString("                <Quote>\n")
				for _, p := range strings.Split(quoteContent, "\n\n") {
					if strings.TrimSpace(p) != "" {
						quoteXML.WriteString(fmt.Sprintf("                    <Paragraph>%s</Paragraph>\n", parseInline(escapeXML(strings.TrimSpace(p)))))
					}
				}
				quoteXML.WriteString("                </Quote>")
				blocks = append(blocks, quoteXML.String())
			}
			continue
		}
		
		// 3. Lists (Bulleted or Numbered)
		if strings.HasPrefix(line, "* ") || strings.HasPrefix(line, "- ") || regexp.MustCompile(`^\d+\.\s+`).MatchString(line) {
			isNumbered := regexp.MustCompile(`^\d+\.\s+`).MatchString(line)
			listTag := "BulletedList"
			if isNumbered {
				listTag = "NumberedList"
			}
			
			var listXML strings.Builder
			listXML.WriteString(fmt.Sprintf("                <%s>\n", listTag))
			for i < len(lines) {
				currLine := strings.TrimSpace(lines[i])
				if !strings.HasPrefix(currLine, "* ") && !strings.HasPrefix(currLine, "- ") && !regexp.MustCompile(`^\d+\.\s+`).MatchString(currLine) {
					break
				}
				itemText := regexp.MustCompile(`^(\*\s+|\-\s+|\d+\.\s+)`).ReplaceAllString(currLine, "")
				listXML.WriteString(fmt.Sprintf("                    <ListItem>%s</ListItem>\n", parseInline(escapeXML(itemText))))
				i++
			}
			listXML.WriteString(fmt.Sprintf("                </%s>", listTag))
			blocks = append(blocks, listXML.String())
			continue
		}
		
		// 4. Images
		reImg := regexp.MustCompile(`^!\[([^\]]*)\]\(([^)]+)\)$`)
		if match := reImg.FindStringSubmatch(line); len(match) > 2 {
			caption := strings.TrimSpace(match[1])
			src := strings.TrimSpace(match[2])
			desc := ""
			if idx := strings.Index(src, " \""); idx != -1 {
				desc = strings.Trim(src[idx+2:], "\"")
				src = src[:idx]
			}
			
			var imgXML strings.Builder
			imgXML.WriteString("                <Figure>\n")
			imgXML.WriteString(fmt.Sprintf("                    <Image src=\"%s\"/>\n", src))
			if caption != "" {
				imgXML.WriteString(fmt.Sprintf("                    <Caption>%s</Caption>\n", escapeXML(caption)))
			}
			if desc != "" {
				imgXML.WriteString(fmt.Sprintf("                    <Description>%s</Description>\n", escapeXML(desc)))
			}
			imgXML.WriteString("                </Figure>")
			blocks = append(blocks, imgXML.String())
			i++
			continue
		}
		
		// 5. Paragraph
		blocks = append(blocks, fmt.Sprintf("                <Paragraph>%s</Paragraph>", parseInline(escapeXML(line))))
		i++
	}
	
	return blocks
}

func parseCustomFence(blockType, blockArg, content string) string {
	var sb strings.Builder
	switch blockType {
	case "activity":
		heading := blockArg
		if heading == "" {
			heading = "Activity"
		}
		sb.WriteString("                <Activity>\n")
		sb.WriteString(fmt.Sprintf("                    <Heading>%s</Heading>\n", escapeXML(heading)))
		sb.WriteString("                    <Question>\n")
		for _, p := range strings.Split(content, "\n\n") {
			if strings.TrimSpace(p) != "" {
				sb.WriteString(fmt.Sprintf("                        <Paragraph>%s</Paragraph>\n", parseInline(escapeXML(strings.TrimSpace(p)))))
			}
		}
		sb.WriteString("                    </Question>\n")
		sb.WriteString("                </Activity>")
		
	case "saq":
		heading := blockArg
		if heading == "" {
			heading = "Self-Assessment Question"
		}
		questionPart := content
		answerPart := ""
		if idx := strings.Index(content, "---answer---"); idx != -1 {
			questionPart = strings.TrimSpace(content[:idx])
			answerPart = strings.TrimSpace(content[idx+12:])
		}
		sb.WriteString("                <SAQ>\n")
		sb.WriteString(fmt.Sprintf("                    <Heading>%s</Heading>\n", escapeXML(heading)))
		sb.WriteString("                    <Question>\n")
		for _, p := range strings.Split(questionPart, "\n\n") {
			if strings.TrimSpace(p) != "" {
				sb.WriteString(fmt.Sprintf("                        <Paragraph>%s</Paragraph>\n", parseInline(escapeXML(strings.TrimSpace(p)))))
			}
		}
		sb.WriteString("                    </Question>\n")
		if answerPart != "" {
			sb.WriteString("                    <Answer>\n")
			for _, p := range strings.Split(answerPart, "\n\n") {
				if strings.TrimSpace(p) != "" {
					sb.WriteString(fmt.Sprintf("                        <Paragraph>%s</Paragraph>\n", parseInline(escapeXML(strings.TrimSpace(p)))))
				}
			}
			sb.WriteString("                    </Answer>\n")
		}
		sb.WriteString("                </SAQ>")
		
	case "audio", "video":
		src := blockArg
		if src == "" {
			src = "media_file"
		}
		caption := ""
		parsingTranscript := false
		var transcriptLines []string
		
		for _, line := range strings.Split(content, "\n") {
			trimmed := strings.TrimSpace(line)
			if trimmed == "---transcript---" {
				parsingTranscript = true
				continue
			}
			if parsingTranscript {
				transcriptLines = append(transcriptLines, line)
			} else {
				if strings.HasPrefix(trimmed, ":caption:") {
					caption = strings.TrimSpace(strings.TrimPrefix(trimmed, ":caption:"))
				}
			}
		}
		
		sb.WriteString(fmt.Sprintf("                <MediaContent src=\"%s\" type=\"%s\">\n", src, blockType))
		if caption != "" {
			sb.WriteString(fmt.Sprintf("                    <Caption>%s</Caption>\n", escapeXML(caption)))
		}
		if len(transcriptLines) > 0 {
			sb.WriteString("                    <Transcript>\n")
			for _, p := range strings.Split(strings.Join(transcriptLines, "\n"), "\n\n") {
				if strings.TrimSpace(p) != "" {
					sb.WriteString(fmt.Sprintf("                        <Paragraph>%s</Paragraph>\n", parseInline(escapeXML(strings.TrimSpace(p)))))
				}
			}
			sb.WriteString("                    </Transcript>\n")
		}
		sb.WriteString("                </MediaContent>")
		
	default:
		// Default program listing
		lang := blockType
		escaped := escapeXML(content)
		sb.WriteString(fmt.Sprintf("                <ProgramListing language=\"%s\">\n", lang))
		for _, line := range strings.Split(escaped, "\n") {
			sb.WriteString(fmt.Sprintf("                    <Paragraph>%s</Paragraph>\n", line))
		}
		sb.WriteString("                </ProgramListing>")
	}
	
	return sb.String()
}

func generateOUXML(frontmatter map[string]string, unitTitle string, sessions []Session) string {
	courseCode := frontmatter["course_code"]
	if courseCode == "" {
		courseCode = "nixB"
	}
	courseTitle := frontmatter["course_title"]
	if courseTitle == "" {
		courseTitle = "nixB – A Didactic Laboratory for Software Reproducibility"
	}
	unitID := frontmatter["id"]
	if unitID == "" {
		unitID = "nixB-Unit"
	}
	
	var sb strings.Builder
	sb.WriteString("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n")
	sb.WriteString("<Item xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" TextType=\"CompleteItem\" SchemaVersion=\"2.0\" xsi:noNamespaceSchemaLocation=\"http://www.open.ac.uk/openlearn/ou-xml/schema.xsd\">\n")
	sb.WriteString(fmt.Sprintf("    <CourseCode>%s</CourseCode>\n", escapeXML(courseCode)))
	sb.WriteString(fmt.Sprintf("    <CourseTitle>%s</CourseTitle>\n", escapeXML(courseTitle)))
	sb.WriteString(fmt.Sprintf("    <ItemID>%s</ItemID>\n", escapeXML(unitID)))
	sb.WriteString(fmt.Sprintf("    <ItemTitle>%s</ItemTitle>\n", escapeXML(unitTitle)))
	
	sb.WriteString("    <Unit>\n")
	sb.WriteString(fmt.Sprintf("        <UnitID>%s</UnitID>\n", escapeXML(unitID)))
	sb.WriteString(fmt.Sprintf("        <UnitTitle>%s</UnitTitle>\n", escapeXML(unitTitle)))
	
	for _, session := range sessions {
		sb.WriteString(convertSessionToXML(session) + "\n")
	}
	
	sb.WriteString("    </Unit>\n")
	sb.WriteString("</Item>")
	
	return sb.String()
}

func main() {
	if len(os.Args) < 3 {
		fmt.Println("Usage: codelab2ouxml <input_md_file> <output_xml_file>")
		os.Exit(1)
	}
	
	inputPath := os.Args[1]
	outputPath := os.Args[2]
	
	mdBytes, err := os.ReadFile(inputPath)
	if err != nil {
		fmt.Printf("Error reading input file: %v\n", err)
		os.Exit(1)
	}
	
	frontmatter, unitTitle, body := parseFrontmatterAndContent(string(mdBytes))
	sessions := parseSessions(body)
	ouxml := generateOUXML(frontmatter, unitTitle, sessions)
	
	err = os.WriteFile(outputPath, []byte(ouxml), 0644)
	if err != nil {
		fmt.Printf("Error writing output file: %v\n", err)
		os.Exit(1)
	}
	
	fmt.Printf("Successfully converted %s to %s\n", inputPath, outputPath)
}
