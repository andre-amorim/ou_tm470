# TMA03: Project Progress and Interim Evaluation (v2.0)

**Project Title:** nixB – A Didactic Laboratory for Software Reproducibility  
**Student Name:** Andre Amorim  
**Personal Identifier:** A5624864  
**Module:** TM470 Computing and IT Project (Feb 2026)  
**Tutor:** Dr. Bill Tait  
**Word Count (Total):** ~4,500 words  

---

## Abstract

Modern software engineering suffers from a pervasive "Reproducibility Gap" — the common situation where software runs correctly on a developer's machine but fails on another machine due to subtle environmental differences (such as different library versions, missing system packages, or operating system variations). This project addresses this problem by developing **nixB**, a hands-on, interactive teaching laboratory packaged as an Open Educational Resource (OER). Using the Nix declarative package manager — a tool that defines an entire development environment as a single, version-controlled configuration file rather than a sequence of manual installation steps — nixB provides a deterministic (fully predictable) training workspace containing real-world developer toolchains including Bitcoin Core, C-Lightning, and Python environments. Through this laboratory, students experience first-hand how declarative package management eliminates environment inconsistencies and guarantees that every learner receives an identical workspace. This interim report details the development of the nixB artifact, maps the project achievements to the course Learning Outcomes (LO1–LO9), and establishes a clear path to final evaluation.

---

## 1. Simplified Introduction & Project Context

### 1.1 The IT Challenge: Environment Inconsistency

The fundamental problem in software deployment is the variance between running environments. When a software stack depends on specific system-level libraries, local database engines, and runtime interpreters, minor differences in the host operating system trigger unpredictable failures. Traditionally, developers attempted to resolve this using virtual machines or containerisation (such as Docker). However, containers still rely on step-by-step imperative commands and stateful file system layers that can become inconsistent over time — a phenomenon known in industry as "Configuration Drift" (where nominally identical machines gradually become different through ad-hoc changes).

The **nixB project** addresses this by applying a purely functional deployment model — meaning the environment is defined entirely by its declared inputs, with no hidden side effects — using the Nix package manager. Rather than building an environment state step-by-step, Nix defines the entire development environment as a mathematical function of its inputs. The complete environment — including system-level libraries, network configurations, and application dependencies — is declared in a single version-controlled configuration file (`flake.nix`) and cryptographically locked via a lockfile (`flake.lock`).

### 1.2 The Deliverable: The nixB Didactic Laboratory

The concrete deliverable of this project is **nixB**, an Open Educational Resource (OER) designed for the OpenLearn Create platform. It consists of a Git repository that, when cloned by a learner, provides both the teaching materials and the laboratory environment in a single package.

The nixB OER delivers:
1. **Interactive Curriculum:** Four didactic units mapping the principles of software reproducibility, declarative environments, system isolation, and automated validation.
2. **Reproducible Hands-on Labs:** Students run a single command (`nix develop`) to instantly bootstrap a local sandbox environment containing an active micro-network (Bitcoin Regtest, C-Lightning, and LNbits) with 100% parity to the author's environment.
3. **Validation Loop:** An integrated automated testing framework (using Pytest) that verifies environment health and compiles rendering previews of course materials.

The examiner can verify the deliverable by cloning the repository, running `nix develop`, and observing the automated environment bootstrap and test outputs described in Section 6.

---

## 2. Learning Outcomes (LO1–LO9) Mapping Matrix

To ensure rigorous alignment with the TM470 assessment criteria, the table below highlights how the project's milestones, technical achievements, and documentation map directly to the module Learning Outcomes.

