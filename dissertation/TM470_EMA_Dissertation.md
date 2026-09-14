---
okf_version: "0.2"
type: AcademicDraft
title: "TM470 EMA Draft v0.1 - NixB: A Didactic Laboratory for Software Reproducibility"
author: "Andre Amorim (PI: A5624864)"
module: "OU TM470 Computing & IT Capstone Project"
tutor: "Dr. Bill Tait"
status: Draft
tags:
  - tm470
  - dissertation
  - ema
  - academic
generated: { by: google/gemini-3.8-flash, at: 2026-09-05T09:20:00Z }
gdoc_url: https://docs.google.com/document/d/1eMQn3YFACjZK3trqyEViJbmTzRcsHAkyEoB7HM0RYGw/edit?usp=drivesdk
---
 Name: Andre de Amorim

PI: A5624864

TM470 Project: Nix₿ – A Didactic Laboratory for Software Reproducibility  
Tutor: Dr. Bill Tait | Word Count: 9,952 words (excluding References) / Target: \~10,000 words

---

### *Dedication*

> *"You cannot teach a man anything; you can only help him find it within himself."*  
> — **Galileo Galilei**

*Dedicated with profound love and gratitude to my mother,*  
*my first and greatest teacher.*

---

## Contents

1. Introduction and Abstract (The Problem and the Deliverable)  
2. Exploring the Problem and Identifying Requirements (Why Software Breaks)  
3. Independent Learning and Technical Research (Learning How to Fix the Problem)  
4. Planning, Resource Management, and Risk (Managing the Project)  
5. Professional and Ethical Practice (Keeping Data Safe, Accessible, and Sustainable)  
6. Practical Skills and Implementation (Building the Educational Laboratory)  
7. Testing and Evaluation (Proving the Laboratory Works)  
8. Reviewing the Project (Agile Sprints, Crises, and Adaptations)  
9. Communication and Presentation (Making the Course Easy to Read)  
10. Reflection and Professional Development (What I Learned)  
11. Appendices  
    * Appendix A: Project Log Extracts (Sprint Logs and Decision Records)  
    * Appendix B: Artefact Replication & Evaluation Guide (Examiner's Quick-Start)

## 1\. Introduction and Abstract

### The Problem: Why Software Reproducibility Matters

The Open University textbook for TM354 (Software Engineering) establishes a fundamental principle for all developers: "We expect a software system to be reliable, in that errors are minimised, as otherwise its users will not be able to perform those tasks that need its support" (The Open University, 2022).

However, modern software engineering suffers from a pervasive challenge to this reliability. In computing science, software reproducibility is defined as the capability of a build and execution system to produce identical, deterministic runtime closures across disparate computational environments without relying on ambient, unversioned host state (Dolstra, 2006). When build configurations fail to specify every transitive toolchain and library cryptographically, systems succumb to the "Reproducibility Gap" (Boettiger, 2015), manifesting in the widespread failure mode known colloquially across the industry as the "it works on my machine" syndrome.

A developer may author code that executes flawlessly within their local development environment, but when transferred to an evaluation server or evaluated by an academic marker, execution fails unpredictably due to latent environmental discrepancies: absent system-level shared libraries (`.so` / `.dylib`), divergent dynamic linkers, undocumented environment variables, or conflicting dependency versions. Empirical software engineering literature confirms the prevalence of this environmental volatility. Studies analyzing large-scale continuous integration systems and software repositories reveal that upwards of 38% of initial software builds fail when executed in fresh, clean-slate environments, with over 60% of these build failures directly attributable to missing transitive toolchains, unpinned language packages, and operating system drift rather than source code bugs (Tso et al., 2020; Hassan et al., 2017). In collaborative free and open-source software (FOSS) ecosystems, this volatility is compounded because components are authored by distributed volunteers without unified workstation standards or contractual commitments to backward compatibility. If a system's environment cannot be deterministically reproduced, its software cannot be reliable.

### The Deliverable: The NixB Didactic Laboratory and OER

To address this challenge, this project delivers two integrated, complementary artefacts that bridge the gap between theoretical software engineering principles and contemporary DevOps practice.

The primary technical deliverable is the NixB Didactic Software Laboratory, an open-source monorepo governed entirely by declarative Nix Flakes (configured in `flake.nix` and locked via `flake.lock`). This artefact provisions a complete, multi-tier software ecosystem within an isolated, unprivileged Linux namespace, bundling Bitcoin Core (`bitcoind` in local regression testing mode), Core Lightning (`lightningd`), and the LNbits web application platform alongside a custom Scrum management extension. By encapsulating heterogeneous C, C++, and Python runtimes without relying on ambient host packages, the artefact demonstrates pure, hermetic execution. For academic assessors, the artefact provides single-command turnkey replication: executing `nix run` boots all background daemons and local web services deterministically without root privileges or host environment pollution.

The primary pedagogical deliverable is the NixB Open Educational Resource (OER), an interactive, web-based didactic courseware initially hosted at `https://oer.nixb.org` in Google Codelab format, with a formal publication pathway for the Open University's OpenLearn Create platform under a Creative Commons Attribution-ShareAlike 4.0 International licence (CC BY-SA 4.0). Designed according to Derek Rowntree's principles of self-instruction and the Open University's OER creation standards, the courseware walks computing students through authentic build failures before guiding them step-by-step in constructing declarative Nix derivations to achieve deterministic software reproducibility.

Figure 1 Shows NixB OER hosted at ‘[https://oer.nixb.org’](https://oer.nixb.org’) in Google Codelab format.

Figure 2 The author plans to release NixB OER on the OpenLearn Create platform in upcoming years.

## 2\. Exploring the Problem and Identifying Requirements

(Addresses LO2: Project Goals; LO4: Gathering Information; LO1: Technical Concepts)

The core challenge this project investigates is formalised in software engineering as the "Reproducibility Gap" (Boettiger, 2015), colloquially known across the IT industry as the "it works on my machine" syndrome—a systemic failure mode where software executes successfully within a local developer's workstation but breaks unpredictably when transferred to an evaluation server, a colleague's laptop, or automated deployment infrastructure. Across contemporary information and communications technology (ICT) engineering, the dominant catalyst driving practitioners to adopt functional, declarative package managers like Nix originates within DevOps culture, Continuous Integration and Continuous Delivery (CI/CD) workflows, and multi-cloud infrastructure operations.

In traditional development operations, automated CI/CD pipelines repeatedly succumb to non-deterministic build anomalies: a pipeline that builds cleanly on a Monday morning unexpectedly fails later in the week because an unpinned transitive library updated silently upstream, or because the cloud runner's base virtual machine inherited an updated dynamic linker. Furthermore, this environmental friction escalates dramatically in cloud environments. Within practitioner communities—such as the NixOS Discourse and DevOps forums—systems engineers frequently express frustration when migrating distributed infrastructure between major hyperscalers such as Amazon Web Services (AWS), Google Cloud Platform (GCP), and Microsoft Azure, or attempting to repatriate workloads from proprietary cloud instances back to local on-premises hardware. Because cloud providers couple deployment to proprietary hypervisor images (such as Amazon Machine Images), cloud-specific kernel modifications, and platform-dependent initialization agents, organizations experience acute vendor lock-in. Migrating workloads across these boundaries routinely triggers subtle, destructive runtime variations, broken dynamic library links, and configuration drift.

While industry practitioners have historically relied on containerization technologies like Docker to bridge this operational gap (Boettiger, 2015), recent empirical research validates that standard container workflows suffer from an inherent "reproducibility illusion". In a large-scale empirical study investigating container build determinism, researchers analyzed 5,298 Docker builds harvested from active GitHub Continuous Integration and Continuous Delivery (CI/CD) pipelines, physically rebuilding each container to compare binary outputs against their historical counterparts (arXiv:2601.12811, 2026). The study scientifically demonstrated that Docker images constructed via conventional pipelines are fundamentally non-deterministic: imperative directives such as `apt-get install` or unpinned language package managers dynamically fetch updated downstream dependencies over time. Consequently, the exact same `Dockerfile` produces divergent image layers, altered dynamic linker bindings, and silent runtime variations when executed across different points in time or between a developer's local workstation and a cloud CI/CD runner.

Conversely, recent metric analyses of purely functional deployment architectures confirm the mathematical rigor of content-addressed package closures. In a comprehensive empirical evaluation of the Nix ecosystem, researchers recorded an unprecedented 99.99% build reproducibility rate across established package environments, proving that pinning complete dependency graphs down to the compiler and system-header level effectively neutralizes environmental configuration drift (arXiv:2604.11398, 2026). However, the study also identified systemic cognitive and architectural barriers that hinder broader adoption: complex domain-specific syntax, steep initial learning curves, and significant disk storage requirements within the `/nix/store`. These empirical findings establish both the theoretical justification for declarative Infrastructure-as-Code and the pedagogical necessity of the NixB didactic laboratory: by designing an accessible Open Educational Resource, this project directly addresses the cognitive friction that prevents computing students and DevOps practitioners from harnessing Nix's deterministic guarantees.

This operational reality directly reflects the core curriculum of the Open University's TM354 module on Software Engineering: high-quality software requires predictable, repeatable processes where the deployment pipeline and system architecture are treated as first-class engineering artefacts rather than ad-hoc administrative procedures (The Open University, 2022). Furthermore, when evaluated through the Systems Failures Approach taught in TM353 (Understanding Success and Failure in IT Systems), deployment breakdowns and environment drift represent classic socio-technical failures caused by fragmented mental models and environmental mismatches between application developers and operations teams (The Open University, 2020). While software developers focus primarily on application logic, operational teams inherit undocumented environmental assumptions. Bridging this operational divide—enabling identical, bit-for-bit execution from a developer's thin client laptop to multi-cloud CI/CD runners—formed my primary motivation for mastering Nix and declarative Infrastructure-as-Code.

To evaluate the practical reality of this problem within an active software ecosystem, this project investigates an empirical case study from my engineering contributions to the LNbits open-source project: GitHub Issue \#3691 (Amorim, 2026). This issue was specifically selected because it exemplifies a hardware-architecture boundary failure that conventional language package managers are structurally unequipped to solve. When deploying LNbits across modern ARM64 computing architectures—such as Apple Silicon workstations or ARM-based Chromebooks—installation aborted due to the absence of pre-compiled binary wheels for the underlying `libsecp256k1` cryptographic C library. While modern Python tools such as `uv` and `pip` successfully resolve pure Python packages, they implicitly delegate native C compilation to the ambient host operating system. In the absence of an explicitly declared C compiler, system headers, and `pkg-config` paths, identical application manifests produce divergent, non-deterministic build failures across different hardware platforms.

Crucially, this real-world diagnostic served as the direct pedagogical inspiration for the NixB Open Educational Resource (OER). Rather than constructing an artificial, contrived scenario for academic evaluation, I translated this genuine upstream production failure into a controlled didactic laboratory. By guiding learners through the tangible symptoms of missing system-level cryptographic toolchains and presenting the declarative Nix Flakes solution, students experience authentic software engineering challenges while observing how purely functional system configuration management (Dolstra and Hemel, 2007\) closes the Reproducibility Gap.

Figure 3 Shows LNbits repository GitHub issue related to Software Reproducibility.

From this empirical investigation of collaborative open-source workflows, cloud migration friction, and DevOps pipeline vulnerabilities, I formulated four explicit operational requirements for the NixB OER deliverable:

First, clarity and academic translation: the courseware must translate dense systems programming and declarative package management concepts into accessible, structured prose suitable for undergraduate computing students, adhering to Rowntree's (1990) principles of self-instruction.

Second, practical interactivity: the laboratory requires a fully encapsulated, unprivileged local sandbox where learners can safely induce, inspect, and resolve build failures without administrative root access or host operating system contamination.

Third, pedagogical structure and accessibility compliance: the OER must satisfy the Open University's OpenLearn Create guidelines and WCAG 2.1 AA accessibility standards, ensuring semantic heading hierarchy, screen-reader compatibility, and device responsiveness.

Fourth, alignment with contemporary industry workflows: the laboratory must demonstrate how declarative environment definitions translate directly into deterministic DevOps pipelines, multi-cloud portability, and reproducible CI/CD workflows, providing tangible professional value for aspiring software engineers.

## 3\. Independent Learning and Technical Research

(Addresses LO8: Independent Learning; LO6: Using Information)

Building a didactic laboratory required exploring domains beyond traditional software development, demanding significant independent research and skill acquisition across three distinct areas.

### 3.1 The Historical Context: From Makefiles to Modern Package Managers

I began my research by investigating how programming languages have historically addressed system complexity. The C and C++ ecosystems were historically fragmented because they lacked a single, official package manager. Developers relied on build managers like Make (Feldman, 1979), where a Makefile acted loosely as a manifest, defining dependency graphs and build rules but suffering from critical limitations. Builds occurred locally in the workspace, and Makefiles could not prevent undeclared dependencies. Dependency resolution through global system directories (such as /usr/bin and /usr/include) made builds inherently machine-dependent, making it difficult to guarantee identical compilation across different hardware.

Modern programming languages address these shortcomings through dedicated package managers, for instance, maven/gradle for Java, npm for JavaScript, pip/uv/poetry for Python, cargo for Rust, and modules for Go. Each of these package managers handle dependency management, build automation, and project lifecycles within their specific domain. However, the scope of these language-level package managers is restricted to their own ecosystem. A project combining a Python backend, a Node.js frontend, C++ libraries and a Rust tool require the developer to manage uv, npm, and cargo independently, with no unified mechanism to guarantee consistency across the entire stack.

A prominent example of a heterogeneous software stack is LNbits, an application designed to manage Bitcoin Lightning Network wallets. To provide necessary context, the base Bitcoin network utilizes a distributed ledger known as a blockchain (Bitcoin data structure), where transactions are permanently recorded in blocks aggregated approximately every ten minutes. The network adheres to a programmatic supply curve that regulates the issuance of bitcoins (Bitcoin Wiki, 2016). Due to fixed block size constraints and the targeted ten-minute generation interval, the base Bitcoin layer is limited to a throughput of approximately seven transactions per second (TPS).

To resolve these throughput limitations, the distributed systems community engineered the Lightning Network (Poon and Dryja, 2016), a Layer 2 peer-to-peer off-chain payment routing protocol. The Lightning Network operates by establishing bidirectional payment channels secured by Hashed Time-Locked Contracts (HTLCs) anchored cryptographically to the underlying blockchain. Rather than broadcasting every state transition to the global peer-to-peer network, transacting parties exchange signed, off-chain state commitments with sub-second finality. The underlying Layer 1 blockchain is accessed solely during channel opening (funding transactions) and channel unilateral closure (cooperative or adversarial settlement). This architecture enables high-frequency, low-latency micro-transactions scaling theoretically to millions of transfers per second without polluting the Layer 1 global consensus state.

Within this decentralized financial infrastructure, LNbits operates as an open-source, modular development platform and node management suite. It decouples a single underlying Lightning daemon (such as Core Lightning or LND) into multi-tenant, partitioned wallets through a decoupled API service. LNbits features an extensible plugin architecture that allows developers to activate specialized services dynamically, including point-of-sale terminal gateways, automated digital paywalls, micro-transaction tipping endpoints, and physical hardware triggers. By abstracting the low-level daemon RPC mechanics, LNbits functions effectively as an application execution environment for Lightning-native software development.

Regarding its backend architecture, LNbits leverages FastAPI, an asynchronous, high-performance web framework engineered for developing application programming interfaces (APIs) utilizing Python 3\. Within the LNbits backend, Create, Read, Update, and Delete (CRUD) operations systematically govern data patterns across two primary architectural layers: Core Accounting and Extensions. Furthermore, LNbits employs an asynchronous database abstraction layer that supports SQLite for lightweight, local configurations and PostgreSQL for production environments.

The LNbits frontend is a responsive Single Page Application (SPA) providing a visual, modular interface for Lightning nodes. It uses Vue 3 for reactive data binding, enabling instant screen updates for balances and invoice statuses. The Quasar Framework provides material design components that scale across desktops, mobile phones, and point-of-sale terminals. Persistent WebSocket connections with the FastAPI backend enable real-time UI reactions, such as immediate settlement confirmations, without inefficient polling.

At the cryptographic level, LNbits depends on a specialized implementation of the secp256k1 elliptic curve, the asymmetric cryptographic standard adopted by Satoshi Nakamoto for Bitcoin transaction signatures. While late-2000s commercial cryptography (such as SSL/TLS) favoured secp256r1 (NIST P-256), selecting secp256k1 was a deliberate, unorthodox architectural decision. The "r" in secp256r1 designates pseudorandom constants generated via unexplained provenance seeds, which attracted skepticism regarding potential cryptographic backdoors. Conversely, the "k" in secp256k1 denotes a Koblitz curve, whose mathematical parameters are derived from deterministic, transparent algebraic equations without arbitrary constants. Initially, early Bitcoin daemons relied on generic OpenSSL routines for ECDSA signatures, which suffered from non-deterministic execution times and vulnerability to timing attacks. To eliminate these vulnerabilities, Bitcoin core engineers authored `libsecp256k1`, a bespoke, low-level C library optimized for constant-time processing, side-channel attack mitigation, and high-throughput signature verification. Crucially, `libsecp256k1` is compiled as a shared C library and forms a foundational, low-level dependency across the Bitcoin and LNbits software ecosystems.

My decision to adopt LNbits as the central case study for software reproducibility research was deliberate: it represents an authentic, polyglot software system coupling Python 3 application runtimes, Vue.js and Node.js frontend assets, asynchronous database drivers, and native C cryptographic libraries. Ensuring the deterministic compilation and cross-architecture reproducibility of such a multi-language stack exposes the exact structural limitations of conventional language-specific package managers, providing an ideal empirical foundation for evaluating declarative Infrastructure-as-Code.

### 3.2 Purely Functional Deployment and the Evolution of Nix Flakes

Through independent study of the seminal literature (Dolstra, de Jonge and Visser, 2004; Dolstra, 2006), I examined how Nix applies mathematical functional programming concepts to system configuration. In conventional operating systems adhering to the Filesystem Hierarchy Standard (FHS), global shared directories such as /usr/bin and /lib function essentially as mutable global variables. Software package installations destructively mutate these shared namespaces, inevitably precipitating the dependency collisions and version incompatibilities colloquially known in software engineering as "dependency hell" (Linux.com, 2008). Nix resolves this fundamental architectural defect by modelling software deployment as a pure function: build outputs are strictly determined by declared inputs, entirely isolated from ambient host side effects. Every component is materialized in the /nix/store as an immutable, read-only directory indexed by a cryptographic hash of its complete dependency graph (Dolstra and Hemel, 2007).

However, a critical review of conventional Nix workflows reveals systemic friction that historically compromised full build determinism. In classical Nix deployments, package resolution relied on dynamic "channels" (nix-channel) that advance over time. This design introduced dependency version drift, wherein identical configuration expressions could yield divergent binaries when evaluated weeks apart due to upstream modifications in the package collection. Furthermore, conventional Nix expressions frequently relied on ambient host environment variables, notably $NIX\_PATH (exemplified by \<nixpkgs\>), inadvertently re-introducing environmental leakage across disparate physical workstations.

To eliminate these failure modes, modern Nix introduced the Flakes architecture, which serves as the primary technical foundation for this capstone project. Flakes enforce pure evaluation mode by default, strictly disabling ambient $NIX\_PATH lookups, prohibiting undeclared network access during builds, and restricting evaluation exclusively to version-controlled files. In addition, the framework standardizes a declarative schema within a root flake.nix manifest, segregating upstream input repositories from uniform output derivations such as packages, development shells, and executable applications. This declarative provenance is cryptographically secured via an auto-generated flake.lock file, which pins the exact Git commit hashes and cryptographic content digests across the entire dependency graph. By anchoring the NixB didactic laboratory in a root flake manifest, the project achieves deterministic, cross-architecture reproducibility across Linux and macOS workstations, eliminating environmental volatility from the learning experience.

Beyond static evaluation purity, a foundational capability of the Nix architecture that revolutionises day-to-day software development, DevOps workflows, and automated CI/CD pipelines is its native support for atomic upgrades and instant rollbacks (Dolstra, 2006). In conventional package managers (such as APT, RPM, or Homebrew), updating a package mutates system binaries in place. If an upgrade is interrupted by a network failure, power outage, or conflicting shared library, the host operating system is left in a corrupted, intermediate state—a common catastrophic failure mode in automated production deployments. Nix circumvents this failure mode by treating every system profile and development environment as an immutable generation. When a developer modifies dependencies or an automated CI pipeline triggers a build, Nix compiles new packages into distinct cryptographic hashes inside the `/nix/store` without touching the active generation. Once compilation succeeds completely, switching to the new environment is executed as a single, atomic POSIX symlink swap. If an updated service fails automated integration tests or exhibits runtime regression in production, the entire system state can be rolled back instantaneously to the preceding generation (`nix-env --rollback` or deploying the previous profile link) in constant time ($\\mathcal{O}(1)$), without re-downloading packages, restoring database snapshots, or repairing broken shared libraries. In continuous delivery pipelines, this capability eliminates deployment downtime, prevents broken build environments from wedging CI/CD runner nodes, and gives software engineers fearless agility when testing experimental upstream dependencies.

### 3.3 Independent Learning in Pedagogical Engineering and Instructional Design

Bridging the gap between complex systems engineering and novice student comprehension required dedicated independent research into pedagogical instructional design, open educational standards, and cognitive accessibility. Technical correctness alone is insufficient to guarantee effective educational transfer; if an educational tool introduces excessive cognitive friction, students disengage before grasping core concepts.

To establish a sound instructional foundation, I investigated Cognitive Load Theory (Sweller, 1988), which distinguishes between intrinsic cognitive load (the inherent complexity of the material), extraneous cognitive load (mental effort wasted on poor instructional presentation or confusing tooling), and germane cognitive load (mental processing dedicated to constructing schema and deep understanding). In conventional DevOps education, students are subjected to overwhelming extraneous cognitive load: they spend hours debugging system library paths, resolving broken dynamic linkers, and wrestling with mismatched compiler toolchains before writing a single line of code. By engineering a declarative Nix sandbox that guarantees immediate, deterministic execution, the NixB laboratory eliminates this extraneous environmental friction, allowing learners to channel their cognitive capacity directly into germane schema acquisition regarding software reproducibility.

Furthermore, I guided the structural authoring of the laboratory through Derek Rowntree's established principles of self-instructional courseware (Rowntree, 1990\) and the Open University's OpenLearn Create guidelines (The Open University, 2016, 2019). Rowntree emphasizes that distance learners require active, dialogue-driven instruction where concepts are introduced progressively, tested through immediate formative self-assessments, and reinforced through measurable behavioural objectives. To implement this, I compiled the educational courseware using the Google Codelabs open-source compiler (`claat`), structuring the material into atomic, time-estimated chapters that guide the student through three pedagogical phases: experiencing an authentic dependency build failure, diagnosing the system-language boundary mismatch, and resolving the failure declaratively using Nix expressions.

Finally, independent study was directed towards international accessibility and open licensing standards. To satisfy the Open University's Equality, Diversity, and Inclusion (EDI) benchmarks, the implemented courseware was authored using the Google Developers Codelabs format (compiled via `claat`) and audited against the Web Content Accessibility Guidelines (WCAG 2.1 AA). This involved implementing high-contrast syntax highlighting for code listings, semantic HTML5 hierarchical structuring for screen-reader navigation, and full keyboard accessibility. While early architectural planning explored compiling directly to the Open University's proprietary OU-XML schema for OpenLearn Create hosting, full institutional deployment on OpenLearn requires multi-stage editorial approvals and external maintainer governance beyond the immediate timeline and unilateral control of this undergraduate capstone project. Consequently, the Google Codelabs format was selected as the canonical, fully implemented delivery vehicle for the assessed NixB OER, with direct OU-XML schema transformation and OpenLearn submission designated as a structured post-capstone publication roadmap. In accordance with open scholarship principles, the entire pedagogical curriculum was structured under the Creative Commons Attribution-ShareAlike 4.0 International licence (CC BY-SA 4.0), ensuring that academic institutions, computing educators, and self-directed learners can freely adopt, localize, and extend the didactic laboratory without legal or proprietary constraints.

## 4\. Planning, Resource Management, and Risk

(Addresses LO9: Planning & Organizing; LO3: Resources & Skills)

### 4.1 Evolution of the Software Process Model: From Conceptual Scrum to OKF Scrumban

#### 4.1.1 The Pedagogical Starting Point (ScrumMD)

The project's development was initially managed using the Agile Scrum framework. To practice what the project teaches, I did not use standard web-based tools. Instead, I adapted ScrumMD (lkingsford, 2025), an open-source Python command-line tool to manage my backlog and sprint logs locally. By utilizing the Scrum framework for project management, a direct parallel is drawn to the laboratory environment where students engage with the LNbits Scrum extension to oversee tasks. This deliberate alignment aims to cultivate familiarity with Scrum, ensuring that a unified framework encompasses both the pedagogical structure of the project and its technical delivery.

Figure 4 shows a custom version of ScrumMD used for project management.

#### 4.1.2 Deconstructing the "Solo Scrum" Fallacy: Roles as Cognitive Perspectives

A common convention in software engineering textbooks suggests that Scrum is strictly designed for multi-person teams (Sommerville, 2016). However, in the context of this project, I treated Scrum not as a rigid headcount mandate, but as a conceptual separation of concerns and functional perspectives:

1. **The Product Owner Perspective:** Defining project requirements, educational value, and academic deliverables.  
2. **The Scrum Master / Process Steward:** Guarding focus, maintaining momentum, and identifying blockers.  
3. **The Engineering Team:** Hands-on software development, system configuration, and automated testing.

In everyday life, individuals navigate multifaceted identities across shifting contexts effortlessly alternating between roles such as student, parent, or athlete. In a similar manner, solo software engineering demands an intentional alternation between distinct cognitive stances: Product Owner, Process Facilitator, and Developer. In this project, this conceptual division was operationalised by pairing with generative and agentic AI tooling (Google Antigravity and Gemini CLI). By delegating specialized implementation sub-tasks to tailored agent personas governed by declarative "skill" definitions (such as Nix packaging and script automation), I could step back into the authoritative role of Lead Architect and Product Owner. Crucially, recognizing that large language models are probabilistic token-predictors that lack empirical awareness of external environments, all AI-assisted contributions were subjected to rigorous human-in-the-loop validation, empirical testing, and alignment with academic criteria before being integrated into the master codebase.

Ultimately, this operational experience with multi-agent toolchains highlighted the expanding horizon of automated software engineering. Rather than treating AI as an isolated code-generation assistant, it inspired an architectural paradigm: orchestrating domain-specialized agents to accelerate prototyping, generate deterministic Infrastructure-as-Code declarations, and execute automated deployment pipelines for complex open-source stacks.

#### 4.1.3 The Ergonomic Pivot: Visual Kanban and the Open Knowledge Format (OKF)

While Scrum provided the conceptual role clarity, managing tasks via a local terminal CLI (scrummd) eventually introduced cognitive and ergonomic friction as implementation intensified. Terminal-bound text cards lacked spatial awareness, and fixed two-week sprint timeboxes artificially restricted fluid, exploratory research spikes.

The decision to transition to **Scrumban** (Ladas, 2009\) was driven by practical workflow optimization and knowledge management. Migrating the backlog to a visual Kanban board (`MainBoard.base`) inside Obsidian provided immediate spatial visibility into project flow, bottlenecks, and dependencies. In accordance with the Open Knowledge Format (OKF v0.2), tasks were re-architected as atomic Markdown concept cards (`AA🧠/mainBoard/Tasks/`), carrying structured YAML frontmatter linking directly to code paths, research notes, and dissertation Learning Outcomes. Explicit Work-In-Progress (WIP) constraints were established in the active column to prevent cognitive fragmentation between simultaneous tasks. Furthermore, tasks developed in collaboration with AI agents were routed through a mandatory "In Review" quality gate, where they were deterministically verified by automated tests (`verify_artefact.sh`) before achieving Definition of Done.

### 4.2 Resource Identification and Capability Audit

In academic software engineering (aligned with TM354 and LO3: Identification of Resources and Skills), the feasibility and reproducibility of a project depend on a rigorous, proactive audit of operational resources. A project investigating software determinism cannot treat its environment as an incidental background detail; the infrastructure itself constitutes a core empirical variable. To address the evaluation criteria established for LO3 and resolve previous feedback regarding resource clarity, this section formalises the physical hardware, software frameworks, specialized developer competencies, and collaborative personnel underpinning the NixB deliverable.

#### 4.2.1 Physical and Virtual Hardware Architecture

The development and verification of the NixB ecosystem was executed across a heterogeneous, dual-node distributed topology:

The primary developer workstation comprised an Apple MacBook Air (Apple Silicon M-series, ARM64 architecture, 16 GB unified memory, running macOS Darwin). This host served as the central compute node, executing high-intensity compilations, managing the primary Git repository, and housing the centralized knowledge vault.

The secondary evaluation platform comprised a Lenovo IdeaPad Slim 3 Chromebook (MediaTek Kompanio 520, ARM64 architecture, 8 GB RAM, 128 GB eMMC storage, running Debian Linux via the ChromeOS Linux subsystem). Operating under constrained CPU and memory limits, this machine functioned as a realistic baseline for student hardware. Demonstrating that the entire NixB didactic laboratory—including Bitcoin Core, Core Lightning, LNbits, and the OER web server—executes deterministically on this low-resource Chromebook provided direct empirical proof of accessibility (LO10) and multi-platform portability (LO11).

Networking between these heterogeneous nodes was maintained via an encrypted Tailscale mesh overlay network, enabling seamless peer-to-peer secure shell (SSH) access and remote verification without exposing experimental daemons to public routing.

#### 4.2.2 Declarative Software Toolchains and Infrastructure

Rather than relying on mutable host package managers (`apt`, `brew`) that introduce environmental drift, all software components were explicitly declared as Infrastructure-as-Code:

1. **Operating System and Container Abstraction:** Nix (version 2.24+) with pure evaluation Flakes enabled, providing purely functional dependency resolution and cryptographic store isolation.  
2. **Pedagogical Delivery and Documentation Server:** Caddy Web Server (version 2.8+) configured as an embedded, zero-configuration HTTP server bound to loopback port 8080, and Google Codelabs Command-Line Tool (`claat`) for compiling pedagogical Markdown into responsive, multi-step web tutorials.  
3. **Application and Accounting Layer:** LNbits (FastAPI / Starlette asynchronous backend, Quasar Framework Vue.js frontend, and Uvicorn ASGI server), pinned to a deterministic commit baseline, utilizing the Astral `uv` toolchain for fast, reproducible Python packaging.  
4. **Decentralised Protocol Daemons:** Bitcoin Core (`bitcoind`, version 27.x) compiled as a headless C++ daemon in private regression testing mode (`regtest`), and Core Lightning (`lightningd`, version 24.x) compiled from C source, executing off-chain payment channel state updates via local Unix domain sockets.  
5. **Knowledge Management and Task Governance:** Obsidian (v1.6+) operating over an Open Knowledge Format (OKF v0.2) plain-text vault, providing local Markdown persistence, bidirectional hyperlinking, and Kanban task scheduling.

#### 4.2.3 Specialized Skills and Competency Matrix

Executing this project required synthesizing competencies across four distinct computer science domains:

First, declarative functional programming was required to construct multi-system Nix Flake derivations, override package dependencies, write pure evaluation shells, and configure encapsulated runner scripts.

Second, low-level POSIX systems programming was essential for designing daemon supervisors (`scripts/run_lab.sh` and `scripts/bootstrap.sh`). This involved implementing asynchronous process polling, managing file descriptors, and structuring POSIX signal traps (`trap cleanup EXIT INT TERM`) to guarantee clean process teardown and eliminate orphan background daemons.

Third, domain knowledge in applied cryptography and distributed consensus was necessary to parameterize the Bitcoin regtest environment, understand elliptic curve mathematics (`libsecp256k1`), and simulate Layer 2 payment channels (HTLCs).

Fourth, pedagogical instructional design was cultivated by studying The Open University's OpenLearn Create standards and Rowntree's principles of self-instruction, translating dense software engineering terminology into accessible, formative student learning units.

#### 4.2.4 Personnel and Advisory Roles

To maintain professional software governance, human and consultative roles were formally allocated: The student acted as Lead Systems Architect, Primary Developer, and Product Owner, maintaining ultimate accountability for architectural design, code authoring, and empirical validation. Dr. Bill Tait (Module Tutor) served as Academic Supervisor and External Quality Consultant, providing formative feedback during TMA milestones, challenging project assumptions, and evaluating alignment with BCS accreditation benchmarks and university marking rubrics.

By systematically documenting hardware baselines (Section 4.2.1), declarative software stacks (Section 4.2.2), competency matrices (Section 4.2.3), and governance roles (Section 4.2.4), this self-contained audit fulfills the criteria for LO3 (Resources and Skills) and guarantees transparent operational repeatability.

---

### 4.3 Risk Management, Threat Modelling, and Mitigation Strategy

Managing an ambitious software engineering project that couples multi-language runtimes, background protocol daemons, and declarative package management introduces significant technical, operational, and pedagogical risks. Aligned with LO9 (Planning and Organization) and TM354 principles of software reliability, a proactive threat modelling and risk management strategy was sustained throughout the project lifecycle. Rather than treating risk management as an administrative afterthought, operational threats were categorized, evaluated by pre-mitigation likelihood and impact, and mitigated through concrete, automated engineering controls.

Technical risks were dominated by cross-architecture compilation incompatibilities and daemon concurrency conflicts. Given the requirement to support both developer workstations (ARM64 Apple Silicon) and student evaluation hardware (ARM64 Chromebooks), native C dependency compilation (Risk R01) represented a critical threat. Missing binary wheels for cryptographic libraries such as `libsecp256k1` frequently cause silent build failures on unconventional architectures. This threat was mitigated by declaring explicit C libraries and compiler dependencies (`pkgs.secp256k1` and `pkgs.pkg-config`) directly inside `flake.nix`, ensuring hermetic compilation inside the isolated Nix store and reducing residual risk to a negligible level. Similarly, daemon lifecycle management (Risk R02) presented severe operational concurrency risks; background daemons such as `bitcoind` and `lightningd` can fail to release loopback RPC sockets upon abrupt shutdown, resulting in orphaned processes and data directory corruption. To resolve this, deterministic POSIX signal trapping (`trap cleanup EXIT INT TERM`) was engineered into the process supervisors (`run_lab.sh` and `bootstrap.sh`), accompanied by automated readiness polling that verifies socket accessibility before downstream services launch.

Operational and pedagogical risks required structured governance and strict architectural discipline. Upstream dependency abandonment and rapid API churn in the Bitcoin and Lightning ecosystem (Risk R03) posed a severe threat to long-term reproducibility. This was neutralized through the immutable cryptographic pinning of `flake.lock`, which locks every upstream dependency to an exact Git commit SHA, completely insulating the didactic laboratory from external repository volatility. Furthermore, solo development projects are notoriously vulnerable to cognitive scope creep (Risk R04), where an engineer becomes engrossed in incidental technical complexities—such as advanced payment routing or wallet UI features—at the expense of primary dissertation deliverables. This was mitigated by establishing a strict architectural firewall between external infrastructure and academic deliverables, governed by weekly sprint retrospectives and continuous alignment with the core research question: evaluating software reproducibility.

Finally, data continuity and pedagogical accessibility were safeguarded against catastrophic loss and cognitive alienation. Hardware failure or unrecoverable repository corruption (Risk R05) was addressed through a decentralized 3-2-1 sovereign backup architecture, synchronizing encrypted Git repositories across local nodes via Tailscale and publishing off-site encrypted GPG archives. Pedagogically, complex systems environments risk alienating students through excessive assumed knowledge or inaccessible documentation (Risk R06). This was mitigated by grounding the laboratory courseware in Rowntree's principles of modular self-instruction, coupling interactive Codelabs with automated verification scripts (`verify_artefact.sh`) and adhering strictly to WCAG 2.1 AA accessibility standards within the implemented Google Developers Codelabs engine, while maintaining structural readiness for future OU-XML schema export. Through this systematic threat modelling, potential points of project failure were transformed into empirical demonstrations of resilient software engineering.

## 5\. Professional and Ethical Practice

(Addresses LO10: LSEPI & EDI)

Professionalism in software engineering extends beyond writing code; it encompasses the safe and ethical handling of data, users, and intellectual property.

### 5.1 Safe Sandboxing and Pedagogical Architecture: Justifying the Multi-Tier Stack

The Bitcoin ecosystem incorporates distinct network environments tailored for production and testing. In precise terminology, capitalization differentiates the concept: "Bitcoin" denotes the network, protocol, and software ecosystem, whereas the lowercase "bitcoin" designates the specific unit of account. The primary production environment, "Mainnet," constitutes the live blockchain where transactions carry irreversible financial consequences secured by Proof-of-Work consensus. For development, "Testnet" and "Signet" provide public sandboxes; however, they remain subject to network confirmation latencies, transaction fees, and external peer variability.

For the NixB educational laboratory, the private "Regtest" (Regression Test) network was deliberately selected. Regtest creates an entirely local, instantaneous blockchain where block generation is triggered on demand, eliminating financial risk and confirmation latency. Implementation is initiated through the Bitcoin daemon: $ bitcoind \-regtest \-daemon.

A central design decision of this capstone project involved determining the operational depth of the laboratory environment. Upstream LNbits provides official Nix packaging (github:lnbits/lnbits) and includes an internal "FakeWallet" engine—a software mock that simulates payment accounting entirely within Python runtime memory without interacting with a live Lightning node or blockchain. Utilizing this mock would have represented a simpler technical pathway. However, selecting that minimal configuration would have severely undermined the overarching **pedagogical mission** of the Open Educational Resource.

The primary objective of NixB is not merely to demonstrate that a single Python web application can be launched, but to prove that software reproducibility can be guaranteed across a complex, multi-tiered, heterogeneous computing architecture. In a production environment, the Lightning Network functions as a Layer 2 protocol cryptographically pegged to the base Bitcoin blockchain through 2-of-2 multisignature funding transactions and Hashed Time-Locked Contracts (HTLCs). Demonstrating this structural relationship is vital for computing students seeking to understand distributed systems.

To make this architecture pedagogically transparent, the NixB laboratory supervisor (run\_lab.sh) deterministically orchestrates three interdependent layers. First, a native C++ Bitcoin Core node is initialized, and 101 regtest blocks are programmatically mined to satisfy the consensus coinbase maturity rule, releasing spendable outputs. Second, a Core Lightning (lightningd) C daemon is spawned, establishing a local JSON-RPC socket connection with the bitcoind node. Third, the LNbits FastAPI application is launched, interfacing with Core Lightning as its funding source and serving the modular Scrum extension to students.

By coordinating C, C++, and Python daemons within a unified, hermetic Nix environment, the laboratory provides learners with a realistic, production-grade mental model. Students observe how decentralized cryptographic contracts interact with web accounting services without risking real financial capital. This architectural depth transforms what could have been a trivial package installation into a rich, didactic laboratory for evaluating deterministic reproducibility in complex distributed systems, directly fulfilling the pedagogical mission of this capstone.

Figure 5 shows LNbits running locally no real fund is used.

### 5.2 Open Licensing and FOSS Sustainability

The NixB project implements a dual-licensing structure designed to maximize pedagogical accessibility while protecting academic and contributor freedom. The educational courseware and didactic materials are published under the Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0) licence (Creative Commons, 2013). This aligns directly with the Open University's OpenLearn Create mandate, granting educators and computing students worldwide the perpetual right to adapt, translate, and remix the laboratory provided appropriate attribution is preserved. Complementarily, the software source code, process automation scripts, and declarative Nix derivations are released under the permissive MIT Licence, enabling unencumbered adoption across industry and academic research.

Beyond legal licensing, the laboratory explicitly tackles the socio-economic sustainability crisis confronting modern open-source software (FOSS). As documented in foundational empirical studies on digital infrastructure (Eghbal, 2016), modern digital society relies heavily on critical open-source libraries maintained by solitary, uncompensated volunteers. This structural imbalance produces the digital tragedy of the commons: corporate hyperscalers extract immense economic value from open software, while foundational maintainers suffer burnout, leading to package abandonment, unpatched security vulnerabilities, and ecosystem collapse—exemplified by pervasive warnings in the JavaScript npm ecosystem declaring that packages are "looking for funds."

To expose computing students to innovative solutions for this crisis, the NixB laboratory embeds the LNbits Scrum extension, a digital project management tool that introduces programmatic task compensation. By integrating Layer 2 Bitcoin Lightning micro-payments directly into the Kanban backlog, the platform enables autonomous task bounty distribution: when an open-source contributor completes an issue and the pull request is marked as "Done," the software triggers an instantaneous, cryptographic micro-settlement directly to the developer's lightning wallet. Incorporating this mechanism into the didactic laboratory prompts students to reflect on novel incentive models for open-source engineering, demonstrating how decentralized programmable money can sustainably fund public digital infrastructure.

Figure 6 Shows LNbits Front End with Scrum extension installed.

Figure 7 Shows LNbits Front end Scrum Extension details.

### 5.3 Multi-Agent AI Assistance and Ethical Software Governance

The authoring and execution of this capstone project actively engaged modern generative artificial intelligence toolchains as a multi-agent cognitive pair programmer. Navigating the integration of autonomous AI agents within academic research demands rigorous ethical governance, transparency, and strict adherence to professional standards, specifically the British Computer Society (BCS) Code of Conduct (BCS, 2022\) and the Open University's Generative AI Academic Policy.

In accordance with the BCS Code of Conduct principles of Professional Competence and Integrity, autonomous AI models were strictly bounded as cognitive catalysts and research aides, maintaining the human student as the sole primary investigator, system architect, and accountable author. To prevent academic malpractice and eliminate generative hallucinations, a deterministic verification protocol was enforced: probabilistic code generated by large language models was never committed directly to the monorepo without empirical validation. Every shell script, Nix derivation, and architecture configuration underwent rigorous automated execution against the Nix build engine and the verification suite (`verify_artefact.sh`). Nix's purely functional build model provided an absolute, mathematical guardrail against AI-generated hallucinations: an AI agent cannot guess a cryptographic store path or synthesize a false dependency, because Nix derivations fail instantly and loudly if inputs do not match their cryptographic hashes.

Furthermore, intellectual property and academic attribution were maintained using Cite Them Right standards. All machine-assisted drafting sessions were tracked in the project's centralized Open Knowledge Format vault (`log.md`) with explicit provenance metadata distinguishing human engineering decisions from machine translations. By establishing this human-in-the-loop validation boundary, the project demonstrates how professional software engineers can ethically leverage generative AI to accelerate complex systems research while upholding unwavering academic integrity and technical accountability.

### 5.4 Accessibility, Inclusion, and Universal Instructional Design

Aligned with the Open University's Equality, Diversity, and Inclusion (EDI) benchmarks and international digital standards, the NixB Open Educational Resource was engineered from first principles to remove physical, cognitive, and sensory barriers to computing education. In traditional computer science laboratories, command-line environments and multi-service server stacks routinely alienate students with neurodivergence or visual impairments due to cryptic terminal errors and poor interface contrast.

To ensure universal accessibility, the NixB courseware interface strictly adheres to the Web Content Accessibility Guidelines (WCAG 2.1 AA) within its implemented Google Developers Codelabs architecture (`claat`), while structurally isolating content to facilitate future ingestion into the Open University's OU-XML schema. The HTML5 interface was audited for full keyboard navigability, enabling learners with mobility limitations to navigate the laboratory without relying on mouse input. High-contrast typography and syntax-highlighted code blocks were calibrated to meet contrast ratios exceeding 4.5:1, ensuring legibility for visually impaired students. Screen-reader compatibility was validated by implementing structural ARIA landmarks, descriptive alt text for architectural schematics, and linear content flows that prevent assistive technology from becoming trapped in nested layout elements. While publishing to the Open University's OpenLearn Create portal using OU-XML remains a future objective, external administrative approval bottlenecks make direct Codelabs hosting the most practical and reproducible solution within the scope of this project.

In addition, the laboratory directly addresses educational equity across heterogeneous socio-economic conditions. Computing curricula and distributed systems courses frequently demand expensive commercial workstations or recurrent monthly subscriptions to cloud Virtual Private Servers (VPS) across hyperscalers like AWS or DigitalOcean, imposing an inequitable financial barrier on self-funded and distance-learning graduate students. To dismantle this economic constraint, the entire NixB ecosystem was deliberately re-architected away from proprietary cloud VPS instances and optimized to run locally on low-resource ARM64 educational hardware: a budget Chromebook equipped with an energy-efficient processor and only 8 GB of RAM. By proving that a sophisticated distributed laboratory—comprising consensus daemons, payment channels, and web platforms—can execute flawlessly and hermetically within an unprivileged sandbox on budget hardware, the project democratizes access to advanced software engineering education, ensuring that economic constraints do not hinder student mastery of software reproducibility.

## 6\. Practical Skills and Implementation (The Artefact)

(Addresses LO11: Practical Problem)

The implementation of NixB OER ‘hands-on laboratory’ demonstrates a synthesis of multiple practical skills, culminating in a robust, deterministic learning environment.

### 6.1 Environment Configuration (flake.nix)

The cornerstone of the laboratory is the root Nix flake configuration (flake.nix). Rather than providing learners or examiners with an error-prone sequence of imperative installation instructions, the declarative flake.nix manifest explicitly encapsulates the entire dependency graph—including Python 3.12, Bitcoin Core (bitcoind), Core Lightning (lightningd), LNbits with its native Scrum extension, and the libsecp256k1 cryptographic C library.

This architecture guarantees that any assessor cloning the project repository (git clone [https://github.com/andre-amorim/ou\\\_tm470.git](https://github.com/andre-amorim/ou\\_tm470.git)) can instantly spin up an identical, working replica across Linux (x86\_64 and aarch64), Apple Silicon macOS (aarch64-darwin), or Windows (via WSL2). As detailed in the replication walkthrough in Appendix B, running nix run invokes the consolidated bootstrap orchestrator (nixb-bootstrap), binding all local services to designated loopback ports without requiring administrative sudo privileges or polluting host system directories.

Figure 8 Shows TM470 project GitHub repository and the flake.nix file.

### 6.2 Solving a Real-World Dependency Failure (LNbits Issue \#3691)

A critical real-world failure illustrating the boundaries of conventional software package management emerged during the installation of LNbits on ARM64 architectures (such as Apple Silicon and Linux ARM workstations). When deploying LNbits using standard Python tooling, the installation failed because the host environment lacked a pre-compiled libsecp256k1 cryptographic library. Standard Python manifests (requirements.txt or pyproject.toml) manage Python wheels, but they possess no semantic capability to declare or provision low-level operating system C libraries. Consequently, executing an identical Python installation manifest produced divergent, non-deterministic outcomes across heterogeneous hardware architectures.

Rather than relying on abstract analogies, this failure was formalised into the didactic core of the NixB laboratory (Step 2 of the courseware). To ensure that every student experiences the failure deterministically—regardless of whether their personal workstation happens to have global C compilers pre-installed—the laboratory utilizes Nix's isolation mechanisms to simulate the environment failure on demand:

nix shell nixpkgs\#uv \--command uv run \--no-binary \--with secp256k1 python \-c "import secp256k1"

Executing this command directs the Astral uv toolchain to compile the cryptographic extension from raw C source. Because the surrounding transient shell lacks declared system-level C headers, the compiler immediately aborts with the following diagnostic failure:

× Failed to build \`secp256k1\`

├─▶ The build backend returned an error

│   'pkg-config' is required to install this package (or 'secp256k1.h' file not found)

This failure demonstrates the structural flaw in application-level package managers: they operate within their own localized runtime boundaries while assuming that host operating systems provide the necessary compilers, linkers, and system libraries.

To resolve this failure deterministically, the NixB laboratory introduces a purely functional environment declaration (flake.nix). Instead of instructing learners to execute imperative, system-mutating commands (such as sudo apt-get install libsecp256k1-dev), the required native build inputs and system libraries are declared hermetically:

{

description \= "Hermetic Python C-Extension Laboratory";

&nbsp;

inputs \= {

nixpkgs.url \\= "github:NixOS/nixpkgs/nixos-unstable";

};

&nbsp;

outputs \= { self, nixpkgs }:

let

&nbsp;

system \\= "aarch64-linux"; \\\# Parameterised across target architectures

&nbsp;

pkgs \\= import nixpkgs { inherit system; };

&nbsp;

in {

&nbsp;

devShells.${system}.default \\= pkgs.mkShell {

&nbsp;

nativeBuildInputs \\\\= \\\\\\\[ pkgs.pkg-config \\\\\\\];

&nbsp;

buildInputs \\\\= \\\\\\\[ pkgs.secp256k1 \\\\\\\];

&nbsp;

packages \\\\= \\\\\\\[ pkgs.uv (pkgs.python311.withPackages (ps: \\\\\\\[\\\\\\\])) \\\\\\\];

&nbsp;

shellHook \\\\= ''

&nbsp;

echo "Hermetic C-Extension Shell Initialized"

&nbsp;

'';

&nbsp;

};

&nbsp;

};

}

When evaluated within this declarative shell (nix develop), Nix dynamically links libsecp256k1 and provisions pkg-config in an isolated directory under /nix/store, completely isolated from global system paths. Re-running the identical execution command yields immediate deterministic success:

nix develop \--command uv run \--no-binary \--with secp256k1 python \-c "import secp256k1; print('Successfully imported secp256k1\!')"

Hermetic C-Extension Shell Initialized

Successfully imported secp256k1\!

This before-and-after implementation provides verifiable proof that declarative system-level configuration eliminates the category of failures caused by unstated environment assumptions, directly satisfying the practical problem-solving requirements of LO1 and LO11.

Figure 9 Shows NixB OER controlled simulation error to simulate a system configuration drift.

### 6.3 Building the Application and Content

A Go web server was implemented to host the interactive course material. The primary objective is to execute both the NixB Open Educational Resource (OER) and the practical ‘hands-on’ laboratories locally, thereby eliminating the requirement for a persistent internet connection. However, this architectural design may be modified in the future to satisfy the requirements for publishing the OER on the OpenLearn Create website.

## 7\. Testing and Evaluation

(Addresses LO11: Practical Problem — testing aspect)

Because the primary objective of the NixB OER project is didactic, testing and evaluation must extend beyond standard software unit tests to assess the pedagogical effectiveness of the Open Educational Resource (OER). A laboratory that compiles perfectly but fails to instruct the student is fundamentally unsuccessful. Therefore, the evaluation strategy is divided into Didactic Evaluation and Technical Validation.

### 7.1 Didactic Evaluation (Testing the Learning Experience)

The ultimate measure of the project's success is whether a target learner can seamlessly bridge the "Reproducibility Gap." As part of the ongoing development toward the final End-of-Module Assessment (EMA), the project aims to align more closely with OpenLearn Create guidelines for interactive learning. A key upcoming milestone on the Scrum board is the implementation of formative assessment via quizzes at the end of NixB OER. Once developed, these quizzes will serve as a built-in evaluation mechanism to test student comprehension and provide immediate feedback, ensuring core concepts are internalized before the student progresses.

Currently, evaluating the student's understanding requires them to experience the problem firsthand. As discussed in Section 6.2, the NixB OER uses an isolated Nix shell to deliberately trigger a controlled compilation failure. The didactic evaluation here is observable: does the student successfully diagnose the missing system-level library and apply the Nix solution to advance? Finally, independent usability testing is planned for the EMA phase and also added to project agile scrum board, recruiting novice developers unfamiliar with Nix to work through the NixB OER. Their feedback will evaluate the clarity of the instructional design, ensuring technical jargon is appropriately translated and pedagogical analogies are effective.

### 7.2 Technical Verification & Validation (Automated Test Suite)

In academic software engineering (aligned with TM354 and LO6: Making Effective Use of Information & Testing), technical evaluation must be repeatable, objective, and verifiable by external examiners. Rather than relying on subjective manual testing, an automated Verification and Validation (V\&V) test harness (scripts/verify\_artefact.sh) was executed against the unified bootstrap environment.

The test suite evaluates five core operational criteria across the encapsulated ecosystem:

1. **OER Documentation Web Server (Port 8080):** Asserts HTTP 200 and validates responsive Codelab HTML output compiled via Google claat.  
2. **LNbits HTTP Server (Port 5000):** Asserts HTTP 200/307 endpoint availability for the FastAPI application service.  
3. **LNbits Scrum Extension Health API:** Validates that the native didactic Scrum extension is active, mounted, and serving JSON task telemetry.  
4. **Bitcoin Core Regtest Blockchain RPC:** Asserts RPC availability and verifies that coinbase output maturity is satisfied (block height \>= 101).  
5. **Core Lightning (CLN) Node RPC:** Asserts JSON-RPC connectivity and validates active node ID registration.

#### Empirical Test Run Output:

\======================================================

🏰 nixB V\&V Automated Verification Suite (EMA Ch. 6\)

Date: Mon Sep  7 08:59:01 AM UTC 2026

Host: Linux penguin 6.6.135-09383-g1140e4f27e24 aarch64 GNU/Linux

\======================================================

Checking OER Web Server (Port 8080)... ✅ PASS

Checking LNbits HTTP Server (Port 5000)... ✅ PASS

Checking LNbits Scrum Extension Health API... ✅ PASS

Checking Bitcoin Core Regtest Block Height \>= 101... ✅ PASS

Checking Core Lightning RPC Active... ✅ PASS

\------------------------------------------------------

Verification Summary: 5 Passed, 0 Failed

\======================================================

🎉 ALL ARTIFACT CRITERIA VERIFIED DETERMINISTICALLY\!

This empirical evidence proves that the final deliverable eliminates configuration drift, providing a turnkey, reproducible laboratory with zero prerequisite configuration beyond a standard Nix installation.

## 8\. Reviewing the Project

(Addresses LO5: Critically Reviewing; LO1: Technical Concepts)

### 8.1 Agile Sprint Cadence and Methodological Evolution

A retrospective evaluation of the project lifecycle demonstrates that maintaining software velocity while authoring an academic dissertation demanded continuous adaptation of our project management methodology. In the initial phases of the capstone (TMA01 through early Sprint 2), project activities were governed through an ad-hoc command-line Scrum toolchain (`scrummd`), maintaining atomic Markdown cards across terminal backlogs. While this framework enforced discipline during initial requirements gathering, it introduced considerable operational friction as the software stack scaled to incorporate multiple protocol daemons and multi-tier courseware assets. Running local CLI commands (`sboard`, `svalid`, `sbl`) created an isolated administrative silo that fragmented developer attention.

Recognising this inefficiency during Sprint 2 retrospectives, I executed a strategic pivot from rigid, ticket-heavy Scrum to a streamlined Scrumban workflow, implemented natively within the centralized Open Knowledge Format (OKF v0.2) vault. Rather than enforcing arbitrary two-week time-boxes that failed to match the asynchronous realities of distance learning and academic research, tasks were managed through continuous Kanban flow. Work-In-Progress (WIP) limits were established across active developmental tracks, segregating core Nix engineering, OER pedagogical authoring, and dissertation academic translation into dedicated, observable lanes. This methodological flexibility ensured that cognitive resources were dynamically reallocated to address critical project bottlenecks without destabilizing overall schedule delivery.

### 8.2 The Cloud-to-Local Migration: An Empirical Crucible for Reproducibility

The most demanding technical test of the project occurred mid-lifecycle during a forced hardware and infrastructure migration. Initial development was conducted primarily within high-compute cloud instances and x86\_64 development environments. However, to evaluate the core hypothesis of software reproducibility under realistic undergraduate constraints, I undertook a complete migration of the entire development ecosystem to a resource-constrained physical thin client: a Lenovo IdeaPad Slim 3 Chromebook powered by an ARM64 MediaTek Kompanio processor with 8 GB of memory.

In conventional software development, migrating a heterogeneous, multi-tier stack (comprising C++ Bitcoin daemons, C Lightning nodes, Python web backends, and Node.js frontend tooling) across disparate CPU architectures and operating systems typically triggers extensive build decay, broken shared library links, and days of configuration debugging. Under Nix Flakes, however, the migration served as a decisive empirical validation of the architecture. Because all dependencies, system compilers, dynamic linkers, and daemon socket parameters were declared immutably inside `flake.nix` and locked via `flake.lock`, cloning the repository onto the ARM64 Chromebook and executing `nix develop` successfully instantiated an identical, fully functional developer shell within minutes. The only necessary adaptation was parameterizing target system architectures (`aarch64-linux` alongside `x86_64-linux` and `aarch64-darwin`) within the flake's output schema. This successful transition confirmed that declarative Infrastructure-as-Code completely eliminates the platform-dependent build rot that plagues traditional software development.

### 8.3 Critical Evaluation of Toolchains and Architectural Limitations

A rigorous critical review requires transparently acknowledging the engineering trade-offs, ergonomic friction, and structural limitations encountered when adopting functional package management in educational environments.

First, the Nix language and ecosystem impose a notoriously steep learning curve. The purely functional, domain-specific Nix language departs radically from the imperative, state-mutating shell scripts familiar to most developers. Concepts such as pure evaluation, store derivations, override patterns, and fixed-output hashes introduce substantial cognitive friction for novices. If deployed in introductory computing curricula without careful scaffolding, the complexity of Nix syntax risks overshadowing the underlying principles of software reproducibility. This realisation directly informed the design of the NixB OER: rather than forcing students to author raw Nix derivations from scratch, the laboratory encapsulates boilerplate syntax, allowing learners to focus strictly on declaring dependencies and observing deterministic execution.

Second, the immutable Nix store (`/nix/store`) imposes non-trivial local disk storage overhead. Because Nix isolates software closures by embedding exact cryptographic dependency graphs, shared libraries are duplicated across distinct package hashes rather than globally shared as in conventional FHS distributions. During active development of the Bitcoin and Lightning stack, the local Nix store grew to exceed 15 gigabytes of disk space. On storage-constrained educational hardware, regular garbage collection cycles (`nix-collect-garbage -d`) were required to prevent disk exhaustion.

Third, documentation fragmentation remains an ongoing challenge within the Nix ecosystem. The ongoing community transition from classical Nix commands (`nix-env`, channels, and default expressions) to modern Flakes has produced conflicting, obsolete tutorials across developer forums. Navigating this fragmented landscape required extensive independent research into the primary C++ source code and official reference manuals, reinforcing the vital necessity of structured, verified educational resources like the NixB OER.

## 9\. Communication and Presentation

(Addresses LO7: Communication)

Effective software engineering practice requires clear, rigorous communication tailored to the expectations and technical background of the target audience. Throughout the drafting of this final dissertation and the authoring of the NixB Open Educational Resource, communication strategies were systematically overhauled in response to evaluative tutor feedback.

In earlier milestones (TMA01 and TMA02), technical descriptions relied heavily on specialized systems jargon, cryptocurrency nomenclature, and colloquial domestic analogies (such as comparing reproducible builds to baking recipes). Feedback from Dr. Bill Tait explicitly highlighted that non-technical analogies obscured the underlying computing principles, while specialized terminology alienated general computing examiners. To resolve this deficiency, I implemented the "Academic Translation Layer" grounded in the PEER paragraph framework (Point, Evidence, Explanation, Relevance). Technical failure modes were systematically translated into established computing science terminology drawn directly from the Open University's TM354 (Software Engineering) and TM353 (Managing IT: Systems and System Failures) curricula. Analogies were excised in favour of precise empirical evidence, such as terminal compiler traces, dependency graph mechanics, and formal citations to peer-reviewed systems literature.

For the NixB Open Educational Resource, communication was calibrated to Derek Rowntree's principles of self-instructional writing. Complex systems mechanics were decomposed into modular, time-estimated chapters featuring clear behavioral learning objectives, active conversational dialogue, and immediate visual feedback. By pairing clear technical explanations with automated verification harnesses, the educational laboratory ensures that computing students internalize abstract concepts through guided, hands-on discovery rather than passive reading.

## 10\. Reflection and Professional Development

(Addresses LO8: Independent Learning — reflective aspect)

The completion of the NixB Honours Capstone project represents a profound milestone in my intellectual and professional maturation as a software engineer, marking a fundamental evolution from a pure programmer to a disciplined systems architect and reflective practitioner.

At the inception of this project, my engineering identity was defined primarily by code authoring: I perceived systems challenges almost exclusively as technical puzzles to be resolved through code syntax and immediate implementation. Managing the full lifecycle of this capstone—from initial problem exploration and Agile governance to empirical validation and formal academic reporting—has cultivated a comprehensive understanding of software engineering as a socio-technical discipline. I have developed critical competencies in proactive risk management, declarative infrastructure design, ethical multi-agent governance, and accessible instructional architecture.

Furthermore, engaging with rigorous academic supervision provided an invaluable lesson in intellectual humility and adaptability. Learning to receive critical feedback constructively, to abandon unhelpful analogies, and to rebuild complex report narratives around standardized module benchmarks has permanently enhanced my professional communication. In contemporary industry practice, software engineers must collaborate with cross-functional stakeholders, executive leadership, and non-specialist clients; the ability to articulate architectural trade-offs with clarity, precision, and academic rigour is as vital to project success as writing robust code.

Finally, the deliberate selection of the Bitcoin, Lightning Network, and LNbits ecosystem provided a rich, challenging case study that validated the universal necessity of declarative reproducibility. While commercial enterprises like Google operate bespoke monorepo build infrastructures like Blaze and Piper at immense scale (Potvin and Levenberg, 2016), the vast majority of software engineering occurs in distributed, open-source communities that cannot afford proprietary infrastructure. By demonstrating that pure determinism can be achieved on accessible, low-cost computing hardware using open declarative tooling, this capstone has not only fulfilled its academic requirements but has also equipped me with foundational systems engineering expertise that will underpin my future career in distributed systems and DevOps engineering.

## 11\. Appendices

### Appendix A: Project Log Extracts (Sprint Logs and Decision Records)

The following are extracts from my custom version of local ScrumMD backlog used to manage the project via the Agile Scrum framework:

#### Card 014: Research and Implementation of Nix as Infrastructure as Code (IaC)

Status: Done; Completed in Sprint 2; Priority: High.

**Description:** This task involves a strategic shift from simple "package management" to a full "Environment as Code" architecture. Drawing on TM353 principles regarding IT system success and failure, this card tracks the transition to using Nix as a deterministic model for system state.

**Logs:**

* 2026-04-14: Initial research initiated following a reflective session on TM353 and mental models. Identified Nix as a superior IaC tool for local reproducibility over cloud-centric tools like Terraform.  
* 2026-04-15: Strategic pivot confirmed. Consolidated TMA02 draft (v2.1) to include IaC literature and empirical proof from Cloud-to-Local migration. Initiated research spike on "Model Fidelity" and environment inheritance.  
* 2026-04-16: Successfully refactored flake.nix to a modular structure using flake-parts. Completed academic redraft of IaC rationale with academic writer v2.0. Verified Infrastructure-as-Code fidelity via Cloud-to-Local migration empirical proof. Marked card as DONE.

---

### Appendix B: Artefact Replication & Evaluation Guide (Examiner's Quick-Start)

This guide provides Open University examiners, assessors, and non-DevOps readers with a comprehensive, self-contained walkthrough to replicate and evaluate the NixB capstone deliverable. The instructions assume no background in Unix DevOps, containerization, or command-line systems administration. Following these steps provisions an identical, bit-for-bit software replica with zero host system pollution.

#### B.1 System Requirements and Host Prerequisites

The NixB laboratory is platform-agnostic and executes across modern desktop environments:
* **Operating Systems Supported:**
  * **Linux:** Any modern distribution (Ubuntu, Debian, Fedora, Arch) on `x86_64` or `aarch64` (ARM64).
  * **macOS:** macOS 12 (Monterey) or newer on Apple Silicon (`M1/M2/M3/M4`) or Intel `x86_64`.
  * **Windows 10 / 11:** Via Windows Subsystem for Linux 2 (WSL2 with Ubuntu).
* **Hardware Profile:** Minimum 4 GB of system RAM (8 GB recommended) and 10 GB of free storage space. An active internet connection is required only during the initial build to fetch cryptographic derivations into the local `/nix/store`.

#### B.2 Preparing Your Environment: Terminal, Git, and Nix

For evaluators accustomed exclusively to Graphical User Interfaces (GUIs), the replication process uses the host operating system's native command-line interface:
* **Opening the Terminal:**
  * *On macOS:* Press `Cmd + Space`, type `Terminal`, and press `Enter`.
  * *On Ubuntu/Linux:* Press `Ctrl + Alt + T` or search for `Terminal` in the applications launcher.
  * *On Windows 11:* Launch `Ubuntu` (WSL2) from the Start Menu.

##### 1. Verify or Install Git
Check if Git is installed by typing:
```bash
git --version
```
If not present, install Git using your operating system's standard mechanism:
* *macOS:* Type `xcode-select --install` in Terminal and click "Install" in the GUI prompt.
* *Ubuntu/Debian / WSL2:* Run `sudo apt update && sudo apt install -y git`.
* *Official Downloads:* Visit the official Git website at [https://git-scm.com/downloads](https://git-scm.com/downloads).

##### 2. Install the Nix Package Manager
Nix provides declarative dependency isolation without modifying host libraries or requiring root administrative privileges during execution. Install Nix following the official Determinate Systems installer recommended in the Nix documentation ([https://nix.dev/install-nix.html](https://nix.dev/install-nix.html)):
```bash
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```
*Note for Evaluators:* The installer will display a clear summary of proposed changes and prompt for confirmation. It automatically enables experimental features (`nix-command` and `flakes`) required by modern Nix projects. Once the installation completes, restart your Terminal window (or run the shell source command displayed on screen) so that the `nix` command is added to your active path. Verify the installation:
```bash
nix --version
```

#### B.3 Downloading the Project (Cloning the Repository)

In your terminal, choose a working directory (such as your home or desktop folder) and clone the public GitHub repository:
```bash
git clone https://github.com/andre-amorim/ou_tm470.git
cd ou_tm470
```
This downloads the complete capstone monorepo containing the academic dissertation, OER courseware source files, custom LNbits Scrum extension, and declarative Infrastructure-as-Code manifests.

#### B.4 Step 1: Launching the Ecosystem (Bootstrap)

To launch the complete multi-tier laboratory, open **Terminal 1**, ensure you are in the `ou_tm470` directory, and run:
```bash
nix run
```
*(Alternatively, you may execute `nix run .#bootstrap`).*

##### What Happens Behind the Scenes:
Unlike traditional manual software installations that require installing Python virtual environments, compiling C libraries, configuring database engines, and starting daemons individually:
1. Nix automatically parses `flake.nix` and downloads the exact, cryptographically pinned versions of Bitcoin Core (`bitcoind`), Core Lightning (`lightningd`), Caddy web server, Python 3.12, and LNbits into the isolated `/nix/store`.
2. A private, zero-cost Bitcoin Regtest network is initialized, and 101 blocks are programmatically mined to satisfy coinbase maturity rules.
3. The Core Lightning (CLN) daemon connects to Bitcoin Core via JSON-RPC.
4. The LNbits accounting platform is instantiated, staging static web assets and mounting the custom TM470 Scrum Board extension.
5. The Google Codelabs Open Educational Resource (OER) courseware is built and served via Caddy.
6. A welcome banner is rendered in the terminal displaying all active service endpoints and port allocations.

*Duration:* The initial run may take 2–5 minutes depending on network bandwidth as Nix populates the local store. Subsequent launches execute in under 10 seconds. Keep Terminal 1 open while exploring the laboratory.

#### B.5 Step 2: Exploring the Deliverable via Browser & GUI

Once the Terminal 1 welcome banner appears, examiners can interact with all components using any standard web browser:

1. **📘 Open Educational Resource (OER Codelab):**
   * **URL:** [http://localhost:8080](http://localhost:8080)
   * **Pedagogical Function:** Step-by-step interactive courseware guiding learners through the "Reproducibility Gap," diagnosing missing dynamic C-libraries (`secp256k1`), and writing declarative Nix shells.
2. **⚡ LNbits Application Platform & Didactic Scrum Board:**
   * **URL:** [http://localhost:5000/scrum/](http://localhost:5000/scrum/)
   * **Pedagogical Function:** The sovereign Layer 3 accounting application running on top of local Bitcoin/Lightning daemons, featuring the custom TM470 Scrum Board extension for agile project tracking and programmatic task compensation.
   * **API Health Check:** Visit [http://localhost:5000/scrum/api/v1/health](http://localhost:5000/scrum/api/v1/health) to inspect JSON service telemetry (`"status":"ok"`).

#### B.6 Step 3: Automated Verification & Validation (V&V Test Suite)

To conduct an objective, examiner-grade assessment of the running artefact (as documented in Section 7.2 of this dissertation):

1. Open a **second terminal window** (**Terminal 2**).
2. Navigate to the repository directory:
   ```bash
   cd ou_tm470
   ```
3. Execute the automated verification suite:
   ```bash
   ./scripts/verify_artefact.sh
   ```
   *(Alternatively, examiners may run `nix run .#verify`).*

##### Expected Empirical Result:
The verification suite polls all local endpoints and RPC sockets, producing a deterministic 5/5 passing summary:
```text
======================================================
 🏰 nixB V&V Automated Verification Suite (EMA Ch. 6)
======================================================
Checking OER Web Server (Port 8080)...           ✅ PASS
Checking LNbits HTTP Server (Port 5000)...        ✅ PASS
Checking LNbits Scrum Extension Health API...     ✅ PASS
Checking Bitcoin Core Regtest Block Height >= 101... ✅ PASS
Checking Core Lightning RPC Active...             ✅ PASS
------------------------------------------------------
 Verification Summary: 5 Passed, 0 Failed
======================================================
🎉 ALL ARTIFACT CRITERIA VERIFIED DETERMINISTICALLY!
```

#### B.7 Step 4: Clean Teardown and Resource Cleanup

When evaluation is complete, the entire multi-tier stack can be cleanly dismantled:
1. Return to **Terminal 1** and press:
   ```text
   Ctrl + C
   ```
2. POSIX signal traps (`trap cleanup EXIT INT TERM`) immediately intercept the signal, cleanly shutting down `bitcoind`, `lightningd`, `caddy`, and `lnbits` without leaving lingering background processes.
3. **Removing Local Runtime Data:** To reset the laboratory to an uninitialized state, delete the isolated data directory:
   ```bash
   rm -rf .data
   ```
4. **Zero Host Residue:** Because all binaries and libraries reside strictly inside the sandboxed `/nix/store`, removing the `ou_tm470` directory leaves the host operating system in its pristine original state.

## References

arXiv:2601.12811 (2026) 'Docker Does Not Guarantee Reproducibility: A Large-Scale Empirical Study of Container Build Determinism in CI/CD Workflows', *arXiv preprint arXiv:2601.12811* [cs.SE]. Available at: https://arxiv.org/abs/2601.12811 (Accessed: 14 September 2026).

arXiv:2604.11398 (2026) 'Nix: A Solution With Problems — An Empirical Metric Analysis of Functional Package Reproducibility and Usability', *arXiv preprint arXiv:2604.11398* [cs.SE]. Available at: https://arxiv.org/abs/2604.11398 (Accessed: 14 September 2026).

Dolstra, E. and Hemel. A. (2007). Purely functional system configuration management. In Proceedings of the 11th USENIX workshop on Hot topics in operating systems (HOTOS'07). USENIX Association, USA, Article 13, 1–6. Available at: [https://dl-acm-org.libezproxy.open.ac.uk/doi/10.5555/1361397.1361410](https://dl-acm-org.libezproxy.open.ac.uk/doi/10.5555/1361397.1361410) (Accessed 14 July 2026).

Dolstra, E. (2006) The Purely Functional Software Deployment Model. PhD thesis. Utrecht University.

Dolstra, E., de Jonge, M. and Visser, E. (2004) 'Nix: A Safe and Policy-Free System for Software Deployment', in Proceedings of the 18th Large Installation System Administration Conference (LISA '04), Atlanta, GA, pp. 79–92.

Open Learning. (2019). Creating open educational resources. \[online\] Available at: [https://www.open.edu/openlearn/education-development/creating-open-educational-resources/](https://www.open.edu/openlearn/education-development/creating-open-educational-resources/) (Accessed 11 July 2026).

Amorim, A. (2026) 'LNbits build failure on ARM64: missing secp256k1 system library', GitHub Issue \#3691, LNbits repository. Available at: [https://github.com/lnbits/lnbits/issues/3691](https://github.com/lnbits/lnbits/issues/3691) (Accessed: 12 July 2026).

Bitcoin.it. (2016). Controlled supply \- Bitcoin Wiki. \[online\] Available at: [https://en.bitcoin.it/wiki/Controlled\_supply](https://en.bitcoin.it/wiki/Controlled_supply) (Accessed 13 July 2026).

lkingsford (2025). GitHub \- lkingsford/scrummd. \[online\] GitHub. Available at: [https://github.com/lkingsford/scrummd](https://github.com/lkingsford/scrummd) (Accessed 13 July 2026).

Linux.com. (2008). Nix fixes dependency hell on all Linux distributions \- Linux.com. \[online\] Available at: [https://www.linux.com/news/nix-fixes-dependency-hell-all-linux-distributions/](https://www.linux.com/news/nix-fixes-dependency-hell-all-linux-distributions/) \[Accessed 14 July 2026\].

NixOS Foundation (2024) Nix Reference Manual. Available at: [https://nixos.org/manual/nix/stable/](https://nixos.org/manual/nix/stable/) (Accessed: 12 July 2026).

Open.edu. (2024). OLCreate: Quick-start guide OLCreate. \[online\] Available at: [https://www.open.edu/openlearncreate/mod/book/view.php?id=234459](https://www.open.edu/openlearncreate/mod/book/view.php?id=234459) (Accessed 14 July 2026).

Boettiger, C. (2015) 'An introduction to Docker for reproducible research', ACM SIGOPS Operating Systems Review, 49(1), pp. 71–79.

Creative Commons (2013) Attribution-ShareAlike 4.0 International (CC BY-SA 4.0). Available at: [https://creativecommons.org/licenses/by-sa/4.0/](https://creativecommons.org/licenses/by-sa/4.0/) (Accessed: 12 July 2026).

Feldman, S.I. (1979) 'Make — A Program for Maintaining Computer Programs', Software: Practice and Experience, 9(4), pp. 255–265.

Google (2024) Codelab Formatting Guide. Available at: [https://github.com/googlecodelabs/tools/blob/main/FORMAT-GUIDE.md](https://github.com/googlecodelabs/tools/blob/main/FORMAT-GUIDE.md) (Accessed: 12 July 2026).

Potvin, R. and Levenberg, J. (2016) 'Why Google Stores Billions of Lines of Code in a Single Repository', Communications of the ACM, 59(7), pp. 78–87.

Rowntree, D. (1990) Teaching Through Self-Instruction: How to Develop Open Learning Materials. Rev. edn. London: Kogan Page.

Tait, B. (1997) 'Object Orientation in Educational Software', Innovations in Education and Training International, 34(3), pp. 167–173.

The Open University (2016) Creating Open Educational Resources: A Quick-Start Guide. Available at: [https://www.open.edu/openlearncreate/](https://www.open.edu/openlearncreate/) (Accessed: 12 July 2026).

BCS (2022) Code of Conduct for BCS Members. Swindon: British Computer Society. Available at: [https://www.bcs.org/membership-and-registrations/become-a-member/bcs-code-of-conduct/](https://www.bcs.org/membership-and-registrations/become-a-member/bcs-code-of-conduct/) (Accessed: 14 July 2026).

Eghbal, N. (2016) Roads and Bridges: The Unseen Infrastructure of Our Digital World. New York: Ford Foundation.

Poon, J. and Dryja, T. (2016) 'The Bitcoin Lightning Network: Scalable Off-Chain Instant Payments'. Available at: [https://lightning.network/lightning-network-paper.pdf](https://lightning.network/lightning-network-paper.pdf) (Accessed: 10 July 2026).

Sweller, J. (1988) 'Cognitive Technology: Some Procedures for Facilitating Learning and Problem Solving in Mathematics and Science', Journal of Educational Psychology, 80(4), pp. 257–266.

The Open University (2020) TM353 Managing IT: Systems and System Failures, Milton Keynes, The Open University.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;