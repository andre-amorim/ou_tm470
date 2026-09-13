# 🏰 nixB Project Ecosystem (Monorepo)

Welcome to the **nixB** project repository. This is the single entry point for the Open University TM470 Computing & IT Capstone Project: **"nixB – A Didactic Laboratory for Software Reproducibility."**

---

## 🧭 The Three-Pillar Pedagogical Architecture

In alignment with Open University computing pedagogy, the project is structured as a progressive learning journey:

```
┌─────────────────────────────────────────────────────────────────────────┐
│                          1. DISSERTATION                                │
│          Theoretical Foundations & Empirical Research (Why It Breaks)    │
│                                  │                                      │
│                                  ▼                                      │
│                             2. OER                                      │
│             Gentle Introduction & Interactive Codelab (Nix Basics)      │
│                                  │                                      │
│                                  ▼                                      │
│                             3. THE LAB                                  │
│         Advanced Hands-On Challenge: Multi-Tier Sovereign Stack         │
│          (Bitcoin Regtest + Core Lightning + LNbits + Scrum App)        │
└─────────────────────────────────────────────────────────────────────────┘
```

### 1. 🎓 [Dissertation](./dissertation/)
*   **Path:** `./dissertation/`
*   **Contents:** Academic research, TMA deliverables, literature analysis (Dolstra, Boettiger, Tait), and sociotechnical architecture models.
*   **Goal:** Theoretical grounding, problem formulation (the Reproducibility Gap), and academic translation.

### 2. 📖 [OER Course Content](./oer/)
*   **Path:** `./oer/`
*   **Contents:** 
    *   `nixb-codelab.md`: Interactive Google Codelab tutorial courseware.
    *   `flake.nix`: Reproducible OER development environment (Caddy + Claat toolchain).
*   **Goal:** A gentle, guided entry point for learners, diagnosing missing dynamic C-libraries (`secp256k1`) and writing declarative Nix shells.

### 3. 🧪 [The Didactic Laboratory](./lab/)
*   **Path:** `./lab/`
*   **Contents:** 
    *   `flake.nix`: Declarative Infrastructure-as-Code (IaC) configuration.
    *   `extensions/scrum/`: Custom TM470 Scrum task management extension for LNbits.
*   **Goal:** The capstone hands-on challenge — deploying a full multi-tier distributed system with 100% bit-for-bit software reproducibility (LO5).

---

## 🚀 Quick-Start Replication for Assessors & Learners

To experience turnkey reproducibility with zero host system pollution:

### Step 1: Clone the Repository
```bash
git clone https://github.com/andre-amorim/ou_tm470.git
cd ou_tm470
```

### Step 2: One-Command Ecosystem Bootstrap
```bash
nix run
```
*Note: This single command provisions all runtimes purely in the Nix store, initializes a private Bitcoin Regtest network, matures the blockchain to 101 blocks, boots Core Lightning, mounts LNbits with the custom Scrum extension, and launches the OER Codelab server on port 8080.*

### Step 3: Run Automated Verification (V&V)
In a second terminal:
```bash
./scripts/verify_artefact.sh
```
This executes the automated test suite, returning a deterministic **5/5 PASS** verification summary across all service endpoints.

### Step 4: Clean Teardown
Press `Ctrl+C` in the running bootstrap terminal. POSIX signal traps will cleanly shut down all background daemons and child processes.

---

## ⚖️ License & Attribution
This project is an Open Educational Resource released under the **Creative Commons Attribution 4.0 International (CC-BY 4.0)** license.
