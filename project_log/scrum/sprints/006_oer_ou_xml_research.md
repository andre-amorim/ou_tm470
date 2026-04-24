---
summary: Research OU-XML for OER Documentation
status: Done
points: 5
sprint: 1
priority: Medium
role: Researcher
---

## Description
Research documentation formatting as an Open Educational Resource (OER) using the OpenLearn OU-XML schema.

## Research Findings
OU-XML (Structured Content) is a highly semantic XML schema used by The Open University. It acts as a "Gold Master" from which HTML, PDF, ePub, and Kindle formats are generated.

### Core Structure
- `<Item>`: Root container.
- `<Unit>`: Main document wrapper.
- `<Session>`: Primary structural division.
- `<Section>` / `<SubSection>`: Content hierarchy.

### Pedagogical Elements
- `<LearningObjective>`: Targeted outcomes.
- `<Activity>` / `<SAQ>`: Interactive elements including questions and discussions.
- `<MediaContent>`: References for images and multimedia.

### Relevant Tooling
- **ou-xml-validator**: (GitHub: innovationOUtside) Validation and transformation tool.
- **open-ouxml-tools**: Python library for content extraction and parsing.

## Conclusion for Project
Our XSLT strategy (Task 007) must focus on mapping these semantic tags to interactive Markdown elements that can be rendered in our Web UI.