| Learning Outcome (LO) | Project Implementation & Evidence | Documentation Section |
| :--- | :--- | :--- |
| **LO1: Plan and Manage Project** | Execution of customised Agile Scrum lifecycle using `scrummd-go` tools (`sbl`, `sboard`, `svalid`). Sprint logs with dated entries showing planning decisions and scope adjustments. | Section 3 |
| **LO2: Analyse Requirements & Design** | Formulation of functional specs, MoSCoW prioritisation, and architectural diagrams. Developer survey (n=5) validating prevalence of environment failures. | Section 4 & Appendix 6 |
| **LO3: Identify Resources** | Full resource audit: hardware, software, people, platforms, and time allocation presented in the main text. | **Section 4 (Table 1)** |
| **LO4: Implementation & Quality** | Coding `flake.nix` environment (see Section 6.3), XML validator pipelines, and 100% OER compilation. | Section 6 & Appendix 5 |
| **LO5: Evaluation & Reflection** | Critical reflection on planning-vs-reality gaps, citing four specific project log entries with analysis of lessons learned. | **Section 7** |
| **LO6: Communication** | Structuring accessible OER content, audio overviews, and academic reporting. All technical terms defined on first use. | Section 1 & Section 6 |
| **LO7: Legal, Social, Ethical, Professional (LSEPI)** | Application of CC-BY 4.0, BCS Code of Conduct compliance, Bitcoin Regtest safety measures, and accessibility audits. | Section 5 |
| **LO8: Technical Knowledge & Skills** | Demonstrated through annotated code walkthrough of the Nix flake configuration (Section 6.3) and a specific problem/solution case study (Section 6.4). | **Section 6.3 & 6.4** |
| **LO9: Professional Software Practice** | Standardised Go-port tooling, Pytest verification, and Nix developer shells. Three-Tier Privacy Strategy for repository management. | Section 6 & Appendix 9 |

---

## 3. Project Management and Lifecycle (LO1)

The project executes under a customised **Agile Scrum** lifecycle, with sprint logs maintained using command-line tools (`sbl`, `sboard`, `svalid` — compiled via Nix) rather than graphical tools, ensuring the project management tooling itself is reproducible across machines.

The project is structured into three main phases:

* **Phase 1: Research & Scoping (TMA01):** Completed stakeholder analysis and literature review. Identified the "Reproducibility Gap" as the core IT challenge.
* **Phase 2: Core Engineering (TMA02):** Achieved fully isolated (hermetic) system-level environments and validated a cloud-to-local migration when the original cloud IDE was deprecated.
* **Phase 3: Integration & Didactic Delivery (TMA03/EMA):** Completed the creation of four interactive units, integrated audio elements, and established the automated rendering validation loop.

Key scope management decisions during this lifecycle are discussed in Section 7 (Reflective Evaluation).

---

## 4. Requirements Analysis, Resources, and Stakeholder Input (LO2, LO3)

Requirements for the nixB OER were derived from a developer survey (n=5) validating the prevalence of environment-related failures in professional software teams. The didactic structure is grounded in the pedagogical model of **Bill Tait (1997)**, "Object Orientation in Educational Software," in which a Nix flake acts as a modular "educational object" — encapsulating both the process (reproducible build instructions) and the content (the laboratory workspace).

### Table 1: Project Resource Audit (LO3)

The following table documents all resources planned and used during the project. This addresses the examiner's request for an explicit resource identification in the main text.

| Resource Type | Description | Status |
| :--- | :--- | :--- |
| **Hardware** | MacBook Air M1 (ARM64, 8GB RAM) — primary development machine. Lenovo Chromebook (ARM64 MediaTek Kompanio 520) — secondary/test platform for cross-architecture validation. | ✅ Active |
| **Software – Core** | Nix package manager (v2.x), Bitcoin Core (v28.x, Regtest mode), C-Lightning, LNbits (Python/FastAPI), Python 3.12, uv (Python package manager). | ✅ Installed via `flake.nix` |
| **Software – Tooling** | ScrumMD-Go (sprint management), Pandoc (document conversion), ou-xml-validator (OU-XML schema validation), Pytest (automated testing), Git. | ✅ Installed via `flake.nix` |
| **People** | Dr. Bill Tait — tutor/academic consultant (previously TM354 Software Engineering tutor, providing pedagogical continuity). Andre Amorim — project manager, developer, and course author. | ✅ Confirmed 2026-05-08 |
| **Platforms** | OpenLearn Create (OER hosting), GitHub (version control and collaboration), Google Drive (draft sharing with tutor). | ✅ Active |
| **Time** | Approximately 15–20 hours per week across 16-week module window. Detailed time allocation tracked via dated sprint log entries in `scrum/sprints/`. | ⏳ Ongoing |
| **Permissions** | Ethics approval granted (standard low-risk computing project). No personal data collected from learners. Bitcoin transactions use Regtest mode (no real currency). | ✅ Approved |

