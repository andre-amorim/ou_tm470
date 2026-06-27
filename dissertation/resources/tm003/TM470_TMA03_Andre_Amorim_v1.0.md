# TMA03: Project Progress and Interim Evaluation (v1.0)

**Project Title:** nixB – A Didactic Laboratory for Software Reproducibility  
**Student Name:** Andre Amorim  
**Personal Identifier:** A5624864  
**Module:** TM470 Computing and IT Project (Feb 2026)  
**Tutor:** Dr. Bill Tait  
**Word Count (Total):** ~3,500 words  

---

## Abstract
Modern software engineering suffers from a pervasive "Reproducibility Gap" where software runs correctly on a developer's machine but fails in production or on other developers' systems due to subtle system-level and environment divergences (Configuration Drift). This project addresses this vulnerability by developing **nixB**, a hands-on, interactive Didactic Laboratory packaged as an Open Educational Resource (OER). Using the Nix declarative package manager as Infrastructure as Code (IaC), nixB provides a deterministic, hermetic training workspace containing complex developer toolchains (Bitcoin Core, C-Lightning, LNbits, and Python environments). Through this laboratory, students learn how purely functional package management eliminates environment drift and guarantees reproducible environments. This interim report details the development of the nixB artifact, maps the project achievements to the course Learning Outcomes (LO1-LO9), and establishes a clear path to final evaluation.

---

## 1. Simplified Introduction & Project Context

### 1.1 The IT Challenge: System Parity and Environmental Volatility
The fundamental problem in software deployment is the variance between running environments. When a software stack depends on specific system-level libraries, local database engines, and runtime interpreters, minor differences in the host operating system trigger non-deterministic failures. Traditionally, developers attempted to resolve this using virtual machines or containerization (such as Docker). However, containers still rely on imperative steps and stateful file system layers that can drift over time.

The **nixB project** addresses this by applying a purely functional deployment model using the Nix package manager. Rather than building an environment state step-by-step, Nix defines the environment as a pure mathematical function of its inputs. The entire development environment—including system-level libraries, network configurations, and application dependencies—is declared in a single version-controlled configuration file (`flake.nix`) and cryptographically locked via a lockfile (`flake.lock`). 

### 1.2 The Deliverable: The nixB Didactic Laboratory
To make this advanced technical concept accessible to students and FOSS developers, the concrete deliverable of this project is **nixB**, an Open Educational Resource (OER) hosted on the OpenLearn Create platform. 

The nixB OER delivers:
1. **Interactive Curriculum:** Four didactic units mapping the principles of software reproducibility, declarative environments, system isolation, and automated validation.
2. **Reproducible Hands-on Labs:** Students run a single command (`nix develop`) to instantly bootstrap a local sandbox environment containing an active micro-network (Bitcoin Regtest, C-Lightning, and LNbits) with 100% parity to the author's environment.
3. **Validation Loop:** An integrated automated testing framework (using Pytest) that verifies environment health and compiles rendering previews of course materials.

---

## 2. Learning Outcomes (LO1-LO9) Mapping Matrix

To ensure rigorous alignment with the TM470 assessment criteria, the table below highlights how the project's milestones, technical achievements, and documentation map directly to the module Learning Outcomes.

| Learning Outcome (LO) | Project Implementation & Evidence | Documentation Section |
| :--- | :--- | :--- |
| **LO1: Plan and Manage Project** | Execution of customized Agile Scrum lifecycle using `scrummd-go` (`sbl`, `sboard`, `svalid`). | Section 3 |
| **LO2: Analyze Requirements & Design** | Formulation of functional specs, MoSCoW prioritization, and architectural diagrams. | Section 4 & Appendix 6 |
| **LO3: Identify Resources** | Selection of Nix, uv, and OpenLearn standards; academic mapping to Tait (1997). | Section 1 & Appendix 7 |
| **LO4: Implementation & Quality** | Coding `flake.nix` environment, XML validator pipelines, and 100% OER compilation. | Section 6 & Appendix 5 |
| **LO5: Evaluation & Reflection** | Analysis of the Cloud-to-Local migration event and reflective evaluation logs. | Section 6 & Section 7 |
| **LO6: Communication** | Structuring accessible OER content, audio overviews, and academic reporting. | Section 1 & Section 6 |
| **LO7: Legal, Social, Ethical, Professional (LSEPI)** | Application of CC-BY 4.0, BCS Code of Conduct compliance, and accessibility audits. | Section 5 |
| **LO8: Technical Knowledge & Skills** | Mastering declarative package management, Nix flakes, and system-level isolation. | Section 2 & Section 6 |
| **LO9: Professional Software Practice** | Standardizing on Go-port tooling, Pytest verification, and Nix developer shells. | Section 6 & Appendix 9 |

