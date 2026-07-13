**Name: Andre Amorim | PI: A5624864 | TM470 | TMA03**  
**Project: nix₿ – A Didactic Laboratory for Software Reproducibility**  
**Tutor:** Dr. Bill Tait  
**Word Count:** ~4,500 words  

## Contents Page

1. **Introduction and Abstract** (The Problem and the Deliverable)
2. **LO1: Exploring the Problem and Identifying Requirements** (Why Software Breaks)
3. **LO2: Independent Learning and Technical Research** (Learning How to Fix the Problem)
4. **LO3: Planning, Resource Management, and Risk** (Managing the Project)
5. **LO4: Professional and Ethical Practice** (Keeping Data Safe, Accessible, and Sustainable)
6. **LO5: Practical Skills and Implementation** (Building the Educational Laboratory)
7. **LO6: Testing and Evaluation** (Proving the Laboratory Works)
8. **LO7: Reviewing the Project** (Agile Sprints, Crises, and Adaptations)
9. **LO8: Communication and Presentation** (Making the Course Easy to Read)
10. **LO9: Reflection and Professional Development** (What I Learned)
11. **Appendices**

---

## 1. Introduction and Abstract

### The Problem: Why Software Reproducibility Matters

The Open University textbook for TM354 (Software Engineering) establishes a fundamental principle for all developers: *"We expect a software system to be reliable, in that errors are minimised, as otherwise its users will not be able to perform those tasks that need its support"* (The Open University, 2022).

However, modern software engineering suffers from a pervasive challenge to this reliability. Consider the following analogy: imagine giving a ten-year-old a recipe to bake a Yorkshire pudding. If the recipe simply says "add eggs and bake," the outcome will be entirely different depending on the kitchen, the oven, and the ingredients to hand. Conversely, if the instructions specify "whisk together equal volumes of eggs, flour, and milk, pour the batter into a smoking-hot, oiled muffin tray, and bake at 220°C for 20 minutes without opening the oven door," the result will be identical every time, no matter who bakes it or where.

In software engineering, a similar issue is formalised as the **"Reproducibility Gap"** (Boettiger, 2015). A developer may author code that executes correctly within their own environment, but when shared with a colleague or tutor, it fails unpredictably due to implicit environmental discrepancies — such as absent system-level libraries, divergent operating system configurations, or mismatched dependency versions. When this challenge is scaled to collaborative, multi-developer free and open-source software (FOSS) ecosystems — where numerous contributors interact with a shared codebase — environmental volatility becomes a significant threat to project stability. This volatility is further compounded by socio-technical dynamics: because many open-source developers operate on a voluntary basis without financial incentives or contractual obligations, critical libraries and components are highly susceptible to sudden abandonment.

If a system's environment cannot be reproduced, its software cannot be reliable.

### The Deliverable: The nixB Educational Web App

To address this challenge, this project develops **nixB**, an interactive Open Educational Resource (OER) designed as a didactic laboratory for software reproducibility. Initially hosted at `oer.nixb.org` in Google Codelab format (Google, 2024), with plans for submission to the Open University's OpenLearn Create platform, nixB teaches students how to use **Nix** — a declarative package manager that defines an entire software environment as a single, version-controlled configuration file — to ensure their code runs identically across any system.

The OER is structured as a hands-on laboratory. By translating complex technical concepts into accessible, pedagogical lessons following OpenLearn guidelines (The Open University, 2016), nixB equips learners with the practical skills needed to bridge the Reproducibility Gap and build deterministic development environments.

---

## 2. LO1: Exploring the Problem and Identifying Requirements

*(Addresses LO2: Project Goals; LO4: Gathering Information; LO1: Technical Concepts)*

The core problem this project addresses is colloquially known in industry as **"It works on my machine"** — the situation where code executes correctly in one environment but fails in another due to hidden environmental assumptions. To investigate the impact of this problem in active FOSS systems, I diagnosed a dependency mismatch in the LNbits project and raised **Issue #3691** on the LNbits GitHub repository (Amorim, 2026). This issue documented the lack of cross-architecture system-level pre-compilation for ARM64 devices, demonstrating that standard language-level package managers (e.g., `pip`, `npm`, `cargo`) are insufficient for multi-architecture stability without explicit system-level declaration.

Based on this investigation and the observations I gathered while engaging with various other FOSS ecosystems — which consistently reflected this identical pattern of environmental volatility — I formulated the following requirements for the nixB OER:

*   **Clarity and Accessibility:** The content must translate deep technical jargon into clear, comprehensible language appropriate for beginner developers and computing students.
*   **Interactivity:** The application requires a sandbox environment where students can safely test reproducibility principles using real developer toolchains.
*   **Pedagogical Structure:** The OER must follow established Open Educational Resource guidelines (The Open University, 2016), with clearly defined learning objectives using measurable action verbs (Rowntree, 1990).
*   **Target Audience:** Computing students and novice developers seeking to understand system-level dependencies and software reproducibility.

---

## 3. LO2: Independent Learning and Technical Research

*(Addresses LO8: Independent Learning; LO6: Using Information)*

Building a didactic laboratory required exploring domains beyond traditional software development, demanding significant independent research and skill acquisition across three distinct areas.

### 3.1 The Historical Context: From Makefiles to Modern Package Managers

I began my research by investigating how programming languages have historically addressed system complexity. The C and C++ ecosystems were historically fragmented because they lacked a single, official package manager. Developers relied on build managers like **Make** (Feldman, 1979), where a `Makefile` acted loosely as a manifest — defining dependency graphs and build rules but suffering from critical limitations. Builds occurred locally in the workspace, and Makefiles could not prevent undeclared dependencies. Dependency resolution through global system directories (such as `/usr/bin` and `/usr/include`) made builds inherently machine-dependent, making it difficult to guarantee identical compilation across different hardware.

Modern programming languages address these shortcomings through dedicated package managers — `maven`/`gradle` for Java, `npm` for JavaScript, `pip`/`uv`/`poetry` for Python, `cargo` for Rust, and `modules` for Go — each handling dependency management, build automation, and project lifecycles within their specific domain. However, the scope of these language-level package managers is restricted to their own ecosystem. A project combining a Python backend, a Node.js frontend, and a Rust tool requires the developer to manage `uv`, `npm`, and `cargo` independently, with no unified mechanism to guarantee consistency across the entire stack.

### 3.2 Nix: A Functional Approach to System Deployment

Through independent study of Nix documentation and community resources (NixOS Foundation, 2024), I learned how Nix applies functional programming concepts to system deployment. Nix's Directed Acyclic Graph (DAG) model ensures **structural immutability** — every software component is placed in strict isolation within the `/nix/store`, housed in its own read-only directory named after a cryptographic hash of its build inputs. This approach deliberately violates the traditional Filesystem Hierarchy Standard (FHS), where global directories like `/usr`, `/bin`, and `/lib` function as what I have come to understand as **mutable global variables** — shared paths that are destructively overwritten during software installation, causing the problem famously known as "dependency hell."

Nix's learning curve is acknowledged as "famously steep" (NixOS Foundation, 2024), yet once the functional model is understood, the elegance of never contending with unpredictable global system state outweighs the initial learning difficulty. Nix `flakes` extend the lock file concept to encompass the entire stack, pinning all dependencies — system libraries, compilers, and application packages — in a single, unified `flake.lock` file.

### 3.3 Pedagogical Framing and the Open Knowledge Format

Recognising that technical mastery is insufficient without effective communication, I researched The Open University's OpenLearn Create guidelines (The Open University, 2016) and studied the Codelab formatting standard (Google, 2024). I independently learned to structure knowledge using YAML metadata, applying this to the OER content to ensure an appropriate, rigorous educational structure. I also developed custom tooling — including the `pdf2okf` pipeline written in Go — to parse complex document structures and programmatically convert them into the structured markdown formats required for the interactive Codelabs.

---

## 4. LO3: Planning, Resource Management, and Risk

*(Addresses LO9: Planning & Organizing; LO3: Resources & Skills)*

The project lifecycle is governed by an **Agile Scrum** methodology, utilising custom command-line tools (`sbl`, `sboard`, `svalid`) compiled within a reproducible Nix shell. Sprint logs with dated entries provide a systematic record of planning decisions, scope adjustments, and resource allocation across three phases:

*   **Sprint 1 (Research & Scoping):** Completed stakeholder analysis and literature review; identified the Reproducibility Gap as the core IT challenge.
*   **Sprint 2 (Core Engineering):** Achieved fully hermetic system-level environments; validated the cloud-to-local migration (see Section 8.1).
*   **Sprint 3 (Integration & Didactic Delivery):** Created interactive OER units, integrated automated validation, and began OpenLearn Create alignment.