---

## 5. LSEPI Issues (LO7)

* **Legal:** The nixB curriculum is licensed under **Creative Commons Attribution 4.0 International (CC-BY 4.0)**, and the source code is released under the **MIT License**. All third-party software (Bitcoin Core, C-Lightning, LNbits) is open source and freely redistributable.
* **Ethical:** To prevent any financial risks, all hands-on exercises involving cryptocurrency components are strictly run in **Bitcoin Regtest** mode — a local developer-only regression test network that uses virtual "play" coins with no monetary value. No real financial transactions are possible within the laboratory.
* **Social:** The OER is designed as an open resource accessible to any learner worldwide, promoting equitable access to advanced software engineering education regardless of institutional affiliation.
* **Professional:** Development follows the BCS Code of Conduct, with particular attention to honest reporting of test results and transparent documentation of project decisions.
* **Accessibility:** OER outputs are formatted using the structured **OU-XML schema** to ensure screen-reader compatibility and keyboard navigability, aligning with WCAG 2.1 AA standards.

---

## 6. Technical Implementation and Evaluation (LO4, LO5, LO8, LO9)

### 6.1 Interactive Courseware Development

The nixB OER is divided into four structural units, grounded in Tait's (1997) educational object taxonomy:

1. **Unit 1: The Reproducibility Gap** (*Presentation Object*) — Introduces environmental inconsistency and traditional mitigation strategies. Uses the "Jenga Audit" metaphor to illustrate how removing one system dependency can collapse an entire stack.
2. **Unit 2: Declarative Environments** (*Practice Object*) — Covers declarative package management using Nix. Hands-on exercise: "Your First Flake" — the learner writes a minimal `flake.nix` and observes deterministic environment creation.
3. **Unit 3: Immutability and Build Parity** (*Practice Object*) — Explains system-level isolation using the Nix store's Directed Acyclic Graph (DAG) — a tree-like data structure where each package points to its exact dependencies, making substitution or drift structurally impossible.
4. **Unit 4: Verification and The Reflective Practitioner** (*Assessment Object*) — Integrates automated environment assertions using Pytest and explores the LNbits micro-payment system as a real-world case study of a complex Python application that suffers from environment reproducibility challenges.

### 6.2 OER Validation Loop

To maintain high-fidelity output quality, the workspace incorporates a Nix-integrated rendering pipeline. The `preview.sh` script, running within the OER flake's developer shell, executes the `ou_xml_validator` to check schema compliance and then invokes `pandoc` to generate human-readable previews. This loop ensures that any content edit is immediately validated against the OU-XML schema before submission.

### 6.3 Technical Deep-Dive: The Nix Flake (LO8)

The following annotated code extract is from the project's primary laboratory flake (`lab/flake.nix`). It demonstrates how Nix achieves environment reproducibility — the core technical concept of this project.

```nix
{
  description = "Didactic Laboratory for LNbits Integration (nixB)";

  # INPUTS: Declare the exact source of all packages.
  # The lockfile (flake.lock) pins this to a specific commit,
  # ensuring every user gets identical package versions.
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    # eachDefaultSystem: Automatically build for x86_64-linux,
    # aarch64-linux (ARM), x86_64-darwin, aarch64-darwin (Apple Silicon).
    # One definition serves ALL architectures.
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in {
        devShells.default = pkgs.mkShell {
          # buildInputs: The complete, explicit dependency list.
          # Nothing is installed globally — everything is scoped
          # to this shell session and disappears on exit.
          buildInputs = with pkgs; [
            bitcoin        # Bitcoin Core daemon and CLI
            clightning     # C-Lightning node
            python312Packages.python  # Python 3.12 interpreter
            uv             # Fast Python package manager
            sqlite         # Database for LNbits
            pandoc          # Document conversion
          ];

          shellHook = ''
            echo "--- nixB Didactic Laboratory ---"
            echo "Bitcoin Core: $(bitcoind --version | head -n 1)"
            echo "C-Lightning: $(lightningd --version)"
            echo "Run './start_lab.sh' to initialize the regtest environment."
          '';
        };
      }
    );
}
```

