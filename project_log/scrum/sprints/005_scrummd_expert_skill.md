---
summary: Document ScrumMD Expert Skill creation
status: Done
sprint: 1
points: 1
priority: Medium
role: Developer
---

## Description
This card logs the creation and configuration of the `scrummd-expert` Gemini CLI skill used to manage our project's Scrum workflow.

- Create a new Gemini CLI skill for `scrummd` expert assistance: Done
- Use `skill-creator` to generate the initial structure: Done
- Update `SKILL.md` with specific ScrumMD workflows and best practices: Done
- Ensure `.skill` and `SKILL.md` are in the git repository: Done

## Technical Log: How we built the skill
We used the **Gemini CLI skill-creator** to bootstrap the skill. The process involved:
1.  **Activation:** We activated the `skill-creator` skill to get guidance on creating new capabilities.
2.  **Generation:** The tool generated a `.skill` file (the entry point) and a `SKILL.md` file (the knowledge base).
3.  **Customization:** We populated `SKILL.md` with our project-specific ScrumMD rules, such as using `uv run` and the correct property-style metadata for cards.
4.  **Integration:** The skill is now part of the workspace, allowing Gemini to switch into "Scrum Master" mode whenever needed.

## Simple Explanation (Grandma & 10-year-old friendly)
"Imagine you have a robot helper. Usually, it knows a lot of things, but it might not know the specific rules of your favorite game. To help it, we gave it a special **'Instruction Book'** (the Skill). 

We used a **'Book Maker'** tool (the skill-creator) to start the book, and then we wrote down the rules for our project inside it. Now, the robot helper is an expert at our game and won't forget the rules! This helps us keep our project organized without having to explain the rules every single time."
