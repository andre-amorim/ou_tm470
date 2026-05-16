# nixB Laboratory: Unit 3 – The Deployment Object

## 🎯 Learning Objective
In Unit 2, you learned how to enter an environment. In Unit 3, you will learn how to **freeze** that environment into an immutable **Artifact**.

## 🏗️ Step 1: Building the Artifact
Instead of just entering a temporary shell, we are going to tell Nix to build the package defined in our `flake.nix`.

1. Open your terminal in this directory.
2. Run the build command:
   ```bash
   nix build
   ```
3. Observe your directory. A new symlink called `result` has appeared.

## 🔍 Step 2: Inspecting the "Frozen" State
The `result` folder is a pointer to a specific location in the **Nix Store** (`/nix/store/...`). This location is read-only and cryptographically unique.

1. List the contents of the result folder:
   ```bash
   ls -l result/bin/
   ```
2. Run your new artifact:
   ```bash
   ./result/bin/hello-nixb
   ```
3. Observe the output. Notice how the script knows exactly where its "runtime" (Python) is located.

## 🚢 Step 3: The Deployment Concept
You could now move this entire folder to another machine with Nix installed, and it would run perfectly. You don't need to "install" Python on the new machine; the **Deployment Object** already contains everything it needs to function.

---
*Tait's Pedagogical Reflection: How does it feel to have a "frozen" version of your work? Does this change how you think about "releasing" software?*
