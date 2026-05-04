# Course Prototype: nixB – Mastering Software Reproducibility

**Draft Version:** 0.1 (Experimental)  
**Format:** OpenLearn Didactic Style (Prototype for OU-XML)

## Introduction
Welcome to **nixB**, your laboratory for exploring the science of **Software Reproducibility**. In this course, you will learn why "It works on my machine" is a symptom of technical failure and how to use the **Nix** ecosystem to build deterministic, immutable environments.

### Learning Outcomes (LOs)
By the end of this course, you will be able to:
1.  **Define** software reproducibility and its importance in mission-critical systems.
2.  **Contrast** imperative (Docker/APT) vs. functional (Nix) configuration models.
3.  **Implement** a hermetic development environment using Nix Flakes.
4.  **Compare** local reproducible workflows with "Warehouse-Scale" engineering patterns (Bazel/Blaze).

---

## Section 1: The "Reproducibility Gap"
Most software systems today rely on "Stateful" mutations. When you run `apt-get install` or `pip install`, the outcome depends on the *time* and *state* of the server. This is called **Configuration Drift**.

### Activity 1: The Mental Model
**Think:** Donella Meadows (2009) defines a mental model as a representation of reality. If your `Dockerfile` is a "map" of your server, does it capture every single library, kernel version, and timestamp?
*   **SAQ (Self-Assessment Question):** Why does Google use tools like Bazel for its 2-billion-line codebase?
*   **Feedback:** Google uses Bazel because at that scale, even a 0.01% chance of non-determinism leads to catastrophic build failures.

---

## Section 2: Building the "Didactic Lab"
The **nixB lab** is designed to run on a standard Chromebook. It uses a single **Nix Flake** to bridge the gap between your local terminal and a globally reproducible state.

### Lab Activity: Initializing the nixB environment
1.  Enter the shell: `nix develop`
2.  Verify the path: `which python`
3.  Lock the state: `nix flake update`

---

## Section 3: Assessment – The "Reproducibility Challenge"
Can you recreate this entire environment from scratch on a different machine in under 5 minutes?
- **Task:** Share your `flake.lock` with a peer.
- **Goal:** Verify that their binary hashes match yours exactly.

---
**Next Module:** *OER Community Engagement & OU-XML Basics*
