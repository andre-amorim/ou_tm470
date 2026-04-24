# TMA02: Project Development and Research (v2.1)

**Project Title:** nixB – A Didactic Laboratory for Software Reproducibility  
**Student Name:** Andre Amorim  
**Personal Identifier:** A5624864  
**Module:** TM470 Computing and IT Project (Feb 2026)  
**Tutor:** Mr AE Cox  
**Word Count (Draft):** ~2,400 words  

---

## 0. Revision History & Change Tracking

| Version | Date | Changes |
| :--- | :--- | :--- |
| 1.0 | 10-Apr-2026 | Initial structure based on TMA01 feedback. |
| 2.0 | 14-Apr-2026 | Integrated Meadows' Mental Model theory and IaC/DevOps literature. |
| 2.1 | 15-Apr-2026 | **[MERGED]** Consolidated v2.0 with the detailed Stakeholder Analysis, MoSCoW, and LSEPI sections from the master draft. |

---

## Contents Page
1. Initial Goals and Risk Analysis [REVISED]
2. LSEPI and EDI Considerations [REVISED]
3. Account of Related Literature (Literature Review) [EXPANDED]
4. Stakeholder Analysis and Survey Design [NEW]
5. Final Scoping and Prioritised Functionality (MoSCoW) [REVISED]
6. Skills and Resources [REVISED]
7. Life Cycle Methodology and Detailed Planning [EXPANDED]
8. Development of Artefact: Infrastructure as Code (IaC) [NEW]
9. Reflection and Personal Development [REVISED]
10. References
11. Appendices

---

### 1. Initial Goals and Risk Analysis [REVISED]

**Project Goal:**
The nixB project aims to develop a "Didactic Laboratory" formatted as an Open Educational Resource (OER). Its purpose is to demonstrate 100% software reproducibility by integrating the Nix functional package manager with the `uv` Python toolchain.

**Risk Analysis & Mitigation:**
In response to TMA01 feedback regarding "Project Manager" mindset, I have refined the risk register to focus on **mitigation through automation**.

| Risk ID | Description | Severity (IxL) | Mitigation Strategy |
| :--- | :--- | :--- | :--- |
| **R1** | Steep Nix Learning Curve | 16 (High) | Use of Meadows' "Mental Model" framework to simplify Nix concepts. |
| **R2** | Configuration Drift | 10 (Med) | Implementing Nix as **Infrastructure as Code (IaC)** to ensure environment parity. |
| **R5** | Cloud Service Discontinuity| 12 (High) | Migration from Project IDX to Local Nix Flake (Completed 13-Apr). |

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

### 3. Account of Related Literature [EXPANDED]

**3.1 The Philosophy of Models (The "Mental Model" Gap)**
Central to the nixB project is the understanding that software is a representational model of reality. Donella Meadows (2009) posits that *"Everything we think we know about the world is a model... All maps and statistics, books and databases, equations and computer programs are models."* 

In the context of the "Didactic Laboratory," the Nix Flake is not merely a configuration file; it is a **high-fidelity declarative model** of the system state. Traditional imperative environments fail because the "mental model" of the developer (e.g., "I have Python installed") diverges from the "real-world" state of the machine. By using Nix, we minimize the gap between the model and reality, addressing the core TM353 failure mode of **Configuration Drift**.

**3.2 The Failure of Imperative Environments**
Traditional package managers like `pip` or `npm` are imperative; they modify a stateful environment in place. Smith (2025) argues that this leads to "dependency hell," where the order of installation changes the outcome. This is corroborated by GitHub issue trackers for LNbits, where users report that "it worked yesterday but failed today" after an unrelated system update (LNbits, 2026).

**3.3 Nix as Infrastructure as Code (IaC)**
The Wikipedia definition of IaC (2026) highlights its role in "reducing the complexity that kills efficiency out of manual configuration." While tools like Terraform focus on cloud orchestration, this project applies IaC principles to the **local developer environment**. As noted in DevOps best practices, IaC brings visibility to the state and configuration of servers. In the nixB laboratory, the `flake.nix` serves as this visible, version-controlled infrastructure.

**3.4 Source Evaluation (PROMPT)**
*Source 1: Dolstra, E. (2006) 'The Purely Functional Software Deployment Model'.*
- **Objectivity:** Highly objective; provides a formal mathematical model for software deployment.
- **Method:** Uses cryptographic hashing to ensure that every software build is a "pure function" of its inputs.
- **Relevance:** This is the "Gold Standard" for the nixB project, providing the theoretical proof that 100% reproducibility is possible.

*Source 2: Astral 'uv' Documentation (2026).*
- **Provenance:** Developed by Astral (creators of Ruff), a trusted entity in the ecosystem.
- **Relevance:** Addresses the primary technical bottleneck of Python dependency resolution.
- **Timeliness:** State-of-the-art as of April 2026.

---

### 4. Stakeholder Analysis and Survey Design [NEW]

The primary stakeholders for the nixB Didactic Laboratory include:
1.  **OU Students (TM470/TM354):** Requiring clear, reproducible environments for capstone projects.
2.  **FOSS Maintainers (LNbits):** Seeking to reduce "noise" in their issue trackers caused by build failures.
3.  **Educational Content Creators:** Looking for semantic OU-XML templates for technical labs.

