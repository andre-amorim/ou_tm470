---
summary: Transition to Codelab-First Authoring Strategy
status: Backlog
points: 3
priority: Medium
role: Developer
---

## Description
Adopt a Codelab-First content creation strategy for the nixB OER course units. Rather than getting bogged down in OU-XML syntax, the author will write and edit content directly in the Google Codelabs markdown format (conforming to FORMAT-GUIDE.md and the Google Doc template). The automated Go compiler (`codelab2ouxml`) and local server (`oer-server`) will handle translation to validated OU-XML and preview HTML.

## Notes
- Formatting Guide: https://github.com/googlecodelabs/tools/blob/main/FORMAT-GUIDE.md
- Google Docs template: https://docs.google.com/document/d/1E6XMcdTexh5O8JwGy42SY3Ehzi8gOfUGiqTiUX6N04o/edit

## Tasks
- [ ] Read and document Google Codelabs format constraints.
- [ ] Create nixB unit template files based on the Google Doc guide.
- [ ] Configure the Go parser to support additional Codelabs-native blocks if encountered.
- [ ] Complete drafting nixB Course Unit 2 and Unit 3 in pure Codelabs format.
