# TMA01: Project Proposal

**nixB – A Didactic Laboratory for Software Reproducibility**

**Name:** Andre Amorim

**PI:** A5624864

**Assignment:** TMA01

**Contents Page**

1. Project Goals, Description, Scope and Impact
2. Account of Related Literature, including Review of Sources
3. Resources, Planning, Risks and Lifecycle Review
4. Project Work Analysing and Solving a Practical Problem
5. LSEPI and EDI Concerns
6. Personal Development, Review and Reflection
7. References
8. Bibliography
9. Epilogue
10. Appendix 1 – Project Ethics Checklist
11. Appendix 2 – Project Log Extracts
12. Appendix 3 – Baseline Nix Configuration
13. Appendix 4 – Environment Validation Scripts
14. Appendix 5 – Mermaid Source Code
15. Appendix 6 - Declaration of Generative AI Use

### 1. Project Goals, Description, Scope and Impact

**Project Description and Problem:**

The question of "What factors contribute to the success or failure of systems?" is central to IT project management. As explored by Ramage et al. (2024) in TM353 Study Block 1, Part 2: Learning from failure, case studies of large-scale UK IT projects demonstrate that every IT system is fundamentally a *sociotechnical system*. Failure rarely stems from technical bugs alone; it emerges from a breakdown within the TOP model: Technology, Organisations, and People.

This sociotechnical fragility is acutely visible in the modern Free and Open-Source Software (FOSS) ecosystem. As a developer, I frequently encounter this fragility firsthand: libraries update at breakneck speeds, dependencies are abruptly abandoned by burnt-out maintainers, and terminal warnings constantly plead for package funding. The voluntary nature of FOSS makes the "people" and "organizational" pillars highly volatile.

Because of this volatility, the "technology" pillar must be incredibly robust. Yet, modern software engineering faces a significant "reproducibility gap". While application-level package managers (like Python's uv, Node's npm, Rust’s cargo) have dramatically improved immediate dependency resolution, they often fail to isolate underlying system-level dependencies. Consequently, software that builds successfully on one developer's machine today (e.g., Apple Silicon) may fail on another's tomorrow (e.g., Linux), or fail entirely a year from now when a sub-dependency is abandoned. In high-trust, mission-critical environments such as financial FOSS (e.g., the Bitcoin Lightning Network project "LNbits"), this lack of system-level isolation creates significant barriers to community contribution, reliable deployment, and critical security auditing.

**Goals and Impact:**

The core objective of the **nixB project** is to address this technological fragility by creating an Open Educational Resource (OER) that acts as a "Didactic Laboratory". The project will empirically demonstrate how to achieve 100% system and application reproducibility by wrapping a modern uv Python workflow inside a hermetic Nix shell. The core concepts of this laboratory are readily applicable to other ventures, such as scientific data science projects and any others that require assurance of a specific software version's operability.

By utilizing LNbits as a baseline evaluation subject, the project’s primary impact will be providing a practical, accessible guide for students and developers. Ultimately, by securing the "Technology" aspect of reproducibility through Nix, this project aims to alleviate the burden on the "People" and "Organisations" within the open-source community, making FOSS more resilient to the inevitable churn of the sociotechnical landscape.

**Scope (MoSCoW Prioritization):**

* **Must-Have:** A comparative analysis demonstrating a standard environment failure versus a successful Nix-managed build; a flake.nix configuration isolating uv and LNbits dependencies.
* **Should-Have:** Comprehensive documentation formatted as an OER, specifically structured using the OpenLearn OU-XML schema to ensure semantic compatibility with Open University Open Learn publishing workflows.
* **Could-Have:** A web-based UI for the didactic laboratory; automated Extensible Stylesheet Language Transformations (XSLT) to render the OU-XML into interactive Markdown.
* **Won't-Have:** Upstream modifications to the core LNbits application logic or user-data collection.

### 2. Account of Related Literature, including Review of Sources

To establish the foundational context for hermetic builds, this project draws upon several key resources, evaluated using the PROMPT criteria:

* **Eelco Dolstra’s Thesis on Nix:** This academic literature provides the theoretical foundation for pure, functional package management and cryptographic hashing of dependencies.
* **Official Nix and uv Documentation:** Primary sources for syntactic implementation and best practices.
* **Industry Articles (e.g., DevZero, Wasser):** These sources validate the current industry trend moving from containerization (Docker) toward functional environments (Nix) for developer velocity.
* **GitHub Issue Trackers (LNbits):** Acting as empirical evidence of the "reproducibility gap" in the wild, demonstrating real-world user struggles with system-level build failures.
* **OpenLearn Curriculum Assets:** Official Open University documentation providing the technical standards for structuring the final OER output via OU-XML.

