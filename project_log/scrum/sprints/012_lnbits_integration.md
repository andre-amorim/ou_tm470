---
summary: Integrate LNbits Backend with Nix and uv
status: In Progress
sprint: 3
points: 8
priority: Low
role: Developer
---

# Card 012: Integrate LNbits Backend with Nix and uv

## Description
This card focuses on the technical core of the nixB "Didactic Laboratory" evaluation. It involves creating a deterministic environment for the LNbits FastAPI backend, wrapping it in a Nix flake with the `uv` package manager.

### Technical Goals
- **Hermetic Build:** Ensure all system-level dependencies for LNbits are managed by Nix.
- **uv Integration:** Use `uv` for Python-level dependencies within the Nix shell.
- **Fork Baseline:** Pin LNbits to a static commit for the didactic laboratory to prevent upstream churn.
- **Verification:** Successfully launch the LNbits backend on a regtest Bitcoin/CLN network.

### Implementation Tasks
- [x] Create a dedicated directory for the LNbits lab (`ou_tm470/nixb-lab/`).
- [x] Initialize a new Nix flake using the `nix-mcp` tools.
- [ ] Add the LNbits fork as a Git submodule or a static reference.
- [ ] Configure `uv` to use the Nix-provided Python interpreter.
- [ ] Verify the LNbits backend launch.

## Logs
- **2026-04-20:** Initiated LNbits integration as part of Milestone 3 (TMA03). Created Card 012 and established it as the primary technical focus.
- **2026-04-22:** STRATEGIC PIVOT. Paused LNbits integration to prioritize the **Agentic AI Team** evolution.
- **2026-04-23:** ACADEMIC SEPARATION. Restored LNbits as the primary technical focus for TM470. Agentic AI Team evolution is moved to the private iDigital Systems board to maintain academic focus on the Didactic Laboratory.
- **2026-05-02:** Resumed technical work. Created `ou_tm470/nixb-lab/` and initialized a deterministic Nix flake environment with `uv` and Python 3.12. Drafted the tutor email (Option B) for academic alignment.
