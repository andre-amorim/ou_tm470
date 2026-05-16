---
summary: OU Create Course OER Development and OU-XML Tooling
status: In Progress
sprint: 3
points: 5
priority: High
role: Researcher
---

## Description
Research and implementation plan for the "OU Create Course" which will be delivered by the end of the module (TM03 and EMA). This includes building Open Educational Resources (OER) using OU-XML and OpenLearn VLE standards.

## Research Resources
- **Course Content:** `/home/aa/ou_tm470/resources/research/creating_open_educational_resources_printable.md`
- **OpenLearn VLE Guide:** [Creating Open Educational Resources](https://www.open.edu/openlearn/education-development/creating-open-educational-resources)

## OU-XML Tooling
- **open-ouxml-tools:** [GitHub Repository](https://github.com/innovationOUtside/open-ouxml-tools)
- **Working with OU-XML:** [OpenLearn Curriculum Assets Guide](https://innovationoutside.github.io/openlearnCurriculumAssets/working-with-ouxml.html)

## Academic Context
This task aligns with the final outcomes for the dissertation, focusing on the delivery of an educational prototype that demonstrates the technical wins (Nix, uv, LNbits) translated into a pedagogical format.

## Log
- [2026-05-16] **Unit 2 Practice Implementation**: Created a concrete laboratory exercise in `ou_tm470/oer/lab/unit2_practice/`. Includes a functional `flake.nix` template and a step-by-step `README.md`. Updated main Unit 2 Markdown and OU-XML content with Activity blocks and Self-Assessment Questions (SAQs). The course now has its first functional hands-on object.

- [2026-05-16] **Unit 3: The Deployment Object Implementation**: Drafted Unit 3 content focusing on immutability and the transition from Blueprint to Artifact. Established `ou_tm470/oer/lab/unit3_deployment/` with a `nix build` lab exercise. Created OU-XML version (`unit3_content_v1.0.xml`) with SAQs on Configuration Drift and the dangers of "patching" deployments.