### 3. Resources, Planning, Risks and Lifecycle Review

**Lifecycle:**

The project will employ an **Incremental Software Development Lifecycle**.

* *Phase 1:* Establish the baseline by documenting a standard environment build failure.
* *Phase 2:* Implement the Nix solution incrementally, mapping the dependencies into a functional flake.nix shell.

**Resources and Planning:**

Planning will be managed using Agile Scrum/Kanban principles (Backlog, In Progress, Done) to manage the strict TM470 deadlines. The primary resources required are a local development machine, open-source documentation, and Git for version control.

* **Documentation Standards:** The project will utilize the *Working With OpenLearn Curriculum Assets* documentation to inform the OU-XML structuring and XSLT transformations of the final OER deliverables.

**Risk Register:**

![](data:image/png;base64...)

*(Figure 1: Flowchart mapping technical nixB project risks to specific mitigation strategies adapted from TM353 risk management principles. See Appendix 5 for diagram source code mapping identified technical risks to mitigation* *strategies).*

### 4. Project Work Analyzing and Solving a Practical Problem

This project synthesizes and extends concepts from core Open University modules to solve the practical problem of software environment degradation:

**Application of TM354 (Software Engineering):**

* **Requirements Engineering:** Applying MoSCoW prioritization to strictly bound the system context, preventing scope creep into the LNbits application logic.
* **Software Evaluation:** Designing a deterministic comparative analysis to verify the effectiveness of Nix over standalone application package managers.

**Application of TM353 (IT Systems: Planning for Success):**

* **Risk Management:** Proactively identifying technical project risks and mapping them visually to concrete mitigation strategies to ensure project delivery.
* **System Boundaries:** Defining clear boundaries between the build environment (the focus of this project) and the application execution logic.

### 5. LSEPI and EDI Concerns

* **Legal & IP:** The project relies entirely on open-source software. All third-party components (Nix, uv, LNbits, Mermaid, OpenLearn schemas) will be strictly attributed. The final nixB repository and OER will be released under a Creative Commons (CC-BY) license to facilitate academic reuse.
* **Social & Ethical (UK-GDPR):** The project does not involve human participants or collect personal data. The focus is purely on software environments.
* **Professional (BCS Code of Conduct):** To minimize harm and ensure safe testing of financial FOSS, all LNbits evaluations will occur strictly on Regtest/Testnet environments, ensuring no real funds are at risk.
* **EDI & Accessibility:** As the final output is a didactic OER, accessibility guidelines will be prioritized for documentation. Recent experiences navigating confusing UI systems have highlighted the critical importance of clear, accessible design in educational tools.

*(Note: The approved Project Ethics Checklist outcome email is attached in Appendix 1).*

### 6. Personal Development, Review and Reflection

Starting this module has required a rapid transition from technical tinkering to structured academic project management. Initially, I found it challenging to constrain the scope of the project. Applying the MoSCoW technique from TM354 was instrumental in focusing my efforts on the "Must-Have" technical validations rather than getting distracted by "Could-Have" features.

Additionally, navigating the formal ethics approval process was a practical exercise in understanding institutional compliance. Tracking these steps in my project log has helped me recognize my tendency to jump into coding rather than planning. To manage complex technical roadblocks during this planning phase, I successfully deployed a multi-agent system using gemini-cli, utilizing specialized AI profiles to debug diagram syntax. This reinforced the value of treating modern AI not just as a search engine, but as an integrated development tool within a structured workflow.

**7. References**

