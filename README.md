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
*   **Contents:** Final Capstone Dissertation ([`TM470_EMA_Dissertation.md`](./dissertation/TM470_EMA_Dissertation.md)) — comprehensive research report, empirical verification, literature analysis (Dolstra, Boettiger, Tait), and sociotechnical evaluation.
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

To experience turnkey reproducibility with zero host system pollution, follow this beginner-friendly replication guide. No prior background in Unix DevOps, containers, or command-line administration is required.

### 📋 Prerequisites: Terminal, Git & Nix

1. **Open your Terminal:**
   * **macOS:** Press `Cmd + Space`, type `Terminal`, and press `Enter`.
   * **Linux:** Press `Ctrl + Alt + T` or launch `Terminal` from your application menu.
   * **Windows 10 / 11:** Launch `Ubuntu` (WSL2) from the Start Menu.

2. **Verify or Install Git:**
   Ensure Git is available by running `git --version`. If not installed:
   * *macOS:* Run `xcode-select --install` in Terminal.
   * *Linux / WSL2:* Run `sudo apt update && sudo apt install -y git`.
   * *Official Site:* [https://git-scm.com/downloads](https://git-scm.com/downloads)

3. **Install Nix (with Flakes enabled):**
   Install the Nix package manager using the official Determinate Systems installer recommended by [nix.dev/install-nix.html](https://nix.dev/install-nix.html):
   ```bash
   curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
   ```
   *Follow the on-screen prompt and restart your Terminal window once complete.*

---

### Step 1: Clone the Repository
```bash
git clone https://github.com/andre-amorim/ou_tm470.git
cd ou_tm470
```

### Step 2: One-Command Ecosystem Bootstrap
In **Terminal 1**, run:
```bash
nix run
```
*(Alternatively: `nix run .#bootstrap`)*

*What happens:* Nix fetches the exact pinned dependencies into the isolated `/nix/store`, boots Bitcoin Core on regtest, matures 101 blocks, initializes Core Lightning, stages LNbits with the custom Scrum extension on port 5000, and starts the OER Codelab on port 8080.

### Step 3: Explore via Web Browser (GUI)
Once the welcome banner appears in Terminal 1, open your browser:
* **📘 OER Codelab Courseware:** [http://localhost:8080](http://localhost:8080)
* **⚡ LNbits & Scrum Board:** [http://localhost:5000/scrum/](http://localhost:5000/scrum/)
* **Scrum Health API:** [http://localhost:5000/scrum/api/v1/health](http://localhost:5000/scrum/api/v1/health)

### Step 4: Run Automated Verification (V&V Test Suite)
In a **second terminal window** (**Terminal 2**):
```bash
cd ou_tm470
./scripts/verify_artefact.sh
```
*(Alternatively: `nix run .#verify`)*

This runs the automated test suite, returning a deterministic **5/5 PASS** verification summary across all service endpoints.

### Step 5: Clean Teardown
In **Terminal 1**, press:
```text
Ctrl + C
```
POSIX signal traps will cleanly shut down all background daemons (`bitcoind`, `lightningd`, `caddy`, `lnbits`) without leaving lingering background processes.

---

## ⚖️ License & Attribution
This project is an Open Educational Resource released under the **Creative Commons Attribution 4.0 International (CC-BY 4.0)** license.
