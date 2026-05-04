# 🏰 nixB Project Monorepo (TM470)

This repository is the central monorepo for the **nixB** project, integrating the dissertation, technical laboratory, and Agile logs into a single, unified workspace for professional project orchestration.

## 🏗️ Monorepo Structure

The workspace is organized into specialized modules:

1.  **🎓 [Dissertation & OER](./dissertation/):** Academic drafts and didactic design.
    - `resources/`: TMA iterative submissions (TMA01, TMA02, etc.).
    - `resources/oer/`: The **OU-XML Course Map** for the OpenLearn platform.
    - `diagrams/`: Technical architecture and sociotechnical (TOP) models.
2.  **🧪 [The Laboratory](./lab/):** The core technical artefact.
    - `flake.nix`: The declarative Infrastructure as Code (IaC) foundation.
    - `lnbits-core/`: Bitcoin/Lightning stack integrated as a submodule.
    - `automated_tests/`: Infrastructure validation scripts (LO5).
3.  **🔄 [Project Log](./project_log/):** Agile Scrum management using `scrummd`.
    - `scrum/`: Machine-readable backlog and sprint logs.
    - `scrum_pixel/`: Sub-module for visualizing activity metrics.
4.  **🤖 [Gemini CLI Shared](./gemini/):** Shared agent assets, prompts, and custom skills.

## 🛠️ Development Environment

The project leverages **Nix** and **uv** for environment consistency.

- **Nix:** Used for system-level dependencies and hermetic shells.
- **uv:** Manages Python virtual environments and dependencies.

### Quick Start
```bash
# Enter the lab environment
cd lab && nix develop

# Enter the project log environment
cd project_log && nix develop && uv sync
```

## 🛡️ Core Project Mandates

### 1. Primary Subject: Software Reproducibility
The project's core technical innovation is solving the "reproducibility gap" using Nix (IaC). 

### 2. Primary Outcomes: Didactic Laboratory & OER
Final deliverables include the functional laboratory and a structured OpenLearn tutorial (OU-XML).

### 3. Primary Context: Bitcoin/LNbits
Bitcoin is the high-stakes lens used to demonstrate universal reproducibility principles.

## 🏛️ Memory Architecture (MemPalace)
- **Database:** Local vector store and knowledge graph at `~/.mempalace/`.
- **Workflow:** Use `mcp_mempalace_*` tools to sync session data.
- **Academic Sync:** Bridge technical implementation with dissertation narratives using the `memory-recall` skill.
