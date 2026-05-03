# OU TM470: Project Log & Open Educational Resources (OER)

This repository is the central workspace for the **OU TM470 Computing and IT Project**. It functions as both a project management hub and a research/development sandbox for Open Educational Resources (OER) using the **OU-XML schema**.

## Project Ecosystem

The workspace is organized into specialized modules:

1.  **Project Log (`/project_log`):** The core of the project, documenting the Incremental SDLC using Agile Scrum.
    - **Methodology:** Agile Scrum managed by the `scrummd` tool.
    - **Tech Stack:** Python 3.12, `uv` (package manager), Nix (reproducible environments).
2.  **Scrum Pixel (`/project_log/scrum_pixel`):** A sub-module for visualizing the project's Scrum board and activity history.
    - **Observer:** Python-based `watchdog` to monitor Scrum card changes.
    - **Web UI:** A Vue 3 + Vite frontend for rendering activity metrics.
3.  **Diagrams (`/diagrams`):** Management of technical documentation and architectural diagrams using Mermaid.
    - **Tooling:** `diagrams-mmd` (Nix-powered CLI for SVG/PNG conversion).
4.  **Gemini CLI Exploration (`/gemini`):** A dedicated space for mastering the Gemini CLI and its agent capabilities.
5.  **Resources (`/resources`):** Research materials, module guides, and OER reference documents (OU-XML/OpenLearn).

## Development Environment

The project leverages **Nix** and **uv** for environment consistency.

- **Nix:** Used for system-level dependencies and CLI tools.
- **uv:** Manages the Python virtual environment and dependencies in `project_log`.

### Setup
```bash
# Enter the project log environment
cd project_log
nix develop
uv sync
```

## Key Commands

### Scrum Management (`/project_log`)
All commands must be run via `uv run` within the `project_log` directory:
- **View Backlog:** `uv run sbl`
- **View Board:** `uv run sboard -g status`
- **Validate Log:** `uv run svalid` (Essential before committing changes)
- **Edit/Create Card:** `uv run scard <path>` or manual creation in `scrum/backlog/`.

### Diagram Conversion (`/diagrams`)
- **SVG (Default):** `nix run github:andre-amorim/diagrams-mmd -- -i input.mmd -o output.svg`
- **PNG:** `nix run github:andre-amorim/diagrams-mmd -- -i input.mmd -o output.png`

### Web UI Development (`/project_log/scrum_pixel/web_ui`)
- **Start Dev Server:** `npm install && npm run dev`

## Core Mandates for Gemini CLI

### 🛡️ Core Project Pillars
All work, research, and documentation must strictly align with these three pillars:
1.  **Primary Subject: Software Reproducibility.** The project's core technical innovation is solving the "reproducibility gap" using Nix and functional environment management. It is an Infrastructure as Code (IaC) project.
2.  **Primary Outcomes: Didactic Laboratory & OER.** The final deliverables are a functional, hermetic laboratory (Nix/uv) and a structured tutorial in the OU-XML (OpenLearn) format.
3.  **Primary Context: Bitcoin/LNbits.** Bitcoin is the contextual lens and high-stakes environment used to demonstrate universal reproducibility principles. The project is *about* reproducibility, *using* Bitcoin as the case study.

- **Traceability:** Always link project-related code changes or research findings to the corresponding Scrum card in `project_log/scrum`.
- **Validation:** When modifying the project log (markdown cards in `scrum/`), always run `uv run svalid` to ensure metadata integrity.
- **Nix Integration:** Prefer using the provided Nix flakes for tool execution and environment setup.
- **Research focus:** Maintain focus on the OER and OU-XML research objectives defined in the backlog.
- **Dendritic Structure:** Respect the modular, dendritic structure of the Nix flake in `project_log`.

## 🏛️ Memory Architecture (MemPalace)
- **Tooling:** Managed via `Nix` and `uv` in `~/gemini-mempalace-bridge/`.
- **Database:** Local vector store and knowledge graph at `~/.mempalace/`.
- **Workflow:**
  - **Wake-up:** Run `uv --directory ~/gemini-mempalace-bridge run python -m mempalace --palace ~/.mempalace/palace status` at session start.
  - **Decision Log:** Use `mcp_mempalace_add_project_decision` to record academic or technical milestones.
  - **Diary:** End sessions with `~/gemini-mempalace-bridge/scripts/2mempalace mine sessions/` to capture reflective practice (LO5).
- **Academic Sync:** Use the `memory-recall` skill patterns to bridge technical work with dissertation narratives.
