# Didactic Guide: Getting Started with nixB on a Chromebook

**Level:** Introductory / Technical Lab  
**Target Device:** Lenovo IdeaPad Slim 3 (MediaTek Kompanio 520, 8GB RAM)  
**Academic Context:** Resource Identification (LO3) and Infrastructure as Code (LO4)

---

## 1. The Chromebook as a Didactic Laboratory
In the nixB project, we use a Chromebook not just as a laptop, but as a "Reproducibility Laboratory." The limited resources of a Chromebook (MediaTek Kompanio 520, 8GB RAM) are a perfect testbed for **Infrastructure as Code (IaC)**. If we can make a complex, hermetic technical stack run here, we can make it run anywhere.

### 🎓 Learning Outcome Linkage (LO3)
Identifying the hardware and software resources required for your project is a core TM470 objective. By using a Chromebook with a local Nix environment, you demonstrate mastery over your development stack.

---

## 2. Setting Up the Environment

### Step 2.1: Enable Linux (Crostini)
Chromebooks run ChromeOS, but we need a Linux container to run our technical tools.
1. Go to **Settings** -> **Advanced** -> **Developers**.
2. Click **Turn on** next to "Linux development environment."
3. Follow the on-screen instructions. (We recommend allocating at least **60GB** of disk space if possible).

### Step 2.2: Install Nix (The "Hermetic" Foundation)
Instead of installing tools directly into your Linux container (which leads to Configuration Drift), we use the **Nix package manager**.
Run the following command in your terminal:
```bash
sh <(curl -L https://nixos.org/nix/install) --daemon
```
*Note: Restart your terminal after the installation finishes.*

### Step 2.3: Clone the nixB Repository
```bash
git clone https://github.com/andre-amorim/ou_tm470.git ~/ou_tm470
cd ~/ou_tm470
```

---

## 3. Entering the Laboratory

The power of nixB is that you don't need to manually install Python, Bitcoin, or any other tools. Everything is defined in the `flake.nix` file.

Simply run:
```bash
nix develop
```

### What just happened?
Nix analyzed the `flake.nix` file, downloaded the exact, pinned versions of our entire technical stack, and created a temporary shell for you. 
- **Hermetic Isolation:** Your host Chromebook system remains clean.
- **100% Reproducibility:** You are running the exact same environment used by the lead researcher.

---

## 4. Verification Check
Once inside the `nix develop` shell, verify your resources:
```bash
python3 --version  # Should show Python 3.12+
uv --version       # Should show uv 0.5+
bitcoind --version # Should show Bitcoin Core 28+
```

## 5. Reflections for your TM470 Project Log
When you first successfully run `nix develop`, log it in your Scrum board as a **Technical Win**. 
- How does this declarative approach differ from your previous "imperative" setups?
- What are the benefits of using a Chromebook for this particular laboratory?
- Refer to Donella Meadows' (2009) "Mental Model" theory: Does the Nix Flake bridge the gap between your mental model and the machine's state?
