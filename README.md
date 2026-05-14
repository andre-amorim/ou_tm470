# 🏰 nixB Project Ecosystem (Monorepo)

Welcome to the **nixB** project repository. This is the single entry point for the OU TM470 Capstone Project: **"nixB – A Didactic Laboratory for Software Reproducibility."**

## 🗺️ Navigation Map
The project is architected as a "Sociotechnical Ecosystem" consolidated into this monorepo for maximum traceability and professional orchestration.

### 1. 🎓 [Dissertation](./dissertation/)
*   **Path:** `./dissertation/`
*   **Contents:** 
    *   `resources/`: Iterative drafts (TMA01, TMA02, etc.).
    *   `diagrams/`: Technical architecture and sociotechnical (TOP) models.
*   **Goal:** Academic translation and reflective narrative.

### 2. 📖 [OER Course Content](./oer/)
*   **Path:** `./oer/`
*   **Contents:** 
    *   `ou-xml/`: The official OU-XML source files for Units 1 and 2.
    *   `preview.sh`: Live-preview pipeline (XML → MyST Markdown → HTML).
    *   `flake.nix`: Reproducible OER development environment.
*   **Goal:** Delivering the "nixB" Open Educational Resource using a Nix-managed toolchain.

### 3. 🧪 [The Didactic Laboratory](./lab/)
*   **Path:** `./lab/`
*   **Contents:** 
    *   `flake.nix`: Declarative Infrastructure as Code (IaC).
    *   `lnbits-core/`: Bitcoin/Lightning stack integrated via Nix.
*   **Goal:** Empirical proof of 100% software reproducibility (LO5).

### 4. 🔄 [Agile Orchestration](./project_log/)
*   **Path:** `./project_log/`
*   **Contents:** 
    *   `scrum/`: Machine-readable backlog and sprint logs using `scrummd`.
*   **Goal:** Evidence of project management and reflective practice (LO9).

---

## 🛠️ Getting Started for Tutors
To experience the project's reproducibility firsthand:
1.  **Clone the Repo:** `git clone --recursive https://github.com/andre-amorim/ou_tm470.git`
2.  **Activate Nix:** Run `nix develop` inside the `./lab/` or `./project_log/` folders.
3.  **Validate:** The environments will automatically provision all dependencies with zero host pollution.

## ⚖️ License & Attribution
This project is an Open Educational Resource (OER) released under the **Creative Commons Attribution (CC-BY)** license.
