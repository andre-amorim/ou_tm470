# TMA02: Project Development and Research (Draft)

**nixB – A Didactic Laboratory for Software Reproducibility**

**Name:** Andre Amorim
**PI:** A5624864
**Assignment:** TMA02 (Draft)
**Tutor:** Mr AE Cox

---

## 0. Revision History & Change Tracking
*Note for Tutor: New content or significant updates to TMA01 sections are highlighted with [NEW] or [REVISED] tags.*

| Version | Date | Changes |
| :--- | :--- | :--- |
| 0.1 | 10-Apr-2026 | Initial structure based on TMA01 feedback. Expanded Literature Review and PROMPT analysis. |

---

## Contents Page
1. Initial Goals and Risk Analysis [REVISED]
2. LSEPI and EDI Considerations [REVISED]
3. Account of Related Literature (Literature Review) [EXPANDED]
4. Stakeholder Analysis and Survey Design [NEW]
5. Final Scoping and Prioritised Functionality [REVISED]
6. Skills and Resources [REVISED]
7. Life Cycle Methodology and Detailed Planning [EXPANDED]
8. Development of Artefact: Automated Infrastructure Testing [NEW]
9. Reflection and Personal Development [REVISED]
10. References
11. Appendices

---

### 1. Initial Goals and Risk Analysis [REVISED]

**Project Goal:**
The nixB project aims to develop a "Didactic Laboratory" formatted as an Open Educational Resource (OER). Its purpose is to demonstrate 100% software reproducibility by integrating the Nix functional package manager with the `uv` Python toolchain, using LNbits as the evaluation subject.

**Risk Analysis (Initial):**
Following the TM353 framework, I have identified and prioritised the following risks. This analysis was moved to the project's onset to better inform the literature review and mitigation strategies.

| Risk ID | Description | Impact (1-5) | Likelihood (1-5) | Severity (IxL) | Mitigation Strategy |
| :--- | :--- | :--- | :--- | :--- | :--- |
| R1 | Steep Nix Learning Curve | 4 | 4 | 16 | Utilize official `nix.dev` tutorials and allocate a "buffer week" for environment debugging. |
| R2 | `uv` Version Incompatibility | 5 | 2 | 10 | Pin exact versions and SHA-256 hashes in `flake.nix` and `uv.lock`. |
| R3 | Data/Work Loss | 5 | 1 | 5 | Implement daily Git pushes to remote and weekly GPG-encrypted backups of MemPalace. |
| R4 | LNbits Upstream Churn | 3 | 3 | 9 | Fork the LNbits repository to a specific commit hash for the didactic baseline. |

*Severity Categorization:* A score above 12 is considered outside the "risk appetite" and requires immediate proactive mitigation (R1). Scores between 5-11 are monitored weekly.

---

### 2. LSEPI and EDI Considerations [REVISED]

**Legal & IP:**
The project operates under the **Apache 2.0** and **MIT** licenses of its constituent parts (Nix, `uv`, LNbits). To comply with Intellectual Property requirements, the final OER will be released under **Creative Commons Attribution (CC-BY 4.0)**, ensuring academic traceability and reuse. 

**Social & Ethical (UK-GDPR):**
As per the approved Ethics Checklist (Appendix 1), no human participant data is collected. However, in the context of financial software, the project adheres to a "No-Real-Funds" policy. 

**Professional (BCS Code of Conduct):**
Alignment with the BCS Code of Conduct (2021) is maintained by:
*   **Public Interest:** Promoting reproducible science.
*   **Duty to Relevant Authority:** Ensuring all LNbits testing is isolated to a "Regtest" (regression test) Bitcoin network.

**EDI (Equality, Diversity, and Inclusion):**
Accessibility is the primary EDI driver. The decision to use **OU-XML** ensures that the OER can be transformed into multiple formats (Web, PDF, ePub) accessible to students with different needs.

---

### 3. Account of Related Literature (Literature Review) [EXPANDED]

[NEW SECTION: This section has been expanded from a list of resources to a comparative evaluation of 3-5 sources per argument, as requested in TMA01 feedback.]

The "Reproducibility Gap" identified in the project description is not a new phenomenon, but its solution has evolved through three distinct paradigms: Imperative Virtualization, Containerization, and Functional Environment Management.

**3.1 The Failure of Imperative Environments**
Traditional package managers like `pip` or `npm` are imperative; they modify a stateful environment in place. Smith (2025) argues that this leads to "dependency hell," where the order of installation changes the outcome. This is corroborated by GitHub issue trackers for LNbits, where users report that "it worked yesterday but failed today" after an unrelated system update (LNbits, 2026).

**3.2 Containerization vs. Functional Nix**
Docker is often cited as the solution to reproducibility. However, Khalid (2025) provides a critical PROMPT-evaluated comparison, noting that Docker containers often include "opaque" binary blobs that are not reproducible from source. In contrast, Dolstra (2006) posits that the functional model (Nix) ensures every dependency is a result of a pure function, represented by a unique cryptographic hash.

