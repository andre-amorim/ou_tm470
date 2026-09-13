# 🧪 The Laboratory (Artefact v2.0)

This directory contains the hands-on laboratory artefact of the **nixB** capstone project. It is designed to demonstrate **Software Reproducibility** (LO5) through a purely functional Infrastructure-as-Code (IaC) model.

---

## 🏛️ Encapsulated Educational Objects

In alignment with the pedagogy of **Dr. Bill Tait**, this laboratory treats system components as discrete, encapsulated objects:
*   **Bitcoin Core (Object A):** The settlement layer providing deterministic monetary state (Regtest mode).
*   **Core Lightning (Object B):** The transport layer providing real-time value exchange (HTLCs).
*   **Nix (The Orchestrator):** The encapsulator ensuring these objects interact within a hermetic, bit-identical environment.
*   **LNbits & Scrum Extension:** Layer 3 application demonstrating off-chain settlements tied to Agile task workflows.

---

## 🚀 Getting Started

The laboratory environment can be operated in two ways:

### 1. Unified Single-Command Bootstrap (Root Flake)
From the root of the monorepo, run:
```bash
nix run
```
This orchestrates the full laboratory (Bitcoin Regtest + Core Lightning + LNbits + OER Codelab) with automated lifecycle management and clean POSIX signal teardown.

### 2. Isolated Laboratory Shell
To explore the isolated laboratory tools interactively:
```bash
nix develop
```
Inside this pure environment, `bitcoind`, `lightningd`, `bitcoin-cli`, and `lightning-cli` are available without requiring root permissions or host system dependencies.


