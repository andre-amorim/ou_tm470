# Scrum Methodology Concepts for Project Log

This document outlines the core Agile Scrum concepts and workflows used in this project's software development lifecycle (SDLC).

## 1. Scrum Cards
Every task, feature, or bug fix is represented by a **Scrum Card**. These are individual Markdown files containing metadata (YAML frontmatter) and a description of the work.

- **Location:** `scrum/backlog/` or `scrum/sprints/`.
- **Format:** Standard Markdown with fields like `summary`, `status`, `points`, and `priority`.

## 2. The Backlog (`scrum/backlog/`)
The **Backlog** is a prioritized list of all work that is planned for the project but not yet active. It is the "source of truth" for future requirements.

- **Status:** Usually "Backlog" or "To Do".
- **Tooling:** Use `uv run sbl backlog` to view the current backlog.

## 3. Sprints (`scrum/sprints/`)
A **Sprint** is a time-boxed increment of work (typically 1-2 weeks). In this workspace, active cards are moved from the backlog to the `sprints/` directory.

- **Incremental Delivery:** Every sprint should result in a functional increment of the project.
- **Tooling:** Use `uv run sboard` to visualize the active sprint board.

## 4. Effort Estimation (Points)
We use the **Fibonacci sequence** (1, 2, 3, 5, 8, 13...) for effort estimation. Points represent the relative complexity, risk, and effort required for a task, rather than absolute time.

- **1-3 Points:** Small, well-defined tasks.
- **5-8 Points:** Medium tasks with some uncertainty.
- **13+ Points:** Large tasks ("Epics") that should be broken down into smaller cards.

## 5. Workflow Statuses
Tasks move through a standard lifecycle:
1. **To Do:** Ready to be worked on.
2. **In Progress:** Actively being developed.
3. **Done:** Completed and verified.
4. **Blocked:** Paused due to external dependencies or issues.

## 6. Validation
All project documentation and Scrum cards are validated using `scrummd` to ensure they are machine-readable and consistent with the project's `scrum.toml` configuration.

- **Command:** `uv run svalid`
