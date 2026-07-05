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

# 4.4 The Verification Loop



## Trust but Verify


Reproducibility is not a pinky-promise; it is a mathematical certainty that must be verified. The final stage of our laboratory is the <!--UnknownTag: Shareders :UnknownTag-->.

Using <!--UnknownTag: Emphasis :UnknownTag--> within our Nix environment, we run automated infrastructure tests. These tests check if the Bitcoin node is reachable, if the Lightning channels are open, and if the LNbits API is responding correctly. If the environment is truly reproducible, these tests will pass on any machine that builds the blueprint.

This is the difference between a "Tutorial" and a "Laboratory"—the ability to empirically prove that the system state matches the intended model.

