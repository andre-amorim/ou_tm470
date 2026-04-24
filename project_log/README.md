# OU TM470 Project Log

This directory serves as the official **Project Log** for the OU TM470 module. It uses an **Incremental Software Development Lifecycle (SDLC)** following the **Agile Scrum** methodology.

## Goals
- **Traceability:** Maintain a machine-readable log of all project decisions, tasks, and increments.
- **Reproducibility:** Use Nix and `uv` to ensure the environment is consistent across any machine.
- **Agile Management:** Leverage `scrummd` for backlog management, sprint tracking, and status visualization.

## Environment Setup

### 1. Prerequisites
- **Nix:** Ensure Nix is installed on your system.
- **uv:** The Python package manager (managed by the Nix flake).

### 2. Enter the Environment
If you have `direnv` installed, it will automatically load. Otherwise, run:
```bash
nix develop
```

### 3. Install Dependencies
Dependencies are managed by `uv`. Sync the virtual environment:
```bash
uv sync
```

## Usage (ScrumMD)

All project artifacts are stored as Markdown cards in the `scrum/` directory.

### Core Commands
- **View Backlog:**
  ```bash
  uv run sbl
  ```
- **View Scrum Board:**
  ```bash
  uv run sboard -g status
  ```
- **Validate Log Consistency:**
  ```bash
  uv run svalid
  ```
- **Create a New Card:**
  Add a `.md` file to `scrum/backlog/` with the following property block at the top:
  ```markdown
  ---
  summary: Feature Name
  status: Backlog
  points: 3
  priority: High
  ---
  ## Description
  Details go here...
  ```

## Directory Structure
- `scrum/backlog/`: Future tasks and user stories.
- `scrum/sprints/`: Active and completed sprint items.
- `scrum.toml`: Configuration for the `scrummd` CLI.
- `flake.nix`: System-level dependencies.
- `GEMINI.md`: Specialized instructions for the Gemini CLI agent.
