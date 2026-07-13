**Name: Andre Amorim | PI: A5624864 | TM470 | TMA03**  
**Project: nix₿ – A Didactic Laboratory for Software Reproducibility**   
**Tutor:** Dr. Bill Tait  
**Word Count:** ~4,500 words target (Current draft length varies)  

## Contents Page

1. **Introduction and Abstract**
2. **LO1: Exploring the Problem and Identifying Requirements**
3. **LO2: Independent Learning and Technical Research**
4. **LO3: Planning, Resource Management, and Risk**
5. **LO4: Professional and Ethical Practice**
6. **LO5: Practical Skills and Implementation**
7. **LO6: Testing and Evaluation**
8. **LO7: Reviewing the Project**
9. **LO8: Communication and Presentation**
10. **LO9: Reflection and Professional Development**
11. **Appendices**

---

## 1. Introduction and Abstract

### The Problem: Why Software Reproducibility Matters

The Open University textbook for TM354 (Software Engineering) establishes a fundamental principle for all developers: *"We expect a software system to be reliable, in that errors are minimised, as otherwise its users will not be able to perform those tasks that need its support"* (The Open University, 2022). 

However, modern software engineering suffers from a pervasive challenge to this reliability. Imagine giving a ten-year-old a recipe to bake a cake. If the recipe simply says "add flour and bake," the outcome might be entirely different depending on the kitchen they use. Conversely, if the instructions specify "add exactly 200 grams of King Arthur all-purpose flour, use a glass bowl, and bake at exactly 180 degrees Celsius for 25 minutes," the result will be identical every time. 

In software engineering, a similar issue is known as the "Reproducibility Gap." A developer may write code that runs perfectly on their local machine, but when shared with a colleague or tutor, it fails unpredictably due to environmental differences—such as missing libraries or differing operating system configurations. If a system's environment cannot be reproduced, its software cannot be reliable.

### The Deliverable: The nixB Educational Web App

To address this challenge and bridge the gap between reliability and reproducibility, this project develops **nixB**, an interactive Open Educational Resource (OER). Hosted at `oer.nixb.org`, this web-based application functions as a didactic laboratory. 

The application teaches students to use **Nix**, a declarative package manager that defines an entire software environment as a mathematically deterministic "recipe." By translating complex technical concepts into accessible, pedagogical lessons following OpenLearn guidelines, nixB equips learners with the practical skills needed to ensure their code runs identically across any system.

---

## 2. LO1: Exploring the Problem and Identifying Requirements

The core problem, often colloquially known as "It works on my machine," represents a failure in environmental consistency. To formulate a solution, the requirements for the nixB OER were scoped through the lens of a student's learning journey:

*   **Clarity and Accessibility:** The content must translate deep technical jargon into clear, comprehensible language appropriate for beginner developers. 
*   **Interactivity:** The application requires a sandbox environment where students can test reproducibility principles safely.
*   **Target Audience:** The project serves computing students and novice developers seeking to understand system-level dependencies.

---

## 3. LO2: Independent Learning and Technical Research

Building a didactic laboratory required exploring domains beyond traditional software development, demanding significant independent research and skill acquisition.

