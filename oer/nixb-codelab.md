author: Andre Amorim
summary: From build failures to reproducible environments — learn why Nix was built, through a real-world case study.
id: nixb-reproducible-environments
categories: nix, reproducibility, infrastructure
environments: Web
status: Draft
feedback link: https://github.com/andre-amorim/ou_tm470/issues
tags: nix, flakes, bitcoin, lightning, IaC, OER, secp256k1
authors: Andre Amorim

# 🏗️ nixB — A Didactic Laboratory for Software Reproducibility

## Step 1 — Overview
Duration: 0:05:00

Welcome to the nixB Codelab! In this interactive lab, we will explore the foundational problems of software reproducibility. We won't start by learning a tool; instead, we will start by experiencing the *reason* tools like Nix were built in the first place.

### What you'll learn
- The difference between application-level dependency management and system-level reproducibility.
- Why modern infrastructure suffers from configuration drift ("The Jenga Tower").
- How Nix solves these problems using pure functions ("The Blueprint").
- How to write your first `flake.nix` to guarantee a reproducible environment.

### Prerequisites
- [Nix Package Manager](https://nixos.org/download/) installed on your machine (Linux, macOS, or WSL2 on Windows)
- A terminal environment
- Basic understanding of command-line tools

Let's dive in!

## Step 2 — The Failure: Experiencing the Gap
Duration: 0:15:00

> **The Hook:** Let's experience a classic failure. Imagine you're working on a Python project that requires a specific C library (`libsecp256k1`) to compile securely.

If you have Nix installed, we can simulate this environment failure *without* polluting your host system or needing to pre-install Python and pip.

Run this command in your terminal:
```bash
nix shell nixpkgs#python3 nixpkgs#python3Packages.pip --command pip install secp256k1
```

Nix will dynamically spin up a clean shell with Python and `pip` available, and `pip` will attempt to install `secp256k1`. You will immediately encounter this compilation build failure:

```
ERROR: Could not build wheels for secp256k1 [...] fatal error: 'secp256k1.h' file not found
```

Why did this happen? Nix successfully provided a clean Python interpreter and `pip` dynamically, but because we did *not* declare the C library dependencies in our shell, `pip` has no access to the system-level C headers (`secp256k1.h`) needed to compile the C-extension. This illustrates that language-level package managers cannot resolve system-level dependencies.

## Step 3 — The Diagnosis: Why Did It Break?
Duration: 0:15:00

Application-level package managers (`pip`, `npm`, `cargo`) only manage their specific ecosystems. They assume the underlying operating system provides the necessary libraries and compilers.

### The "Jenga Tower" Mental Model
When we use `sudo apt install` or `brew install`, we mutate the global state of our operating system. Every command changes the machine in ways that aren't tracked or easily reversible. Over time, machines diverge, creating configuration drift.

*(See our diagram: `reproducibility_gap_v1.0.mmd`)*

## Step 4 — The Reproducibility Gap
Duration: 0:10:00

This gap between "code works" and "system works" has real-world consequences, from security vulnerabilities to the deprecation of Cloud IDEs.

| Technology | Reproducibility Level | System Isolation |
|------------|----------------------|------------------|
| Virtualenv | Partial (Python only)| None |
| Docker     | High (Image state)   | High (Container) |
| Nix Flakes | Complete (Blueprint) | Perfect |

## Step 5 — The Solution: What is Nix?
Duration: 0:10:00

Nix is a "pure function" package manager. It treats packages like functions: given the exact same inputs (source code, compiler version, dependencies), it always produces the exact same output.

Key principles:
- Deterministic builds
- Complete isolation
- Atomic upgrades and rollbacks

## Step 6 — Nix Flakes: The Blueprint File
Duration: 0:15:00

A `flake.nix` file is the blueprint of our environment. It explicitly declares inputs, outputs, and `devShells`.
The associated `flake.lock` file pins the exact git hashes of every dependency, guaranteeing reproducibility.

## Step 7 — The Fix: Solving the Build Failure with Nix
Duration: 0:20:00

Let's return to our failure from Step 2. We can fix it by wrapping the environment in a `flake.nix` that declares the system-level C library dependency.

```nix
buildInputs = [
  pkgs.secp256k1
];
```

By running `nix develop`, Nix ensures `secp256k1` is available in our path *before* the shell starts.
Our build now succeeds. Same code, different approach!

## Step 8 — Infrastructure as Code with Nix
Duration: 0:15:00

Because Nix can manage everything from a C compiler to an entire operating system, it is the ultimate Infrastructure as Code (IaC) tool. Compare this to tools like Ansible, which rely on the unstable state of the target machine.

## Step 9 — Practical: The Lightning Network Lab
Duration: 0:25:00

Using our `flake.nix` approach, we can orchestrate complex software like Bitcoin Core and Core Lightning.
With a single command, you can spin up a reproducible, self-contained Lightning network node in regtest mode.

## Step 10 — Security Through Reproducibility
Duration: 0:10:00

Reproducible builds ensure that the binary you are running exactly matches the source code. This eliminates an entire class of supply chain attacks, which is critical for financial software like Bitcoin.

## Step 11 — The Complete Workflow
Duration: 0:15:00

Combining Git and Nix Flakes gives us a complete "time-machine". You can check out a commit from 3 years ago, run `nix develop`, and get the exact environment from that day. We also manage this project using ScrumMD!

## Step 12 — Critical Reflection & Portfolio
Duration: 0:30:00

Take a moment to reflect on the difference between imperative dependency management and declarative blueprints.
Please prepare your portfolio submission detailing your findings.

## Step 13 — Congratulations!
Duration: 0:02:00

You've completed the nixB Codelab! You've learned why reproducibility matters, how Nix solves the problem, and how to apply it.
Next up: Explore NixOS or Home Manager!
