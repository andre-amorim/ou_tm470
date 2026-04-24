# ScrumMD & Gemini CLI Workflow Guide

This guide explains how to use the `scrummd-expert` skill within the Gemini CLI to manage your project log effectively.

## 1. Skill Persistence
The `scrummd-expert` skill is installed at the **user level** (`~/.gemini/skills/`). This means:
- It is **automatically available** every time you start a new Gemini CLI session.
- You do **not** need to manually enable it.
- The agent "knows" to use it whenever it detects you are working in a directory with a `scrum.toml` file.

---

## 2. A Typical Workday Workflow

### Step A: Visualize and Decide
When you start your day, ask the agent to show you what's pending:
> **User:** "Show me my backlog sorted by priority."

**Agent Action:** The skill triggers `uv run sbl`. It reads your `scrum/backlog/` cards and presents a prioritized list.

### Step B: Start Working (Move to "In Progress")
Once you pick a task (e.g., `002_define_requirements`), tell the agent to activate it:
> **User:** "I want to start working on the requirements. Put it in progress for Sprint 1."

**Agent Action (via Skill):**
1. **Relocate:** Moves the card from `scrum/backlog/` to `scrum/sprints/`.
2. **Update Metadata:** Edits the "Property Block" to change `status: Backlog` to `status: In Progress` and adds `sprint: 1`.
3. **Validate:** Runs `uv run svalid` to ensure the file structure remains perfect.

### Step C: Finish the Task
When the work is complete:
> **User:** "I've finished the requirements. Mark the card as Done."

**Agent Action:** The agent updates the card's property block in `scrum/sprints/` to `status: Done`.

### Step D: Visualize the Board
To see your progress across the entire project:
> **User:** "Show me the Scrum board."

**Agent Action:** The skill runs `uv run sboard -g status`, displaying your Kanban columns (`To Do`, `In Progress`, `Done`) directly in the terminal.

---

## 3. Why Use a Skill?
The `scrummd-expert` skill ensures:
- **Consistency:** The agent always uses the "Property Style" (`---` block) for metadata, preventing parsing errors.
- **Automation:** Complex multi-step actions (moving files + updating metadata + validating) are handled in a single request.
- **Expertise:** The agent understands the specific requirements of `uv`, `Nix`, and `scrummd` without needing a long system prompt every time.

---
*Reference: Created on Wednesday, March 4, 2026.*
