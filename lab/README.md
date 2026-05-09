# 🧪 The Laboratory (Artefact v2.0)

This directory contains the core technical artefact of the **nixB** project. It is designed to demonstrate **Software Reproducibility** (LO5) through a purely functional Infrastructure as Code (IaC) model.

## 🏛️ Encapsulated Educational Objects
In alignment with the pedagogy of **Dr. Bill Tait**, this laboratory treats the system components as discrete, encapsulated objects:
*   **Bitcoin Core (Object A):** The settlement layer providing deterministic monetary state.
*   **C-Lightning (Object B):** The transport layer providing real-time value exchange.
*   **Nix (The Orchestrator):** The "Encapsulator" that ensures these objects interact within a hermetic, bit-identical environment.

## 🗺️ Archive: Cloud Parity (.idx)
The `./.idx/dev.nix` file is preserved as empirical evidence of the project's **"Black Swan" Migration**. It contains the exact configuration used during the cloud development phase (Google Project IDX), proving that the environment is 100% portable between x86_64 cloud and ARM64 local hardware.

## 🚀 Getting Started
1.  **Enter the Environment:**
    ```bash
    nix develop
    ```
2.  **Initialize the Stack:**
    ```bash
    ./start_lab.sh
    ```
3.  **Manage the Lifecycle:**
    *   **Stop Services:** `./stop_lab.sh`
    *   **Full Reset (Wipe Data):** `./reset_lab.sh`

### What happens?
The `start_lab.sh` script automates the sociotechnical handshake:
*   It boots a private **Regtest** blockchain.
*   It mines 101 blocks to "mature" the network.
*   It synchronizes the C-Lightning node to the Bitcoin backend.

This provides a functional "Didactic Snapshot," ready for the integration of **LNbits** in TMA03.
