# nixB Laboratory: Unit 2 – The Reproducible Hello World

## 🎯 Learning Objective
By the end of this activity, you will have moved from an **Imperative** installation (doing actions) to a **Declarative** environment (sharing a blueprint).

## 🛠️ Step 1: Entering the Laboratory
This directory contains a `flake.nix` file. This is your **Declarative Blueprint**. It tells Nix to fetch exactly what is needed for this project.

1. Open your terminal in this directory.
2. Run the following command:
   ```bash
   nix develop
   ```
3. Observe the output. Nix is now constructing your environment. If the tools are not on your machine, it will download them to the secure `/nix/store/` without affecting your system files.

## 🐍 Step 2: Initialising your Python Project
Now that you have `uv` active, let's create a managed Python project.

1. Run the initialisation command:
   ```bash
   uv init
   ```
2. Look at the files created. You now have a `pyproject.toml`. This is the Python-specific part of your blueprint.

## 📦 Step 3: Adding a Dependency
Let's add a library called `requests` to our blueprint.

1. Run:
   ```bash
   uv add requests
   ```
2. Open `pyproject.toml`. You will see `requests` listed under dependencies.
3. Look for a new file called `uv.lock`. This file "pins" the exact version of `requests` and its own dependencies.

## 🏗️ Step 4: The Reproducibility Proof
1. Run the sample script:
   ```bash
   uv run hello.py
   ```
   *(Note: You might need to create a simple hello.py that imports requests)*

2. **The Reflection:** If you gave this folder to a friend with Nix installed, they could run `nix develop` and `uv run hello.py` and get the **exact same result** as you, regardless of whether they are on a Mac, a Chromebook, or a PC.

---
*Tait's Pedagogical Reflection: Does the environment feel like a "tool" or an "object" now? How does having a blueprint change your confidence in your code?*
