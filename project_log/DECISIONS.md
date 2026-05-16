
- [2026-04-10 07:12] Adopted Pytest as the automated infrastructure testing framework for TM470. Updated Nix flake to include Bitcoin and Lightning binaries. Created a baseline infrastructure test in project_log/tests/test_infrastructure.py.

- [2026-04-10 07:55] Drafted TMA02 report (v0.1) reaching ~1,800 words. Refined project structure based on tutor feedback, including a quantified risk matrix, expanded literature review with PROMPT analysis for 'uv', and a formal stakeholder survey design (Appendix 7). Established automated infrastructure testing using Pytest within a Nix-managed environment.

- [2026-04-22 13:09] BAPTISM: The Nostr Envoy (GMN-NOSTR) is officially named 'struthio'. Its Sovereign Identity is established as 'struthio@nixb.org' for NIP-05 verification. This name links the Nostr Ostrich mascot (Struthio camelus) with the agent's academic role in the TM470 dissertation.

- [2026-04-23 08:59] GREAT FIREWALL: Separated TM470 (Academic) from iDigital Systems (Personal) workflow. Initialized second Scrum board at ~/idigital_systems/scrum/ with custom agentic roles. Updated 'Wake-up Protocol' in SKILL.md to require a dual-track Morning Report starting each session.

- [2026-05-03 07:14] Re-prioritized TMA02 review and submission to 'High' and LNbits integration (012) to 'Low' to align with imminent TMA02 academic cutoff. LNbits is now formally scoped for the TMA03 development phase.

- [2026-05-04 14:43] 2026-05-04: Technical Obstacle - CLI OOM Crash. Encountered a 'JavaScript heap out of memory' error due to a 92MB session history file during `gws auth setup`. Root cause: interactive terminal UI dumps inflating context. Solution: Archived bloated logs and pivoted to surgical CLI commands (`gws auth login`) over interactive wizards. Context management strategy updated to prioritize surgical reads.

- [2026-05-04 15:29] 2026-05-04: Technical Integration Success - GWS CLI. Successfully established programmatic access to Google Workspace via `gws` using the `tts-ou-project-2025` GCP project. Overcame OOM crash by archiving 92MB session bloat. Resolved '401: invalid_client' by correctly mapping Client ID vs Secret and fixed '403: access_denied' by adding `decouk@gmail.com` as a Test User in the Audience/OAuth Consent tab. End-to-end connectivity verified with `gws drive files list`. This capability is critical for the TM470 'Academic Translation' layer.

- [2026-05-05 09:31] SIDE-NOTE (Personal History): Recorded the user's long-term study of 'The Datacenter as a Computer' (v1-v4) and their interaction with Luiz Barroso on Google+. This reflection bridges today's GWS API errors with the inherent complexity of warehouse-scale computing architectures. Filed for future professional reflection.

- [2026-05-05 09:49] PROTOCOL (Google Workspace Sync): To prevent Google Docs conversion errors ('Sorry, an error occurred'), all Markdown files intended for GWS upload must be 'ASCII-clean'. This means replacing all multi-byte Unicode characters (em-dashes, en-dashes, smart quotes) with their standard ASCII equivalents (hyphens, straight quotes) before upload. This protocol is mandatory for both TM470 and iDigital Systems workflows.

- [2026-05-05 10:35] CHECKPOINT (TMA02 Submission): Final unified draft 'TMA02_A5624864_Andre_Amorim_FINAL_FULL.md' (2,701 words) completed and synced to GWS. Diagrams 'project_gantt.png' and 'nixb_course_map_flow.png' generated and uploaded. 'lab/flake.nix' updated with pandoc/tectonic for future PDF workflows. All local files verified on disk. Environment stabilization prioritized due to RAM/OOM concerns.

- [2026-05-05 14:10] SESSION PERSISTENCE (TMA02 Cut-off Day): 1. Section 5 reconstructed using 'Nature (2016)' and 'Stack Overflow (2024)' statistics, removing all synthetic survey data. 2. Appendix 2 and 3 reframed to 'Professional Audit Trail' style, removing administrative/personal details (tutor change, Great Firewall). 3. LNbits Scrum monetization reframed as 'Economic Sustainability for Human Infrastructure' (cf. Eghbal, 2016). 4. User is currently manually finalizing the dissertation in Google Docs. 5. Next step: Review user-provided PDF export using the Academic Writing Coach.

- [2026-05-15 10:15] EXPLORATION: Analyzed microvm.nix for 'Clean Room' simulation of first-time user experience. Identified lack of nested KVM acceleration on Chromebook Crostini as a hardware constraint. Decided to keep microvm.nix as a target for demonstrating cross-platform reproducibility (LO3/LO5) while using Nix native constructs for local testing.

- [2026-05-15 10:30] STRATEGY (The "Why"): Formalized the 10,000-foot rationale for the nixB project. 
  1. Origin: Frustration with "dependency hell" breaking an MVP during TM354 (Software Engineering).
  2. Thesis: Nix solves the dependency problem via a recursive dependency tree, mathematically mirroring Bitcoin's recursive hashing of blocks. 
  3. Case Study: LNbits was chosen because it represents a "real-world" 5-year-old open-source project actively suffering from package-level reproducibility issues (Python packaging chaos), making it the perfect crucible for a Nix/uv didactic laboratory.

- [2026-05-15 10:45] PRODUCT STRATEGY (The Full Stack): Refined the nixB scope to avoid the "Fake Wallet" shortcut. 
  1. Thesis: To understand sovereignty, the student must see the full vertical (Bitcoin Node -> LN Node -> LNbits).
  2. Concept: "Lightning is Bitcoin" - emphasizing that LN shares the underlying security and asset of the base layer.
  3. Concept: "LNbits as CMS" - framing LNbits as a modular engine (WordPress-style) for Bitcoin services, rather than just a wallet.
  4. Decision: Card 013 (OER) must structure the narrative to bridge these layers using Nix as the unifying "glue."

- [2026-05-15 09:23] Defined the ultimate endpoint for the nixB OER lab: installing the LNbits Scrum Board extension (Ref: https://www.youtube.com/watch?v=3S-jMYSds1A). This bridges the technical stack (Nix/Bitcoin) with the philosophical need for FOSS economic sustainability ('Free as in Speech' requires a sustainable model).

- [2026-05-15 11:05] PHILOSOPHICAL SYNTHESIS (The Finite Stack): Connected Luiz Barroso's "No free joules" to Bitcoin's "Controlled Supply."
  1. Concept: Software does not exist in a vacuum; it consumes energy and hardware (entropy).
  2. Concept: Nix reproducibility is the engineering answer to entropy—ensuring that the same energy (joules) always produces the same digital output (bits).
  3. Concept: The nixB OER will teach students that sovereignty requires managing finite resources (bits, joules, and satoshis) with deterministic precision.
