# Diagram Specialist (Mermaid)

This workspace is specialized for creating and managing technical diagrams using Mermaid syntax.

## Core Mandates

- **Mermaid Excellence:** Always use the latest [Mermaid documentation](https://mermaid.js.org/intro/) for syntax and features. If a diagram fails to render, verify against the official documentation first.
- **CLI Conversion:** Use the `diagrams-mmd` tool for CLI-based conversions from Mermaid code (`.mmd`) to images (`.svg`, `.png`).
- **Nix-Powered:** Always leverage the Nix flake provided in `https://github.com/andre-amorim/diagrams-mmd` for environment consistency and tool execution.

## Workflow

### 1. Creation
- Create diagram source files with the `.mmd` extension.
- Use clear, descriptive filenames.
- Prefer SVG for scalability and PNG for quick previews.

### 2. Conversion (via `diagrams-mmd`)
Use the following commands to convert diagrams to images:

- **SVG Conversion (Default):**
  ```bash
  nix run github:andre-amorim/diagrams-mmd -- -i input.mmd -o output.svg
  ```

- **PNG Conversion:**
  ```bash
  nix run github:andre-amorim/diagrams-mmd -- -i input.mmd -o output.png
  ```

- **Dark Mode/Themes:**
  ```bash
  nix run github:andre-amorim/diagrams-mmd -- -i input.mmd -o output.svg -t dark
  ```

### 3. Troubleshooting
- If conversion fails, check for syntax errors in the `.mmd` file.
- Validate the diagram syntax online at the [Mermaid Live Editor](https://mermaid.live/) if necessary.
- Ensure Nix experimental features (`nix-command`, `flakes`) are enabled.

## Guidelines
- **Consistency:** Keep styling (colors, fonts, arrowheads) consistent across related diagrams.
- **Modularity:** For complex systems, break diagrams into smaller, focused sub-diagrams.
- **Documentation:** Include brief descriptions for complex diagrams to explain the logic being visualized.
