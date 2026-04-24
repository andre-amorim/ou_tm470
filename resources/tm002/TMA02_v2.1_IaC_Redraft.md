# Redraft: Infrastructure as Code (IaC) and the Philosophy of Deterministic Environments

## 3.3 Theoretical Framework: Nix as Infrastructure as Code (IaC)

A core systemic failure mode identified in TM353 is **Configuration Drift**, where the operational state of an IT system diverges from its documented or intended design over time. Traditionally, software environments have been managed through imperative, stateful modifications (e.g., manual package installations or sequential shell scripts). This approach creates a significant "Mental Model" gap; as Meadows (2009) argues, our mental maps of complex systems are often flawed representations of reality. In software engineering, this manifests when a developer's mental model (the assumption that an environment is correctly configured) fails to align with the actual, often corrupted, state of the hardware.

The nixB project mitigates this gap by redefining the local development environment through the lens of **Infrastructure as Code (IaC)**. By utilizing the Nix functional package manager, the environment is transformed from a stateful entity into a **deterministic declarative model**. The `flake.nix` file serves as the definitive "map" of the system's reality. Unlike imperative tools (e.g., `pip` or `npm`), which modify a pre-existing environment, Nix constructs the environment as a pure function of its inputs (Dolstra, 2006). This ensures that the mental model (the code) and the real-world state (the environment) are identical, effectively eliminating configuration drift by design.

## 8. Development of Artefact: Empirical Validation of the IaC Model

### 8.1 Empirical Proof: The Cloud-to-Local Migration Logic
The efficacy of the nixB declarative model was empirically validated on 13 April 2026 during a critical infrastructure migration. Due to the external discontinuation of the Google Project IDX cloud service, the entire research laboratory was migrated to a local Lenovo Chromebook. In a traditional imperative setup, such a migration would typically involve significant manual reconfiguration and the potential for "dependency hell" (Smith, 2025). 

However, because the nixB infrastructure was managed as version-controlled code, the migration required zero modifications to the project's core logic. The execution of a single command—`nix develop`—was sufficient to recreate the entire hermetic stack (Nix, `uv`, Bitcoin Regtest, and Lightning Network) on a fundamentally different host operating system. This event serves as primary evidence of **100% software reproducibility** and fulfills the project's requirement for architectural analysis and design (LO5).

### 8.2 Strategic Orchestration and System Success
The implementation of automated infrastructure testing using `pytest` further reinforces this IaC model. By asserting the presence and version-fidelity of system binaries within the PATH, the project moves from "Technical Tinkering" to **Strategic Orchestration**. This shift directly addresses the TM353 criteria for IT system success: the provision of a reliable, visible, and verifiable environment. The use of hermetic environments ensures that the didactic goals of the nixB laboratory are not compromised by external system updates, providing a stable foundation for OER learners (LO9).

---
**Academic Refinement Note (v2.0):** This redraft eliminates first-person narratives in favour of analytical synthesis, linking technical milestones directly to established theory and module learning outcomes.