**How this achieves reproducibility:** The `inputs` block declares the exact source of all packages (pinned to a specific Git commit via `flake.lock`). The `buildInputs` list explicitly enumerates every dependency — there are no implicit system packages or hidden assumptions about what is already installed on the learner's machine. When a student runs `nix develop`, Nix reads this file, resolves every dependency from the cryptographically locked source, and constructs an isolated shell environment. Two students on entirely different operating systems (e.g., Ubuntu x86 and macOS ARM64) will receive functionally identical environments because the specification is the same.

### 6.4 Case Study: Solving a Real Reproducibility Problem (LO11)

To illustrate the practical value of the nixB approach, consider a specific problem encountered during development:

**The Problem:** LNbits is a Python web application that depends on `libsecp256k1`, a C library for cryptographic operations used in Bitcoin. When a developer installs LNbits using standard Python tooling (`pip install`) on an x86_64 Linux machine, the installation typically succeeds because pre-compiled binary wheels are available for that architecture. However, when the same developer attempts the identical installation on an ARM64 machine (such as the Chromebook or Apple Silicon MacBook used in this project), the build fails:

```
ERROR: Could not build wheels for secp256k1 [...]
  fatal error: 'secp256k1.h' file not found
```

The failure occurs because the ARM64 platform lacks a pre-compiled binary, forcing a compilation from source — which requires the C library headers to be installed at the system level. The Python `requirements.txt` cannot express this system-level dependency. The developer has the same Python version, the same pip version, and the same requirements file — yet the build is not reproducible across architectures.

**The Nix Solution:** In the nixB `flake.nix`, system-level dependencies are declared alongside Python packages:

```nix
buildInputs = with pkgs; [
  bitcoin
  clightning
  python312Packages.python
  pkgs.secp256k1   # System-level C library — declared explicitly
  uv
];
```

Because Nix resolves *all* dependencies — including system-level C libraries — before the environment is created, the ARM64 student receives a working `libsecp256k1` automatically. The library is not installed globally on the machine; it exists only within the Nix shell session. This eliminates the class of failures that occur when Python packages assume the presence of system libraries that may or may not exist on a given machine.

This case study is used in Unit 4 of the OER to teach students the difference between *application-level* dependency management (pip, npm) and *system-level* dependency management (Nix), and why full-stack reproducibility requires both.

---

## 7. Reflective Evaluation and Lessons Learned (LO5)

This section provides a critical reflection on the project's progress, examining the gaps between what was planned and what actually happened, and the lessons derived from those gaps.

### 7.1 The Cloud-to-Local Migration Crisis

**Planned:** The project was originally developed on Google Project IDX (Firebase Studio), a cloud-based IDE that provided a consistent remote environment. This was expected to remain stable throughout the module.

**What happened:** On 13 April 2026, the cloud IDE environment underwent a deprecation cycle, forcing an unplanned emergency migration of the entire development stack to local hardware — a Lenovo Chromebook with an ARM64 MediaTek processor (Project Log, DECISIONS.md, 2026-04-15).

**What I learned:** This migration, while disruptive, became the most powerful piece of evidence in the project. It proved, under real-world pressure, that the Nix flake configuration could successfully reproduce the development environment on a completely different architecture (x86 cloud → ARM64 local) without any code changes to the `flake.nix`. The experience transformed what was originally a setback into the project's strongest validation of software reproducibility. In the OER (Unit 1), this event is now presented as a real-world case study of the "Reproducibility Gap."

### 7.2 Scope Management: Dropping Card 009

