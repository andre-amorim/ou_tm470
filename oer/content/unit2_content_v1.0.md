# Unit 2: The Practice Object – Constructing the Blueprint

## 2.1 From Chaos to Order: The Hierarchical Mental Model
In Unit 1, we identified the "Jenga Tower" of manual installations. Now, we move to the solution: **The Declarative Hierarchy**. 

Think of your development environment not as a list of actions, but as a set of **Educational Objects** (Tait, 1997). In Unit 2, we introduce two tools that work together to create a perfectly reproducible stack:
1.  **Nix:** The "System Foundation" that manages binary dependencies.
2.  **uv:** The "Project Specialist" that manages Python-specific libraries.

## 2.2 Nix Flakes: The Hermetic Seal
A **Nix Flake** (`flake.nix`) is your master blueprint. It specifies exactly which "Inputs" (sources of code) you are using and what "Outputs" (development shells or applications) you want to build.

> **The Power of the Lockfile:** When you run a Nix flake, it generates a `flake.lock`. This file contains the exact cryptographic hash of every dependency. If you share your flake with a colleague in 10 years, they will get the exact same bits, byte-for-byte.

## 2.3 uv: The Fast Python Handshake
While Nix handles the heavy lifting of system libraries (like `openssl` or `libsqlite3`), we use **uv** to manage our Python packages. 

*   **Speed:** `uv` is written in Rust and is orders of magnitude faster than standard `pip`.
*   **Safety:** It ensures that your Python environment is isolated from your operating system, preventing the "system python" from becoming corrupted.

---

## 🛠️ The Hands-on Object: Your First Flake
In this unit, we will not "install" tools. Instead, we will "declare" them. 

### Step 1: The Declaration
We create a `flake.nix` that asks for a development shell with `python312` and `uv`.

### Step 2: Entering the Laboratory
By running `nix develop`, the system creates a **temporary, isolated environment**. The tools are there, but they haven't "touched" your main system. When you exit the shell, it’s as if they were never there.

---
### 🧩 Practice Object: The Reproducible Hello World
To put these concepts into practice, complete the **Unit 2 Laboratory**.

**Activity Instructions:**
1. Navigate to the laboratory folder: `ou_tm470/oer/lab/unit2_practice/`.
2. Follow the steps in the `README.md` to initialize your first Nix/uv project.
3. Observe how the `flake.lock` and `uv.lock` files act as "hermetic seals" for your dependencies.

**Reflective Question:** If you shared this folder with a teammate, what would they need to install on their system besides Nix?

---
*Pedagogical Note: This unit facilitates "Concept Formation" by moving the learner from a sequence of events to a state of being.*
