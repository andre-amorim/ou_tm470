#!/usr/bin/env bash

# nixB OER Live Preview Script
# Usage: ./preview.sh <path_to_xml>

if [ -z "$1" ]; then
    echo "Usage: ./preview.sh ou-xml/unit1_content_v1.0.xml"
    exit 1
fi

XML_FILE=$1
BASENAME=$(basename "$XML_FILE" .xml)
MD_FILE="content/${BASENAME}_preview.md"
HTML_FILE="content/${BASENAME}_preview.html"

render() {
    echo "[$(date +%H:%M:%S)] ⚙️ Rendering $XML_FILE..."
    
    # 1. XML to Markdown (generates multiple .md files)
    # Use a unique stub for this file
    STUB="content/${BASENAME}_gen"
    ou_xml_validator transform "$XML_FILE" --output_path_stub "$STUB"
    
    # 2. Combine generated fragments into a single preview MD
    # We filter out the YAML frontmatter from fragments to avoid clutter
    COMBINED_MD="content/${BASENAME}_preview.md"
    printf "" > "$COMBINED_MD"
    for f in content/${BASENAME}_gen*.md; do
        echo "---" >> "$COMBINED_MD"
        # Skip the first 12 lines of each file (YAML header)
        tail -n +13 "$f" >> "$COMBINED_MD"
    done
    
    # 3. Markdown to HTML
    pandoc "$COMBINED_MD" -o "$HTML_FILE" --standalone --metadata title="nixB Preview: $BASENAME" \
        --css="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css"
    
    echo "✅ Preview updated: $HTML_FILE"
}

# Initial render
render

echo "💡 To watch for changes, run: ls $XML_FILE | entr ./preview.sh $XML_FILE"