**Survey Design:**
To validate requirements, a questionnaire was designed (Appendix 7) focusing on quantifying the "Reproducibility Gap" through metrics like frequency of failures and efficiency loss. Initial pilot feedback suggests that "missing system libraries" (libc/libssl) are the most significant pain points, reinforcing the project's focus on **Nix** as a system-level solution.

---

### 5. Final Scoping and Prioritised Functionality (MoSCoW) [REVISED]

Based on stakeholder feedback, the project scope is now refined to focus on the "Build Integrity" phase.

*   **Must-Have:** (1) A deterministic Nix/uv build shell. (2) Automated infrastructure tests for Bitcoin/Lightning. (3) Documentation of the "reproducibility gap" failure mode.
*   **Should-Have:** (1) OU-XML structured laboratory guide. (2) Interactive Markdown output via XSLT.
*   **Could-Have:** (1) A web-based "Scrum Pixel" dashboard to visualize build health and scrum metrics.
*   **Won't-Have:** Large-scale user-data analytics or real-fund LNbits payment processing.

---

### 6. Skills and Resources [REVISED]

**6.1 Foundational Skills (OU Module Mapping)**
The nixB laboratory is built upon skills acquired through:
*   **TM353 (IT Systems: Planning for Success):** Risk management and project monitoring (Scrum/GANTT).
*   **TM354 (Software Engineering):** Incremental SDLC and MoSCoW prioritization.
*   **TM112:** Foundational Linux CLI and bash scripting.

**6.2 Resource Management**
| Resource Type | Items | Role/Function |
| :--- | :--- | :--- |
| **Hardware** | Lenovo IdeaPad Slim 3 Chromebook (8GB RAM) | Primary development and build machine. |
| **Software** | Nix (v2.24+), `uv` (v0.5+), Python 3.12 | The "Hermetic Stack" ensuring reproducibility. |
| **Personnel** | Mr AE Cox (Tutor) | **Consultancy Resource:** Academic translation and LO alignment. |

---

### 7. Life Cycle Methodology and Detailed Planning [EXPANDED]

**Incremental SDLC & Scrum:**
As requested in TMA01 feedback, I am strictly applying the **Agile Scrum** methodology managed via the `scrummd` tool.

**Monitoring Strategy:**
- **Weekly Svalid:** Every Friday, I run `uv run svalid` to ensure data integrity.
- **Velocity Tracking:** Using Fibonacci points to estimate task complexity.

**Detailed Planning (GANTT Roadmap):**
| Milestone | ID | Tasks | Start | End | Status |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **M1: Proposal** | TMA01 | Scope Definition, Ethics, Risk Analysis | 15-Feb | 03-Mar | Completed |
| **M2: Infrastructure**| TMA02 | Nix+uv Shell, Automated Infrastructure Tests | 10-Mar | 05-May | In Progress |
| **M3: Integration** | TMA03 | LNbits Backend, OER Draft (OU-XML) | 10-May | 02-Jun | Planned |

---

### 8. Development of Artefact: Infrastructure as Code (IaC) [NEW]

**8.1 The Cloud-to-Local Migration (Proof of Concept)**
A significant technical milestone occurred on 13-April-2026. Due to the discontinuation of the Google Project IDX cloud service, the entire infrastructure was migrated to a local Lenovo Chromebook. Because the infrastructure was defined as **Nix code**, the migration required zero logic changes.

**8.2 Automated Infrastructure Testing**
I have implemented an automated testing layer using `pytest`. These tests verify the **infrastructure state** (e.g., checking if `bitcoind` and `lightningd` are available in the PATH). 

**Challenges and Workarounds:**
*   **Environment Inheritance:** Initially, `uv run pytest` failed to find system binaries. 
*   **Workaround:** Transitioned to `nix develop --command uv run pytest` to ensure environment inheritance.
*   **Ethics:** All tests are designed to fail if they detect a mainnet configuration, ensuring "No-Real-Funds" safety (BCS Code of Conduct).

---

### 9. Reflection and Personal Development [REVISED]

**9.1 Reflective Practitioner (LO9)**
My journey from TMA01 to TMA02 has been a transition from "Technical Tinkering" to "Strategic Orchestration." I have learned that software engineering is as much about **managing mental models** as it is about writing code. 

**9.2 Challenges and Learning**
The integration of the **Gemini-MemPalace Bridge** has improved my reflective practice. By using "Layer 2" memory recall, I am able to link past TM353 concepts (like the TOP model) to current technical challenges in real-time. This has significantly increased the **academic fidelity** of my project documentation.

**9.3 Action Plan**
For TMA03, the focus shifts to the **Integration** of LNbits and the **OU-XML** documentation. I will prioritize the "Should-Have" documentation features over any further "Could-Have" technical UI tweaks.

---

### 11. Appendices
- Appendix 1: Ethics Checklist (Revised)
- Appendix 7: Stakeholder Survey Design
- **Appendix 8: Cloud-to-Local Migration Log (Empirical Proof)**
