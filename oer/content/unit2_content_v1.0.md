---
id: nixB-U2
course_code: nixB
course_title: nixB – A Didactic Laboratory for Software Reproducibility
author: Andre Amorim
summary: Unit 2 of nixB OER course
---

# Unit 2: The Practice Object – Constructing the Blueprint

## 2.1 From Chaos to Order: The Hierarchical Mental Model

### Thinking in Objects
In Unit 1, we identified the "Jenga Tower" of manual installations. Now, we move to the solution: [The Declarative Hierarchy]{glossary}.

Think of your development environment not as a list of actions, but as a set of [Educational Objects]{glossary} (Tait, 1997). In Unit 2, we introduce two tools that work together to create a perfectly reproducible stack:

*   [Nix]{glossary}: The "System Foundation" that manages binary dependencies.
*   [uv]{glossary}: The "Project Specialist" that manages Python-specific libraries.

## 2.2 Nix Flakes: The Hermetic Seal

### Deterministic Blueprints
A [Nix Flake]{glossary} (`flake.nix`) is your master blueprint. It specifies exactly which "Inputs" (sources of code) you are using and what "Outputs" (development shells or applications) you want to build.

> [!KEYPOINT]
> ### The Power of the Lockfile
> When you run a Nix flake, it generates a `flake.lock`. This file contains the exact cryptographic hash of every dependency. If you share your flake with a colleague in 10 years, they will get the exact same bits, byte-for-byte.

## 2.3 uv: The Fast Python Handshake

### Isolated Environments
While Nix handles the heavy lifting of system libraries (like `openssl` or `libsqlite3`), we use [uv]{glossary} to manage our Python packages.

![Figure 1: The Declarative Hierarchy (Nix and uv)](declarative_hierarchy_blueprint.png "A 3D isometric stack showing the host system foundation, the Nix Flake layer, and the nested uv Python environment.")

## Practice Activity: The Reproducible Hello World

### Hands-on Laboratory

```{activity} Hands-on Laboratory
To put these concepts into practice, complete the [Unit 2 Laboratory]{glossary} located in the course resources folder.

1. Navigate to the laboratory folder: `ou_tm470/oer/lab/unit2_practice/`.
2. Follow the steps in the `README.md` to initialize your first Nix/uv project.
3. Observe how the `flake.lock` and `uv.lock` files act as "hermetic seals" for your dependencies.
```

```{saq} Self-Assessment Question 1
What is the primary difference between `flake.nix` and `flake.lock`?
---answer---
`flake.nix` is the [blueprint]{glossary} (specifying where to find dependencies and what the environment should contain), while `flake.lock` is the [hermetic seal]{glossary} (capturing the exact cryptographic hashes and versions of those dependencies to ensure bit-identical reproduction across machines).
```

*Pedagogical Note: This unit facilitates "Concept Formation" by moving the learner from a sequence of events to a state of being.*
