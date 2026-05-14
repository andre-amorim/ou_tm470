---
jupytext:
  text_representation:
    extension: .md
    format_name: myst
    format_version: 0.13
    jupytext_version: 1.16.0
kernelspec:
  display_name: Python 3 (ipykernel)
  language: python
  name: python3
---

# 2.2 Nix Flakes: The Hermetic Seal



## Deterministic Blueprints


A <!--UnknownTag: Shareders :UnknownTag--> (`flake.nix`) is your master blueprint. It specifies exactly which "Inputs" (sources of code) you are using and what "Outputs" (development shells or applications) you want to build.

<!-- #region tags=["style-box", "alert-success"] -->

### The Power of the Lockfile

When you run a Nix flake, it generates a `flake.lock`. This file contains the exact cryptographic hash of every dependency. If you share your flake with a colleague in 10 years, they will get the exact same bits, byte-for-byte.