A significant risk materialised during Sprint 2: an 8-point task for a "Scrum Pixel Visualisation Prototype" (Card 009) threatened to overextend the timeline. Applying the **MoSCoW** method, I recognised this feature as a "Could Have" consuming time allocated to "Must Have" deliverables — the OER units and the lab environment. The card was dropped entirely (Decision Log, 2026-04-17), a difficult but necessary scope management decision that protected the core deliverables.

---

## 5. LO4: Professional and Ethical Practice

*(Addresses LO10: LSEPI & EDI)*

Professionalism in software engineering extends beyond writing code; it encompasses the safe and ethical handling of data, users, and intellectual property.

### 5.1 Privacy and Data Protection

To ensure personal data remains separate from the public academic repository, a **"Three-Tier Privacy Strategy"** was implemented: personal identifiers were anonymised, administrative metadata was separated into an ignored `.administrative/` folder, and the public GitHub repository was sanitised for tutor and external examiner review.

### 5.2 Safe Sandboxing

Because the laboratory context involves a Bitcoin Regtest node, ethical considerations mandated that all exercises operate strictly on a **local test network** using virtual "play" coins with zero financial value. No real financial transactions are possible within the laboratory environment.

### 5.3 Open Licensing and FOSS Sustainability

The nixB OER is released under the **Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)** licence (Creative Commons, 2013), ensuring that the educational content remains freely available for reuse, adaptation, and redistribution — a core principle of the OUCreate guidelines (The Open University, 2016). The source code components are released under the MIT Licence.

The OER also addresses the economic sustainability of open-source projects. The nixB laboratory demonstrates the **LNbits Scrum extension** — a digital Agile project management tool whose standout feature is **paid tasks**: attaching Bitcoin Lightning Network micro-payments to task completion. Marking a task as "done" automatically triggers a Lightning payment to the assignee. This model is presented to students as a potential mechanism for incentivising FOSS contributions, addressing the well-known sustainability challenge evidenced by messages such as npm's "this package is looking for funds" notices.

### 5.4 Accessibility

The OER interface adheres to **Web Content Accessibility Guidelines (WCAG 2.1 AA)** and uses the OU-XML schema to ensure screen-reader compatibility and keyboard navigability.

---

## 6. LO5: Practical Skills and Implementation (The Artefact)

*(Addresses LO11: Practical Problem)*

The implementation of nixB demonstrates a synthesis of multiple practical skills, culminating in a robust, deterministic learning environment.

### 6.1 Environment Configuration (`flake.nix`)

The cornerstone of the laboratory is the Nix flake. Rather than providing learners with a lengthy document of installation instructions, the `flake.nix` file explicitly declares all system-level dependencies — including Python 3.12, Bitcoin Core, C-Lightning, and the `secp256k1` cryptographic library — in a single, version-controlled file. This guarantees that any user cloning the repository receives an exact, working replica of the learning environment, regardless of whether they use a Linux workstation or an Apple Silicon MacBook.

```nix
buildInputs = with pkgs; [
  bitcoin           # Bitcoin Core daemon and CLI
  clightning        # C-Lightning node
  python312Packages.python  # Python 3.12 interpreter
  pkgs.secp256k1    # System-level C library (cross-architecture)
  uv                # Python package manager
  sqlite            # Database for LNbits
];
```

### 6.2 Solving a Real-World Dependency Failure (LNbits Issue #3691)

A practical demonstration of the nixB approach emerged during development. Installing LNbits via standard Python tooling (`pip install`) on ARM64 processors failed because the platform lacked a pre-compiled `libsecp256k1` C library. The Python `requirements.txt` could not express this system-level dependency — the developer had the same Python version, the same pip version, and the same requirements file, yet the build was not reproducible across architectures.

By declaring `pkgs.secp256k1` at the system level within the flake, Nix resolves this dependency before the environment is created. The ARM64 student receives a working library automatically, eliminating the class of failures that occur when language-level package managers assume the presence of system libraries. This case study forms the practical centrepiece of Unit 4 of the OER.

### 6.3 Building the Application and Content

A Go web server was implemented to host the interactive course material. The `pdf2okf` pipeline transforms static text into engaging, interactive Codelab modules that guide the learner step-by-step through the process of building their own reproducible environments. The laboratory startup is automated via Bash scripts (`start_lab.sh`) that initialise the Bitcoin Regtest network and LNbits instance.

---

## 7. LO6: Testing and Evaluation

*(Addresses LO11: Practical Problem — testing aspect)*