*   **Nix and Functional Deployment:** Before writing the laboratory environments, I had to independently master the Nix ecosystem. Traditional package managers (like `apt` or `pip`) are imperative—they execute step-by-step instructions that modify the system state. Through independent study of Nix documentation and community forums, I learned how to apply functional programming concepts to system deployment. By understanding Nix's Directed Acyclic Graph (DAG) for package resolution, I could appreciate how it ensures structural immutability, making it impossible for a dependency to drift over time.
*   **Pedagogical Framing and the Open Knowledge Format (OKF):** Recognizing that technical mastery is insufficient without effective communication, I researched The Open University’s Open Knowledge Format (OKF) specifications (hosted on Google Cloud Platform's GitHub). I independently learned to structure knowledge using YAML metadata, applying this not only to the OER content but also to referencing tools, such as creating a machine-readable OKF template for the "Cite Them Right" Harvard style guide. This ensured the OER adopted an appropriate, rigorous educational structure.
*   **Custom Tooling:** To bridge the gap between static university PDFs and interactive web content, I developed custom parsers, including the `pdf2okf` pipeline written in Go. This required learning how to parse complex document structures and programmatically convert them into the structured markdown formats required for the Codelabs.

---

## 4. LO3: Planning, Resource Management, and Risk

The project’s lifecycle is governed by an Agile Scrum methodology, utilizing customized command-line tools (`sbl`, `sboard`, `svalid`) built within a reproducible Nix shell. 

*   **Sprint Management:** Tasks were broken down into Sprints 1 to 3, with clear prioritization using the MoSCoW method.
*   **Risk Management:** During Sprint 2, a significant risk materialized when an 8-point task for a "Scrum Pixel Visualisation Prototype" threatened to overextend the timeline. Recognizing the risk to core deliverables, I pivoted away from this "Could Have" feature to maintain focus on the "Must Have" interactive Codelabs.

---

## 5. LO4: Professional and Ethical Practice

Professionalism in software engineering extends beyond writing code; it encompasses the safe and ethical handling of data and users.

*   **Privacy via Three-Tier Strategy:** To ensure my personal data remains separate from the public repository, a "Three-Tier Privacy Strategy" was implemented. 
*   **Safe Sandboxing:** Because the environment features a Bitcoin Regtest node, ethical considerations mandated that the lab operate strictly on a local test network using virtual "play" coins with zero financial value.
*   **Accessibility:** The OER interface adheres to Web Content Accessibility Guidelines (WCAG) and utilizes OU-XML schema validation to ensure screen-reader compatibility.

---

## 6. LO5: Practical Skills and Implementation (The Artefact)

The implementation of nixB demonstrates a synthesis of multiple practical skills, culminating in a robust, deterministic learning environment.

*   **Environment Configuration (`flake.nix`):** The cornerstone of the laboratory is the Nix flake. Rather than providing learners with a lengthy document of installation instructions, the `flake.nix` file explicitly declares all system-level dependencies (e.g., Python 3.12, Bitcoin Core, C-Lightning) in a single, version-controlled file. This guarantees that any user cloning the repository receives an exact, working replica of the learning environment, regardless of whether they are using a Linux workstation or an Apple Silicon MacBook.
*   **Solving Real-World Dependency Failures:** A practical example of this implementation in action is the integration of `LNbits` (a Python application). During development, I discovered that installing LNbits via standard Python tools (`pip`) failed on ARM64 processors because the system lacked the compiled `libsecp256k1` C library. The Python requirement file could not express this system-level dependency. By implementing Nix, I declared `pkgs.secp256k1` at the system level within the flake. This practical skill directly eliminated a critical cross-architecture build failure, proving the value of the artefact.
*   **Building the Application and Content:** A Go web server was implemented to host the interactive course material. Utilizing the `pdf2okf` pipeline, static text was transformed into engaging, interactive Codelab modules that guide the learner step-by-step through the process of building their own reproducible environments.

---

## 7. LO6: Testing and Evaluation

To prove the efficacy of the OER and its infrastructure, systematic testing was conducted across both the content delivery and the technical environment:

*   **Content and Schema Validation:** The Open University uses a specific XML schema for OpenLearn content. To ensure the generated OER materials were structurally sound and free from parsing errors, I implemented the `ou_xml_validator`. Every time the `pdf2okf` pipeline converts a lesson, it is automatically validated against this schema, guaranteeing compatibility with university standards.
*   **Automated Environmental Assertions:** It is not enough to simply declare an environment; its health must be verified. I integrated a Pytest framework that runs background assertions during the build process. This automated testing suite verifies that the Nix environment bootstraps correctly, the Python interpreter is the correct version, and the simulated Bitcoin Regtest node is responsive. 
*   **Evaluative Success:** The ultimate evaluation metric for this project is pedagogical success: can a learner seamlessly access the laboratory? By proving that a user can run a single command (`nix develop`) and successfully instantiate the local learning sandbox without failure or manual intervention, the project successfully bridges the "Reproducibility Gap."

---

## 8. LO7: Reviewing the Project

A critical component of Agile methodology is the retrospective review, which allows for adaptation when reality diverges from the project plan.

*   **The Cloud-to-Local Migration Crisis:** Originally, development was hosted on a cloud-based IDE to ensure a consistent remote environment. However, an unplanned deprecation of this cloud service forced an emergency migration of the entire development stack to local hardware—specifically, a Lenovo Chromebook running an ARM64 processor. While initially perceived as a major setback, this challenge ultimately proved the resilience of the Nix configuration. The environment was reproduced locally without altering a single line of the `flake.nix` core configuration. This crisis was reframed as a real-world case study of the "Reproducibility Gap" and integrated directly into the course curriculum.
*   **Integrating Feedback and Adjusting Tone:** Feedback from TMA01 and TMA02 highlighted a significant gap in communication. The project's language was initially geared towards a niche audience of Nix and Bitcoin specialists. Reviewing this feedback, I recognized the need for an "Academic Translation Layer." I restructured the reports to feature a clear Contents page, simplified terminology, defined jargon on first use, and mapped the narrative directly to the LOs. This pivot ensured the project's technical depth could be understood by a general academic audience.

---

## 9. LO8: Communication and Presentation

Effective software engineering requires effective communication:

*   **Pedagogical Tone:** Shifting from technical jargon to plain, accessible English ensured the report and course content could be understood by a general academic audience.
*   **Structured Organization:** The report is explicitly structured against LO1–LO9. This "Academic Translation Layer" guarantees that the examiner can easily locate and assess the evidence for each grading criterion.

---

## 10. LO9: Reflection and Professional Development

This project has been a transformative exercise in professional growth, shifting my perspective from pure engineering to comprehensive software management:

*   **From Programmer to Project Manager:** Initially, I approached this project strictly as a programmer solving a technical dependency issue. However, managing the nixB project taught me to navigate the broader responsibilities of scope management, resource allocation, and risk mitigation. For example, dropping the visual dashboard feature in Sprint 2 was a difficult but necessary managerial decision to protect the core deliverables.
*   **Audience Awareness and Communication:** Most critically, I learned to accept structural feedback and adapt my communication style. Recognizing that "technical excellence means little if it cannot be communicated" has fundamentally reshaped my approach. By studying the TM354 materials and OpenLearn formats, I learned to translate complex engineering into accessible knowledge. This evolution from specialist to academic generalist will be invaluable in my future professional practice.

---

## 11. Appendices

*   **Appendix 1:** Project Log Extracts  
*   **Appendix 2:** Evidence of the OER Web App (Screenshots and Links)  
*   **Appendix 3:** The `pdf2okf` Tool Source Code
*   **Appendix 4:** Additional Planning and Configuration Artifacts

---

## References

The Open University (2022) *TM354 Software engineering: Block 1 Approaches to software development*, Milton Keynes, The Open University.
