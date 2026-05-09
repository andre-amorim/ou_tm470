# [Refined Section] nixB Course Map & Didactic Implementation

## 1. Context: The OpenLearn OER
The primary outcome of the nixB project is a "Didactic Laboratory" designed as an **Open Educational Resource (OER)** for The Open University's OpenLearn platform. Unlike traditional technical documentation, this resource is structured to bridge the "Reproducibility Gap" identified in the TM353 stakeholder analysis.

## 2. Diagram: nixB Course Architecture
The diagram below illustrates the four-unit scaffolding designed to lead a learner from "Technical Imposter Syndrome" to "Deterministic System Mastery."

**[INSERT FIGURE: dissertation/diagrams/nixb_course_map_flow.png]**

### 2.1 Narrative Explanation (for Dissertation)
The course architecture follows a **Constructivist Scaffolding** approach:

*   **Unit 1: The Reproducibility Gap:** Focuses on the "Human Factor" (LSEPI). It uses the 80% build failure statistic from the pilot study to ground the learner in the reality of configuration drift.
*   **Unit 2: Declarative Foundations:** Introduces Nix not as a package manager, but as a **Mental Model** for declarative state. This section addresses the "Black Box" anxiety reported by stakeholders.
*   **Unit 3: Local Infrastructure:** The technical heart of the lab. Learners orchestrate a Bitcoin/LNbits stack on a Chromebook, demonstrating that a $200 device can host a sovereign financial stack through Infrastructure as Code (IaC).
*   **Unit 4: Verification & Reflection:** Closes the loop. Learners use automated tests (Pytest) to verify their reproduction, turning the "It works on my machine" frustration into an empirically verifiable "It works everywhere" confidence.

## 3. Placement in TMA02
This section and diagram should be inserted in **Section 5: Artefact Development**. It serves as the bridge between your **Technical Work (LO9)** and your **Pedagogical Design (LO3/LO5)**.

### Why this matters to the Tutor:
The diagram proves that the project is not just "running Bitcoin code," but rather creating a **reproducible didactic journey**. It shows the tutor that you have considered how a future student (the learner) will consume this laboratory, transforming it from a private experiment into a public academic resource.