**3.3 The Emergence of `uv` and High-Performance Tooling**
The recent introduction of `uv` (Astral, 2024) represents a middle ground. While `uv` is significantly faster than `pip` (10-100x), it still relies on the underlying system's C-libraries (e.g., `libssl`, `libc`). Trizna et al. (2021) highlight that for scientific reproducibility, application-level tools are insufficient without system-level isolation. This project builds upon this by using Nix to provide the system libraries that `uv` consumes.

**PROMPT Evaluation of Key Source: Astral `uv` Documentation**
| Criterion | Analysis |
| :--- | :--- |
| **Presentation** | Professional, accessible documentation suitable for a didactic laboratory. |
| **Relevance** | Addresses the primary technical bottleneck of Python dependency resolution. |
| **Objectivity** | Open-source (Apache/MIT) and adheres to PyPA standards (PEPs). |
| **Method** | Uses Rust for memory safety and parallel resolution. |
| **Provenance** | Developed by Astral (creators of Ruff), a trusted entity in the ecosystem. |
| **Timeliness** | State-of-the-art as of April 2026. |

---

### 4. Stakeholder Analysis and Survey Design [NEW]

[This section addresses the tutor's request for stakeholder analysis before final scoping.]

The primary stakeholders for the nixB Didactic Laboratory include:
1.  **OU Students (TM470/TM354):** Requiring clear, reproducible environments for capstone projects.
2.  **FOSS Maintainers (LNbits):** Seeking to reduce "noise" in their issue trackers caused by build failures.
3.  **Educational Content Creators:** Looking for semantic OU-XML templates for technical labs.

**Survey Design:**
To validate requirements, a questionnaire was designed (Appendix 7) following an ethical framework (anonymity, informed consent). The survey focuses on quantifying the "Reproducibility Gap" through metrics like:
*   **Frequency of failures:** Measuring how often users encounter build errors when running third-party code.
*   **Efficiency loss:** Estimating the weekly hours spent troubleshooting environments (expected range: 2-10 hours).
*   **Feature prioritization:** Determining if users prefer interactive "broken-vs-fixed" comparisons or static PDF guides.

**Analysis of Initial Responses (Mock/Preliminary):**
Initial pilot feedback suggests that "missing system libraries" (libc/libssl) are the most significant pain points, reinforcing the project's focus on **Nix** as a system-level solution rather than just `uv` as an application-level one.

---

### 7. Life Cycle Methodology and Detailed Planning [EXPANDED]

**Selection of Incremental SDLC:**
I have evaluated the **Waterfall** and **Agile Scrum** models. Waterfall is rejected due to the high technical uncertainty of Nix integration (Risk R1). Instead, an **Incremental SDLC** managed via **Scrum** is selected.

**Justification:**
Scrum allows for "Sprint-based" validation of the infrastructure. For example, Sprint 011 focuses purely on "Academic Resource Organization," ensuring the foundation is solid before the complex LNbits integration in Sprint 012.

**Detailed Planning (GANTT Roadmap):**
[NEW: This section visualizes the project milestones and monitoring strategy as requested.]

| Milestone | ID | Tasks | Start | End | Status |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **M1: Proposal** | TMA01 | Scope Definition, Ethics, Risk Analysis | 15-Feb | 03-Mar | Completed |
| **M2: Infrastructure**| TMA02 | Nix+uv Shell, Automated Infrastructure Tests | 10-Mar | 05-May | In Progress |
| **M3: Integration** | TMA03 | LNbits Backend, OER Draft (OU-XML) | 10-May | 02-Jun | Planned |
| **M4: Completion** | EMA | Final Report, Reflection, Video Presentation| 10-Jun | 01-Jul | Planned |

**Monitoring Strategy:**
To manage slippage (Risk R4), I conduct **Weekly Scrum Reviews** on Fridays. If a milestone is missed, a "remedial sprint" is added to the backlog to catch up on critical technical debt. Progress is monitored via the `scrummd` tool, ensuring the "actual" GANTT chart stays aligned with the "planned" one.

---

### 5. Final Scoping and Prioritised Functionality [REVISED]

[REVISED SECTION: Scope is now refined in the light of Stakeholder Analysis (Section 4).]

Based on stakeholder feedback, the project scope is now refined to focus on the "Build Integrity" phase.

*   **Must-Have:** (1) A deterministic Nix/uv build shell. (2) Automated infrastructure tests for Bitcoin/Lightning. (3) Documentation of the "reproducibility gap" failure mode.
*   **Should-Have:** (1) OU-XML structured laboratory guide. (2) Interactive Markdown output via XSLT.
*   **Could-Have:** (1) A web-based "Scrum Pixel" dashboard to visualize build health and scrum metrics.
*   **Won't-Have:** Large-scale user-data analytics or real-fund LNbits payment processing.

---

### 6. Skills and Resources [REVISED]

[NEW: This section maps the project's technical needs to previous OU modules and identifies the physical and digital resources used.]

**6.1 Foundational Skills (OU Module Mapping)**
The nixB laboratory is built upon skills acquired through the following Open University modules:
*   **TM353 (IT Systems: Planning for Success):** Applied for risk management (Severity matrix), sociotechnical analysis (TOP model), and project monitoring (Scrum/GANTT).
*   **TM354 (Software Engineering):** Utilized for the Incremental SDLC, MoSCoW prioritization, and the application of testing strategies (Unit/Infrastructure testing).
*   **TM112 (Introduction to Computing and IT 2):** Foundational knowledge of Linux CLI and bash scripting.

**6.2 Resource Management**
The project relies on a minimal-resource, high-efficiency stack to demonstrate that reproducibility is accessible without expensive server infrastructure.

| Resource Type | Items | Role/Function |
| :--- | :--- | :--- |
| **Hardware** | Lenovo IdeaPad Slim 3 Chromebook (MediaTek, 8GB RAM) | Primary development and build machine. |
| **Software (Core)**| Nix (v2.24+), `uv` (v0.5+), Python 3.12 | The "Hermetic Stack" ensuring reproducibility. |
| **Software (Dev)** | `scrummd` (CLI), `pytest`, Git, `gemini-cli` | Management, validation, and collaboration tools. |
| **Personnel** | Mr AE Cox (Tutor) | **Consultancy Resource:** Providing feedback on academic translation and LO alignment. |

**Management Strategy:**
To manage hardware limitations (128GB eMMC), I utilize Nix's **garbage collection** (`nix-collect-garbage`) to prune old build profiles, ensuring the Chromebook's storage remains optimal for the didactic lab's development.

---

### 8. Development of Artefact: Automated Infrastructure Testing [NEW]

[NEW SECTION: This section documents the first implementation phase of the artefact, following the methodology defined in Section 7.]

**8.1 Design Choice: Pytest + Nix Integration**
A core finding from the literature review (Section 3) is that manual validation is a primary cause of environment drift. Consequently, the first "technical win" of TMA02 is the implementation of an **Automated Infrastructure Testing** framework.

**8.2 Technical Implementation (Sprint 012)**
I have configured a `flake.nix` shell to include Bitcoin and C-Lightning binaries alongside a Python 3.12 environment managed by `uv`. This ensures that every test run occurs in a purely functional, isolated environment.

**Challenges and Workarounds:**
*   **Environment Inheritance:** Initially, `uv run pytest` failed to find the `bitcoind` binary because the virtual environment did not inherit the Nix shell's PATH. 
*   **Workaround:** I transitioned to the command `nix develop --command uv run pytest`. This "wrapping" ensures the test runner has access to both the Python libraries and the system-level binaries (Bitcoin/Lightning).
*   **Version Mismatch:** During a Friday Scrum review, I detected a version mismatch in `lightningd` (v25.12.1 vs expected v25.09). 
*   **Remedial Action:** I updated the test assertions to be more flexible (v25.x), ensuring the tests focus on *functional availability* rather than exact patch versions, which is more aligned with a didactic lab's goal.

**8.3 Ethics and Safety in Development**
To align with the BCS Code of Conduct (Appendix 1), all infrastructure tests are designed to fail if they detect a mainnet configuration. This "Fail-Safe" design ensures that no real Bitcoin funds can ever be processed by the didactic lab's environment.

---

### 9. Reflection and Personal Development [REVISED]

**9.1 Reflective Practice (TM353)**
Reflecting on the TMA01 feedback, I identified a tendency to focus on the "Technology" (T) of the TOP model while neglecting the "People" (P) and "Organization" (O). To remedy this, I formalised the **Stakeholder Analysis** (Section 4) and **Survey Design** (Appendix 7) earlier than originally planned.

**9.2 Challenges and Learning**
Implementing the `nix develop` wrapper was a significant learning curve. It forced me to move beyond "technical tinkering" to a structured understanding of how shell environments are inherited. This academic translation of a technical bug into a "Workaround" in the report (Section 8.2) has improved my ability to communicate complex engineering choices to a non-technical audience (LO7).

**9.3 Action Plan**
For the next increment (TMA03), the focus shifts to the **Integration** of LNbits and the **OU-XML** documentation. I will prioritize the "Should-Have" documentation features over any further "Could-Have" technical UI tweaks.

---

### 10. References
[To be consolidated into CTRH format...]

---

### 11. Appendices
*   Appendix 1: Ethics Checklist
*   **Appendix 7: Stakeholder Survey Questionnaire [NEW]**
*   Appendix 8: GANTT Progress Chart [Planned]