---

## 3. Project Management and Lifecycle (LO1)

The project continues to execute under a customized **Agile Scrum** lifecycle, strictly utilizing the zero-overhead Go-port binaries (`sbl`, `sboard`, `svalid` compiled via Nix) for maintaining the sprint logs in `scrum/`.

The project is structured into three main phases:
* **Phase 1: Research & Scoping (TMA01):** Completed stakeholder analysis and literature review.
* **Phase 2: Core Engineering (TMA02):** Achieved hermetic system-level isolation and validated a cloud-to-local migration.
* **Phase 3: Integration & Didactic Delivery (TMA03/EMA):** Completed the creation of four interactive units, integrated audio elements, and established the automated rendering validation loop.

*For detailed sprint status and logs, see the project task board visualized in [017_tma03_drafting.md](file:///Users/aamorim/ou_tm470/project_log/scrum/backlog/017_tma03_drafting.md).*

---

## 4. Requirements Analysis and Stakeholder Input (LO2, LO3)

Requirements for the nixB OER were derived from a developer survey (n=5) validating the prevalence of environment-related failures. The didactic structure is grounded in the pedagogical models of **Bill Tait (1997)** on "Object Orientation in Educational Software." Under this framework, a Nix flake acts as a modular "educational object," encapsulating both the process (reproducible build instructions) and the content (the laboratory workspace).

---

## 5. LSEPI Issues (LO7)

* **Legal:** The nixB curriculum is licensed under **Creative Commons Attribution 4.0 International (CC-BY 4.0)**, and the source code is released under the **MIT License**.
* **Ethical:** To prevent any financial risks, all hands-on exercises involving cryptocurrency components are strictly run in **Bitcoin Regtest** mode (a local developer-only regression test network using virtual "play" coins).
* **Accessibility:** OER outputs are formatted using the structured **OU-XML schema** to ensure screen-reader compatibility and keyboard navigability, aligning with WCAG 2.1 AA standards.

---

## 6. Technical Implementation and Evaluation (LO4, LO5, LO8, LO9)

### 6.1 Interactive Courseware Development
The nixB OER is divided into four structural units, located under `/Users/aamorim/ou_tm470/oer/ou-xml/`:
1. **Unit 1: The Reproducibility Gap:** Introduces environmental volatility and traditional mitigation strategies.
2. **Unit 2: Declarative Environments:** Covers declarative package management using Nix.
3. **Unit 3: Immutability and Build Parity:** Explains system-level isolation and Directed Acyclic Graphs (DAG).
4. **Unit 4: Verification and The Circular Economy:** Introduces automated environment assertions using Pytest and micropayments using LNbits.

### 6.2 OER Validation Loop
To maintain high-fidelity output quality, the workspace incorporates a Nix-integrated rendering pipeline (`preview.sh` running `ou_xml_validator` and `pandoc`). Compiling Unit 4 XML generates the final preview artifacts successfully:
* Combined Markdown Preview: [unit4_content_v1.0_preview.md](file:///Users/aamorim/ou_tm470/oer/content/unit4_content_v1.0_preview.md)
* Combined HTML Preview: [unit4_content_v1.0_preview.html](file:///Users/aamorim/ou_tm470/oer/content/unit4_content_v1.0_preview.html)

---

## 7. Next Sprints toward Final Submission (EMA)

The immediate next steps focus on polishing the dissertation content and completing the final evaluation phase with independent testers to measure the readability and ease of onboarding of the nixB didactic laboratory.