Systematic testing was conducted across both the content delivery and the technical environment:

*   **Content and Schema Validation:** The `ou_xml_validator` automatically validates every OER module against the OU-XML schema, guaranteeing compatibility with university standards.
*   **Automated Environmental Assertions:** A Pytest framework runs background assertions during the build process, verifying that the Nix environment bootstraps correctly, the Python interpreter matches the correct version, and the Bitcoin Regtest node is responsive.
*   **Evaluative Success:** The ultimate evaluation metric is pedagogical: can a learner seamlessly access the laboratory? By proving that a user can run a single command (`nix develop`) and successfully instantiate the local learning sandbox without failure or manual intervention, the project successfully bridges the Reproducibility Gap.

---

## 8. LO7: Reviewing the Project

*(Addresses LO5: Critically Reviewing; LO1: Technical Concepts)*

### 8.1 Software as Storytelling

Since the core deliverable of this project is a **didactic** Open Educational Resource, the ability to communicate complex technical concepts to a broader audience is not merely desirable — it is a fundamental professional competency. Just as a medical practitioner must translate a diagnosis into language a patient can act upon, or a solicitor must distil case law into advice a client can understand, a software engineer building educational material must learn to bridge the gap between specialist knowledge and accessible pedagogy. This realisation became the project's most significant evolution.

**TM354 Block 1** establishes this principle explicitly, instructing developers to *'always consider the intended audience for any document that you produce'* (The Open University, 2022). Equally, **TM353 (IT Project Success)** teaches that a system's success is not determined solely by technical quality, but by whether it satisfies its diverse **stakeholders** — a project manager may judge success by schedule adherence, a developer by code quality, and an end-user by usability (Fortune et al., 2011; Davis, 2013). Applied to nixB, the codebase was technically sound, but the documentation risked failing its academic stakeholders (the tutor and examiners) because it spoke only to Nix and Bitcoin specialists.

Embracing the philosophy that "software is storytelling" — a concept explored by Liu and Lieberman (2005), who argue that programming is inherently a narrative form where data structures act as nouns, functions as verbs, and properties as adjectives — the project's primary focus shifted from simply building the infrastructure to telling the story of the "Reproducibility Gap." This informed the restructuring of this report around accessible analogies (such as the "Jenga Tower" of configuration drift) and the translation of the technical **domain model** into clear, stakeholder-friendly **requirements** and **use cases**, providing the academic **traceability** required for assessment.

### 8.2 Re-framing Crises as Case Studies

This shift in narrative approach also transformed how technical challenges were handled and reviewed. For example, the project was originally developed on a cloud-based IDE (Google Project IDX). An unplanned deprecation of this service forced an emergency migration to local hardware. Instead of treating this merely as a technical setback, the new "storytelling" mindset allowed me to re-frame the crisis as a powerful, real-world case study. The fact that the environment was reproduced locally on an ARM64 Chromebook without altering a single line of the `flake.nix` configuration became the perfect narrative device to prove the resilience of Nix to the students in Unit 1 of the OER.

### 8.3 Upstream Validation

Similarly, encountering the cross-architecture compilation failure for `secp256k1` was not just fixed quietly; it was documented and raised as GitHub Issue #3691 on the LNbits repository. This transformed a local bug into academic evidence, validating the narrative that the Reproducibility Gap is an active, ongoing problem in production FOSS ecosystems, and grounding the OER's controlled failure simulation (Section 7.1) in reality.

---

## 9. LO8: Communication and Presentation

*(Addresses LO7: Communication)*

Effective software engineering requires effective communication. Two strategies have been applied to this report and the OER:

*   **Pedagogical Tone:** Technical terminology is translated into plain, accessible English — exemplified by the Yorkshire pudding analogy in Section 1 — ensuring both the report and the course content can be understood by a general academic audience without specialist knowledge of Nix or Bitcoin.
*   **Structured Organisation:** The report is explicitly structured against the 11 official Learning Outcomes (LO1–LO11). This "Academic Translation Layer" — a methodology refined through the integration of Dr. Andy Stapleton's academic prompting strategies — guarantees that the examiner can locate and assess the evidence for each grading criterion without ambiguity.

---

## 10. LO9: Reflection and Professional Development

*(Addresses LO8: Independent Learning — reflective aspect)*

This project has been a transformative exercise in professional growth, fundamentally shifting my perspective from pure engineering to comprehensive software management.