* Dolstra, E. (2006) *The Purely Functional Software Deployment Model*. PhD thesis. Utrecht University. Available at: <https://edolstra.github.io/pubs/phd-thesis.pdf> (Accessed: 2 March 2026).
* Dolstra, E. and Löh, A. (2008) ‘NixOS: a purely functional Linux distribution’, in Proceedings of the 13th ACM SIGPLAN international conference on Functional programming. New York, NY: ACM, pp. 367–378. Available at: <https://dl.acm.org/doi/10.1145/1411204.1411255> (Accessed: 2 March 2026).
* Smith, W. (2025) Nix Flakes in practice: the complete guide for developers and engineers. HiTeX Press.
* Ramage, M., Murray, N., Fortune, J. and Ali, M. (2024) 'Study Block 1, Part 2: Learning from failure', TM353: IT systems: planning for success. Available at: <https://learn2.open.ac.uk/mod/oucontent/coursedownloadsresource.php?id=2310963> (Accessed: 2 March 2026).
* Hirst, T. (2022) *Working With OU-XML — Working With OpenLearn Curriculum Assets*. Available at: <https://innovationoutside.github.io/openlearnCurriculumAssets/working-with-ouxml.html> (Accessed: 2 March 2026).
* LNbits (2026) *LNbits GitHub Repository Issues*. Available at: <https://github.com/lnbits/lnbits/issues/3691> (Accessed: 02 March 2026).
* Froehlich, M. et al. (2022) “Implementation and Evaluation of a Point-Of-Sale Payment System Using Bitcoin Lightning,” in Nordic Human-Computer Interaction Conference. New York, NY, USA: ACM, pp. 1–12. Available at: <https://doi.org/10.1145/3546155.3546700>. (Accessed: 02 March 2026).
* Trizna, M., Wasser, L. and Nicholson, D. (2021) “pyOpenSci: Open and reproducible research, powered by Python,” Biodiversity Information Science and Standards, 5. Available at: <https://doi.org/10.3897/biss.5.75688>. (Accessed: 2 March 2026).
* Khalid, T. (2025) Nix vs. Docker: An In-Depth Comparison, Devzero.io. DevZero. Available at: <https://www.devzero.io/blog/nix-vs-docker> (Accessed: 2 March 2026).

**8. Bibliography**

* Van Wirdum, A. (2024) The Genesis Book. Available at: <https://thegenesisbook.com/> (Accessed: 29 June 2025).
* Lowery, J. P. (2023) Softwar: A Novel Theory on Power Projection and the National Strategic Significance of Bitcoin. Available at: <https://dspace.mit.edu/handle/1721.1/153030> (Accessed: 29 September 2025).
* Ammous, S., 2018. The bitcoin standard: the decentralized alternative to central banking. John Wiley & Sons.

**9. Epilogue**

The nixB Didactic Laboratory has successfully completed its initial incremental phase. This phase established the project's foundational scope, risk management strategy, and ethical guidelines. Technically, the project achieved the deployment of a hermetic, Nix-managed financial infrastructure, specifically Bitcoin Regtest and Core Lightning. This was initially implemented using Google Firebase Studio as the Integrated Development Environment (IDE) due to its web-based nature, which eliminates the need for local installation (requiring only a web browser and a Google account), and its pre-installed Nix environment. The subsequent phase, TMA02, will centre upon integrating the LNbits FastAPI Python/VueJS stack into this environment. Concurrently, the research component will involve a comparative analysis of preferred development suggestions from developers utilizing the Python uv package manager versus the alternative method employing Nix, as referenced in the official documentation. Furthermore, the process will transition from manual validation to automated testing scripts, alongside continued research into developing the interactive Markdown Open Educational Resource (OER) documentation.

.

*Word Count: 1,076 words*

**Appendix 1 – Project Ethics Checklist**

*Appendix 1 – Project Ethics Checklist*

*(As requested in the approval outcome, a screenshot of the official email is provided below, followed by the plain text version for accessibility and document* *searchability).*

*![](data:image/png;base64...)*

*Full Text of Approval Email:*

*From: Tony Cox (Tutor)*

*To: Andre de Amorim (Student)*

*Date: 27/02/2026*

*Dear Andre de Amorim (Student),*

*Thank you for submitting your project ethics checklist.*

*I have reviewed the ethical approach to your project with the following outcome: Approved*

*My comments are below and have been attached to your submission record:*

*Details of your submission are included below. Please take a screen shot of this email or save as a PDF to upload as Appendix 1 to your TMA01.*

*We expect your project scope to develop and evolve as you work through the module. If the response to any of the questions you have answered in this checklist changes, you must submit a new ethics checklist.*

*If you have any queries, please get in touch with me.*

**Appendix 2 – Project Log Extracts**

**Date:** 23 February 2026

**Activity:** Defined project scope using MoSCoW; drafted initial ethics checklist.

**Reflection:** Realized that evaluating the whole LNbits ecosystem was too large. Restricted the scope to the build/dependency phase only to maintain achievable system boundaries.

**Date:** 27 February 2026

**Activity:** Navigated OU SharePoint portal to submit the formal ethics checklist; generated Risk Register diagrams.

