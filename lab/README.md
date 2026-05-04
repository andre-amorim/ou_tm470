# 🧪 The nixB Laboratory (Core Artefact)

This repository contains the technical heart of the **nixB** project: a deterministic, hermetic development environment for financial FOSS.

## 🚀 Purpose
The goal of this laboratory is to demonstrate **100% Software Reproducibility** (LO5). By utilizing the Nix package manager, this environment isolates all system-level dependencies, preventing "Configuration Drift" across different hardware architectures.

## 🛠️ Technical Stack
*   **Infrastructure:** Nix Flakes (Infrastructure as Code)
*   **Target Stack:** Bitcoin Core (Regtest), C-Lightning, LNbits (FastAPI/Vue.js)
*   **Toolchain:** Python (`uv`), SQLite
*   **Validation:** Automated `pytest` infrastructure assertions

## 🏰 Part of the nixB Ecosystem
This repository is one component of a larger sociotechnical system. For the full project context, including the dissertation and Agile logs, see the **[Master Dashboard](https://github.com/andre-amorim/ou_tm470)**.

---
*Developed as part of the OU TM470 Capstone Project.*