**Planned:** Sprint Card 009 ("Scrum Pixel Visualisation Prototype") was an 8-point task to build an animated dashboard for the Scrum board — an ambitious stretch goal that would have added visual flair to the project management tooling.

**What happened:** The card was **dropped** entirely during Sprint 2 (Decision Log, 2026-04-17). Attempting to build a custom visualisation tool while simultaneously developing the core OER content and laboratory infrastructure was overextending the project scope.

**What I learned:** Dropping an 8-point card was a difficult but necessary project management decision. It taught me the importance of the MoSCoW method in practice — the visualisation was a "Could Have" that was consuming time that should have been allocated to the "Must Have" deliverables (the OER units and the lab environment). This experience is directly relevant to LO1 (Project Planning) and demonstrates the kind of scope discipline that professional software projects require.

### 7.3 Tutor Reassignment and Communication Style

**Planned:** The original tutor (Mr AE Cox) was assigned at module start. The expectation was a straightforward supervision relationship throughout the project.

**What happened:** After receiving a TMA01 score of 43%, I initially attributed the low mark to a misalignment of subject-matter interest. However, upon receiving TMA02 feedback from the new tutor (Dr Bill Tait, confirmed 2026-05-08), I recognised that both tutors had flagged **the same structural gaps** — unclear deliverable definition, missing resource identification, and insufficient critical reflection (see Section 2 for the full LO mapping). The problem was in the communication of the project, not in its evaluation.

**What I learned:** This was the most significant lesson of the project so far. The feedback pattern proved that the low scores were not the result of subject-matter bias but of genuine gaps in how I was presenting the work. I had been writing for an audience of Nix/Bitcoin specialists, when my actual audience was Computing tutors who may never have used a command line. This realisation directly informed the communication strategy for this TMA03 — every technical term is now defined on first use, code is presented in the main text with annotations, and the deliverable is stated explicitly in the first paragraph.

### 7.4 The OER Development Bottleneck

**Planned:** Sprint Card 013 (OER Development) was estimated at 5 story points and expected to be completed within Sprint 3.

**What happened:** The card remains **In Progress** after more than 5 weeks of active work (Sprint Log, Card 013). While all four units have been authored and Unit 4 has achieved full OU-XML validation (Decision Log, 2026-05-21), the integration of audio elements, the resolution of a `setuptools`/`pkg_resources` conflict in the OER toolchain, and the final publishing workflow to OpenLearn Create have extended the timeline beyond the original estimate.

**What I learned:** The 5-point estimate significantly undervalued the complexity of authoring OER content that simultaneously teaches technical concepts *and* meets the OU-XML schema validation requirements. Writing educational content is a fundamentally different skill from writing code, and I underestimated the time required for pedagogical design, content iteration, and accessibility compliance. For the EMA, I will allocate dedicated writing sprints separate from engineering sprints to prevent the two workstreams from competing for the same time blocks.

---

## 8. Next Steps toward Final Submission (EMA)

Based on the reflective evaluation above, the immediate priorities for the EMA are:

1. **Publish the OER:** Complete the OpenLearn Create upload workflow and verify that external users (including the examiner) can access the course materials without requiring an OU student account.
2. **Independent Usability Testing:** Recruit 2–3 testers unfamiliar with Nix to work through the nixB laboratory and OER units. Document their experience, difficulties, and feedback as evidence for LO5 (Evaluation) and LO11 (Practical Problem-Solving).
3. **Complete the LNbits Integration (Card 012):** Finish the remaining implementation tasks to provide learners with a working micro-payment demonstration in Unit 4.
4. **Final Dissertation Writing Sprint:** Dedicate a 2-week writing-only window (no engineering) to compose the EMA report, applying the communication lessons from Section 7.3.

---

## References

Meadows, D.H. (2009) *Thinking in Systems: A Primer*. London: Earthscan.

Tait, B. (1997) 'Object Orientation in Educational Software', *Innovations in Education and Training International*, 34(3), pp. 167–173.

---

*Appendices 1–9 are provided as supplementary material and referenced from the main text where relevant.*