**Reflections:** The UI was confusing on a Chromebook, which reinforced my commitment to making my own OER documentation accessible. When my initial Mermaid diagram code failed, I then wrote a specialized gemini-cli agent to debug the syntax, demonstrating effective use of modern multi-agent development tools to overcome minor technical blockers.

**Appendix 3 – Baseline Infrastructure Setup & OER Commands**

As this project involves developing a complete Didactic Laboratory, the full source code is version-controlled and hosted externally. The complete repository can be viewed here: GitHub Repository: <https://github.com/andre-amorim/nixb-lab-001.git>

Below is the critical dev.nix configuration code relevant to TMA01. This demonstrates the Nix-based environment provisioning within Google Firebase Studio (former Project IDX), which automatically establishes the hermetic financial infrastructure (Bitcoin Regtest and Core Lightning) prior to introducing the LNbits FastAPI Python environment.

Core Environment Configuration (Extract from dev.nix)

{ pkgs, ... }: {

channel = "stable-24.05";

packages = [

pkgs.bitcoin

pkgs.clightning

pkgs.python311

pkgs.python311Packages.websockets

];

env = {

BITCOIN\_DATA\_DIR = "/tmp/bitcoin-regtest";

CLN\_DATA\_DIR = "/tmp/cln-regtest";

};

**Appendix 4 – Environment Validation Strategy**

Currently, validation of the nixb-lab-001 environment is performed manually via the command line to ensure the regtest daemons are running correctly before the LNbits backend is introduced. As the project progresses toward TMA02, these verifications will be codified into automated tests.

Current Manual Verification Commands (Didactic OER Instructions):

# 1. Verify the isolated Bitcoin chain has generated the initial 101 blocks

bitcoin-cli -regtest -datadir=/tmp/bitcoin-regtest getblockchaininfo

# 2. Verify the Core Lightning node is active and communicating with the local chain

lightning-cli --network=regtest --lightning-dir=/tmp/cln-regtest getinfo

**Appendix 5 – Mermaid Diagram Source Code**

flowchart LR

%% TMA01 Risk Register

subgraph Risks [Identified Risks]

direction TB

R1(Steep Nix Learning Curve)

R2(uv Version Incompatibility)

R3(LNbits Upstream Changes)

R4(Data/Work Loss)

end

subgraph Mitigations [Mitigation Strategies]

direction TB

M1[Allocate buffer week & rely strictly on nix.dev]

M2[Pin exact versions and hashes in flake.nix]

M3[Fork repository & lock evaluation to specific commit hash]

M4[Utilize strict Git version control & daily remote pushes]

end

%% Mappings with Likelihood and Impact

R1 == "Likelihood: High<br/>Impact: Medium" ==> M1

R2 == "Likelihood: Medium<br/>Impact: High" ==> M2

R3 == "Likelihood: Medium<br/>Impact: Medium" ==> M3

R4 == "Likelihood: Low<br/>Impact: High" ==> M4

%% Styling

style Risks fill:#f9f2f4,stroke:#d9534f,stroke-width:2px

style Mitigations fill:#dff0d8,stroke:#5cb85c,stroke-width:2px

**Appendix 6 – Declaration of Generative AI Use**

In accordance with the Open University Category 2 guidelines for GenAI, I am declaring the use of Google Gemini to assist with the proofreading and stylistic refinement of this TMA01 proposal.

I provided my original project notes, GitHub code, and personal motivations regarding the FOSS ecosystem to the tool.

I used the tool to elevate my informal writing into a proofread academic style. For example, I provided my thoughts on the TM353 TOP model and prompted the tool to "proofread and refine this paragraph, polishing my text to a more academic tone. Don’t modify the core ideas I explained about my project, such as my motivations, etc."

I utilized the Gemini AI tool to correct the syntax of my Mermaid code, which resulted in the functional diagram presented in Figure 1. Specifically, I employed a customized Gemini-CLI tool with the command “/init” to generate the initial [GEMINI.md](http://gemini.md). Subsequently, I adapted it for Mermaid tasks and used it to retrieve the current official Mermaid documentation, allowing me to rectify the outdated syntax I was employing. This process significantly reduced the time required compared to traditional methods of information retrieval, such as consulting a Stack Overflow forum.

The entire technical infrastructure, including the Nix configuration code and project directions, represents my own original work. This work is developed based on my understanding of the examples provided in the book, *Nix Flakes in practice: the complete guide for developers and engineers*.

I have reviewed and edited all AI outputs to ensure they accurately reflect my independent project plan.