*   **From Programmer to Project Manager:** Initially, I approached this project as a programmer solving a technical dependency issue. However, managing the nixB project taught me to navigate the broader responsibilities of scope management, resource allocation, and risk mitigation. Dropping the visualisation dashboard in Sprint 2 was a difficult but necessary managerial decision — a practical application of MoSCoW prioritisation that protected the core deliverables.
*   **Audience Awareness and Communication:** The most critical lesson has been learning to accept structural feedback and adapt my communication style. Recognising that "technical excellence means little if it cannot be communicated" has fundamentally reshaped my approach. By studying the TM354 materials, OpenLearn formats, and tutor feedback, I learned to translate complex engineering into accessible knowledge. This evolution from specialist to academic generalist will be invaluable in my future professional practice.
*   **Pedagogical Scoping:** Choosing the Bitcoin/LNbits ecosystem as the OER context was a deliberate pedagogical decision. The ecosystem is complex enough to justify a robust solution like Nix, without reaching the massive scales of, for instance, Google's proprietary codebase — which relies on Piper (a custom version control system) and Blaze (a distributed build system) to manage billions of lines of code (Potvin and Levenberg, 2016). The primary objective of nixB is to offer learners an introductory understanding of system scale and escalating complexity, while deliberately keeping its own scope focused on a medium-sized, accessible scale.

---

## 11. Appendices

*   **Appendix 1:** Project Log Extracts (Sprint Logs and Decision Records)
*   **Appendix 2:** Evidence of the OER Web App (Screenshots and Links to `oer.nixb.org`)
*   **Appendix 3:** The `pdf2okf` Tool Source Code
*   **Appendix 4:** GitHub Issue #3691 — LNbits Cross-Architecture Failure Report
*   **Appendix 5:** Ethics Checklist

---

## References

Amorim, A. (2026) 'LNbits build failure on ARM64: missing secp256k1 system library', *GitHub Issue #3691*, LNbits repository. Available at: https://github.com/lnbits/lnbits/issues/3691 (Accessed: 12 July 2026).

Boettiger, C. (2015) 'An introduction to Docker for reproducible research', *ACM SIGOPS Operating Systems Review*, 49(1), pp. 71–79.

Creative Commons (2013) *Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)*. Available at: https://creativecommons.org/licenses/by-sa/4.0/ (Accessed: 12 July 2026).

Davis, K. (2013) 'Different stakeholder groups and their perceptions of project success', *International Journal of Project Management*, 32(2), pp. 189–201. Available at: http://dx.doi.org/10.1016/j.ijproman.2013.02.006 (Accessed: 13 July 2026).

Feldman, S.I. (1979) 'Make — A Program for Maintaining Computer Programs', *Software: Practice and Experience*, 9(4), pp. 255–265.

Fortune, J., White, D., Jugdev, K. and Walker, D. (2011) 'Looking again at current practice in project management', *International Journal of Managing Projects in Business*, 4(4), pp. 553–572.

Google (2024) *Codelab Formatting Guide*. Available at: https://github.com/googlecodelabs/tools/blob/main/FORMAT-GUIDE.md (Accessed: 12 July 2026).

Liu, H. and Lieberman, H. (2005) 'Metafor: Visualizing Stories as Code', *Proceedings of the 10th International Conference on Intelligent User Interfaces (IUI '05)*, ACM, pp. 305–307. Available at: https://doi.org/10.1145/1040830.1040905 (Accessed: 13 July 2026).

NixOS Foundation (2024) *Nix Reference Manual*. Available at: https://nixos.org/manual/nix/stable/ (Accessed: 12 July 2026).

Potvin, R. and Levenberg, J. (2016) 'Why Google Stores Billions of Lines of Code in a Single Repository', *Communications of the ACM*, 59(7), pp. 78–87.

Rowntree, D. (1990) *Teaching Through Self-Instruction: How to Develop Open Learning Materials*. Rev. edn. London: Kogan Page.

Tait, B. (1997) 'Object Orientation in Educational Software', *Innovations in Education and Training International*, 34(3), pp. 167–173.

The Open University (2016) *Creating Open Educational Resources: A Quick-Start Guide*. Available at: https://www.open.edu/openlearncreate/ (Accessed: 12 July 2026).

The Open University (2020) *TM353 IT systems: planning for success*, Milton Keynes, The Open University.

The Open University (2022) *TM354 Software engineering: Block 1 Approaches to software development*, Milton Keynes, The Open University.
