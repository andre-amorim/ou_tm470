# Unit 3: The Deployment Object – From Blueprint to Reality

## 3.1 The Artifact: Beyond "It Runs on My Machine"
In Unit 2, we mastered the **Blueprint** (Nix Flakes). But a blueprint is just instructions. In Unit 3, we focus on the **Deployment Object**—the actual realization of those instructions into a self-contained, immutable **Artifact**.

In traditional development, "deploying" often means manually moving files and hoping the server's environment matches yours. In the nixB model, the Deployment is an **Encapsulated Object**. It contains the code, the libraries, and the exact system dependencies required to run, all bundled together.

## 3.2 Immutability: The "Frozen" State
The core characteristic of a Deployment Object is **Immutability**. Once an artifact is built, it should never change. 
*   If you need to update a library, you don't "patch" the deployment. 
*   Instead, you update the **Blueprint** (Unit 2) and generate a *new* **Deployment Object** (Unit 3).

This ensures that "Version 1.0.1" is exactly the same today as it will be in five years, because it is defined by the cryptographic hashes we saw in Unit 2.

## 3.3 The Delivery Mechanism: Nix Bundles and Containers
How do we move these objects? 
1.  **Nix Build:** Compiles your project into a specific, isolated path in the Nix Store.
2.  **Nix Bundle:** Allows you to take that store path and bundle it into a single executable that can run on *any* Linux machine, even if they don't have Nix installed.
3.  **Declarative Containers:** Nix can automatically generate a Docker-compatible image that is much smaller and more secure than traditional Dockerfiles, because it only includes the absolute minimum required dependencies.

---

## 🛠️ The Hands-on Object: Shipping the Blueprint
In this unit's laboratory, we will turn our "Hello World" from Unit 2 into a distributable artifact.

### Step 1: The Build
We will use `nix build` to create a permanent, verified version of our project.

### Step 2: Verification
We will verify that the artifact works in isolation, proving that the **Deployment Object** is truly self-contained.

---
### 🧩 Practice Object: The Immutable Artifact
To put these concepts into practice, complete the **Unit 3 Laboratory**.

**Activity Instructions:**
1. Navigate to the laboratory folder: `ou_tm470/oer/lab/unit3_deployment/`.
2. Follow the steps in the `README.md` to "freeze" your project into a Nix artifact.
3. Attempt to run the artifact directly from the Nix store.

**Reflective Question:** If a bug is found in a deployed artifact, why is it safer to replace the entire object rather than "fixing" the existing one in place?

---
*Pedagogical Note: Unit 3 moves the learner from "Concept Formation" to "Concept Application," realizing the theory as a tangible, immutable result.*
