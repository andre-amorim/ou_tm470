# Unit 4: The Integration Object – Mastering the Ecosystem

## 4.1 The Integration Object: Scaling Modular Power
In the previous units, we learned how to define a **Blueprint** (Unit 2) and freeze it into an **Artifact** (Unit 3). But real software doesn't live in isolation. Unit 4 introduces the **Integration Object**—where multiple modular artifacts combine to form a complex, high-stakes system.

Our case study is **LNbits**, a Bitcoin Lightning Network wallet system. LNbits is inherently modular (built on "extensions"). By applying our Nix/uv foundations, we can build extensions that are perfectly reproducible, even when they rely on complex backends like Bitcoin nodes.

## 4.2 The Composition of Objects
Instead of a single "monolithic" application, we think of the system as a **Composition**. 
1.  **Foundation:** The Nix/uv environment we've mastered.
2.  **Backend:** The LNbits core (managed as a Nix flake input).
3.  **Specialist:** Our custom **Scrum Extension**, which adds project management features to the wallet.

By keeping these objects encapsulated, we can upgrade the LNbits core without breaking our Scrum extension, because their dependencies never "leak" into each other.

## 4.3 The Capstone: The Bitcoin-Powered Scrum Board
The final practice object is a **Scrum Extension** for LNbits. This tool allows a team to:
*   Manage a backlog using the ScrumMD standard.
*   "Stake" satoshis (Bitcoin) on tasks to represent priority or commitment.
*   Visualize progress through an integrated board.

Because this is built as an **Integration Object**, the entire developer environment—including the Bitcoin regtest node—is launched with a single command: `nix develop`.

---

## 🛠️ The Hands-on Object: Launching the Ecosystem
In this final laboratory, you will not just run a script; you will launch a modular ecosystem.

### Step 1: The Integration
We will link our local extension into a running LNbits instance using a unified Nix Flake.

### Step 2: The Practical Win
You will move from a "Blank Screen" to a fully functional, Bitcoin-aware development environment in under 60 seconds.

---
### 🧩 Practice Object: The Reproducible Ecosystem
To complete the course, launch the **Unit 4 Laboratory**.

**Activity Instructions:**
1. Navigate to the laboratory folder: `ou_tm470/oer/lab/unit4_integration/`.
2. Run `nix develop` to enter the integrated environment.
3. Launch the LNbits instance and verify the Scrum extension is active.

**Reflective Question:** Now that you've seen a complex system launched from a single blueprint, how has your view of "installation" changed? Is there any part of this stack that isn't reproducible?

---
*Pedagogical Note: Unit 4 represents the "Synthesis" phase of Tait’s framework, where granular concepts are integrated into a meaningful, functional whole.*
