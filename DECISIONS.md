
- [2026-04-15 19:29] Consolidated TMA02 draft into v2.1, integrating Meadows' Mental Models and framing Nix as Infrastructure as Code (IaC) to address TM353 Configuration Drift. Completed Sprint 011 (Resources) and initiated Research Spike on Card 014 (Nix as IaC).
- [2026-04-17 05:56] Dropped Card 007 (XSLT UI) per PO directive; shifted focus to Milestone 3 (TMA03) Integration.
- [2026-04-17 06:30] **Reflective Side Note (TM353 Analysis):** Shifted Archivist from synchronous to asynchronous backgrounding. This addresses a performance "failure" on Chromebook (MediaTek Kompanio 520) where heavy vector embeddings (ChromaDB) blocked the user shell. Decision prioritizes User Responsiveness while preserving Technical Integrity (LO9) and Reproducibility of long-term memory.

- [2026-04-24 19:10] [2026-04-24 16:35] Case Study: Paul Sztorc's eCash Fork vs. TM353 Framework. 
- **Analysis:** This controversy demonstrates the TM353 triad (People, Organization, Tech). While the *Tech* (BIP300) is sound, the *Peopleware* (Paul's decision to redistribute Satoshi's coins) creates a political and economic conflict that threatens the *Organization* (the Bitcoin social consensus).
- **Academic Link:** Reflects how 'Peopleware' motivation (economic/altruistic) dictates the success of IT infrastructure. 
- **TM470 Impact:** This serves as a primary example for my OER Didactic Design regarding the 'Human Factor' in decentralized systems. I will monitor the 'fork-dilution' outcome to validate Ben Arc's game theory prediction.

- [2026-04-24 19:48] [2026-04-24 16:55] Technical Decision: Consolidated 'project_log' into the main OU TM470 repository. 
- **Rationale:** While submodules are powerful, they often lead to 'detached HEAD' issues on Chromebook environments. For the TM470 dissertation, a unified 'monorepo' approach for the academic resources folder provides better traceability and simpler backups. 
- **Action:** Removed internal .git from project_log and staged all contents into the main andre-amorim/ou_tm470 repository.
- **Academic Link (LO9):** Demonstrates 'Planning and Organising' by simplifying the data structure for the final End-of-Module Assessment (EMA).

- [2026-05-01 19:10] CORRECTION: Moved tutor email draft '2026-05-01_urgent_tutor_email_options.md' from iDigital to 'ou_tm470/resources/tm002/' to enforce the Great Firewall. While the Diplomat agent is an iDigital asset, the draft's content is strictly academic.

- [2026-05-02 07:13] [2026-05-02] Initiated Card 012 (LNbits Integration). Created 'ou_tm470/nixb-lab/' and initialized Nix flake. Drafted Option B email for Alexis Lansbury regarding tutor change.

- [2026-05-02 08:03] [2026-05-02] FINAL DECISION: Accepted tutor change for TM470. Provided professional conduct assurance as requested by Dr Lansbury. Declined TMA01 re-mark to minimize administrative risk. Wrote to 'ou_tm470/resources/tm002/2026-05-02_tutor_email_final.md'. Strategy: De-escalation and Strategic Alignment.

- [2026-05-02 09:15] [2026-05-02] Recorded detailed user reflection on TMA01 failure. User frames project as 'Didactic Laboratory for Reproducibility' and suspects context-bias (Bitcoin) for the low score. Decision: Keep the score of 43 as a permanent record of academic misalignment and proceed with a tutor change to protect technical integrity.

- [2026-05-02 09:34] [2026-05-02 08:45] FINAL ACTION: Sent tutor change email to Dr. Alexis Lansbury. Rejected TMA01 re-mark to preserve the Grade 43 as evidence of project misalignment. Framed request around 'Software Reproducibility' as a technical priority and noted suspicion of context-bias (Bitcoin/DEI) in evaluation. Apologized for delay due to health issues. State: Awaiting tutor reassignment.

- [2026-05-02 13:56] [2026-05-02] Integrated LWN Article 971973 into the TM470 Literature Review. Strategic Argument: Nix's DAG-based build-time isolation is technically superior to Docker's imperative layering for 100% reproducibility. This supports the 'Artefact Development' section of TMA02 by providing a comparative academic baseline.

- [2026-05-02 15:17] [2026-05-02] Finalized TMA02 Unified Draft (v3.0). Integrated TOP model, LWN governance analysis, and Bitcoin fork logic into a cohesive dissertation narrative. Location: ou_tm470/resources/tm002/TM470_TMA02_Submission_v3.0.md. All appendices (1, 2, 7, 8, 9) consolidated into the main document. State: Submission Ready.

- [2026-05-04 08:00] Implemented the 'academic-writing-coach' Gemini CLI skill, integrating Dr. Andy Stapleton's academic prompting strategies (Breadcrumb method, simulated peer review, Stapleton Protocol). This skill serves as the primary 'Academic Translation Layer' for the OU TM470 project, mapping technical technical implementation (Nix, Bitcoin, Scrum) into scholarly narratives.

- [2026-05-04 08:44] Refactored the TMA02 submission draft (v3.1) to address previous tutor feedback (LO1 technical focus, LO3 resource appendix, Section 3 lifecycle diagram). Integrated the 'Stapleton Protocol' for academic tone and incorporated the 'Cloud-to-Local Migration' as a formal technical case study of software reproducibility. The draft now aligns with both OU academic standards and the project's 'Technology' pillar.
