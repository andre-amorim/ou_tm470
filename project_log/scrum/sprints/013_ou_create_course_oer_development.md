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

- [2026-05-21] **Unit 4: Verification and The Reflective Practitioner Integration**: 
    - Aligned Unit 4 XML and content with the official nixB Course Map.
    - Added **Session 4.3 (Sovereignty and Sustainability)**: Bridging technical reproducibility with economic sustainability (Bitcoin/LNbits) and the circular economy of satoshis.
    - Added **Session 4.4 (The Verification Loop)**: Introduced automated infrastructure testing using Pytest within the Nix environment to empirically prove reproducibility (LO5).
    - **Multimedia Integration**: Generated a professional Audio Overview using the `tts-ou` toolchain. Integrated the audio file and a processed transcript into the OU-XML `MediaContent` block.
    - **Tooling Fix**: Resolved a fatal `pkg_resources` error in the `ou-xml-validator` by pinning `setuptools<70` in the OER virtual environment.

- [2026-07-02] **Codelab-First Pipeline & Go Parser Integration**: Switched the OER authoring workflow to a Codelabs-compatible Markdown format. Wrote a custom parser in Go (`codelab2ouxml.go`) to convert Codelabs Markdown into schema-validated OU-XML format, resolving previous metadata and image parsing errors. Added the Go compiler to `flake.nix` and integrated the script as a native `codelab2ouxml` binary in the shell PATH. Successfully validated the compiled XML against the official schema.
- [2026-07-02] **OER Local Server Deployment**: Implemented a local Go web server (`server.go`) that serves a glassmorphic dashboard of the nixB units. The server enables hot-rebuilding of the OER units by running the Go converter (`codelab2ouxml`) and XSLT renderer (`preview.sh`) directly on HTTP POST. Compiled the binary and ran it at http://localhost:8080.
- [2026-07-08] **OER Step 1 & 2 Refinements**: Replaced the host-based pip setup in Step 2 of `nixb-codelab.md` with a hermetic `nix shell nixpkgs#uv --command uv run --no-binary` execution to resolve PEP 668 and Nix store read-only permission limits. Added the Nix Package Manager (linking to https://nixos.org/download/) to the Step 1 prerequisites. Recompiled the OER course via `claat` and deployed the updated pages to `oer.nixb.org`.

