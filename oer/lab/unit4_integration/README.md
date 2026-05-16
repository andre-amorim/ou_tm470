# nixB Laboratory: Unit 4 – The Integration Object

## 🎯 Learning Objective
The final objective of this course is to move from **isolated artifacts** to a **functional ecosystem**. You will launch a complex software stack (LNbits + Scrum Extension) using the declarative foundations you've mastered.

## 🏗️ Step 1: Launching the Ecosystem
This directory contains a Flake that integrates multiple dependencies (Python, PostgreSQL, OpenSSL) into a single shell.

1. Open your terminal in this directory.
2. Run the integration command:
   ```bash
   nix develop
   ```
3. Observe how Nix orchestrates the entire stack. You didn't have to install PostgreSQL or OpenSSL manually; they are provided by the blueprint.

## ⚡ Step 2: The Bitcoin Handshake
In a real production environment, this environment would also connect to a Bitcoin node. For this lab, we have a mock service representing the Lightning Network.

1. Verify the extension is ready:
   ```bash
   uv --version
   ```

## 🎓 Conclusion: The Master Programmer
You have now completed the nixB curriculum. You have moved from:
1. **Chaos:** Manual, brittle installations.
2. **Blueprint:** Declarative environment definitions.
3. **Deployment:** Immutable, frozen artifacts.
4. **Integration:** Complex, modular ecosystems.

---
*Tait's Pedagogical Reflection: You are no longer just a student following instructions. You are the architect of your own reproducible world. How will you apply these "Objects" to your next big project?*
