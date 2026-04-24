---
summary: Research and Implementation of Nix as Infrastructure as Code (IaC)
status: Done
sprint: 2
points: 5
priority: High
role: Researcher
---

# Card 014: Research and Implementation of Nix as Infrastructure as Code (IaC)

## Description
This task involves a strategic shift from simple "package management" to a full "Environment as Code" architecture. Drawing on TM353 principles regarding IT system success and failure, this card tracks the transition to using Nix as a deterministic model for system state.

### Academic Rationale (TM470/TM353)
- **Mental Models:** Applying Donella Meadows' (2009) theory to software architecture. The 'flake.nix' serves as the definitive model of the system's "reality."
- **Configuration Drift:** Addressing a core TM353 failure mode by using immutable, declarative infrastructure to prevent environment divergence.
- **Comparative Analysis:** Evaluating Nix against industry-standard IaC tools like Terraform and OpenTofu in the context of a local "Didactic Laboratory" on a Chromebook.

### Implementation Tasks
- [x] Research Nix Flake patterns for full-system environment definition.
- [x] Refactor existing configuration to treat the environment as a version-controlled asset.
- [x] Document the "Model Fidelity" benefits for the TM470 dissertation.
- [x] Validate the IaC model by recreating the environment from scratch using a single command.

## Logs
- **2026-04-14:** Initial research initiated following a reflective session on TM353 and mental models. Identified Nix as a superior IaC tool for local reproducibility over cloud-centric tools like Terraform.
- **2026-04-15:** Strategic pivot confirmed. Consolidated TMA02 draft (v2.1) to include IaC literature and empirical proof from Cloud-to-Local migration. Initiated research spike on "Model Fidelity" and environment inheritance.
- **2026-04-16:** Successfully refactored `flake.nix` to a modular "Dendritic" structure using `flake-parts`. Completed academic redraft of IaC rationale with `academic-writer` v2.0. Verified Infrastructure-as-Code fidelity via Cloud-to-Local migration empirical proof. Marked card as DONE.
