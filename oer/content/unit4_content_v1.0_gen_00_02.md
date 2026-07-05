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

# 4.2 The Composition of Objects



## Modular Synergy


Instead of a "monolithic" application, we think of the system as a __Composition__:

- <!--UnknownTag: Shareders :UnknownTag--> The Nix/uv environment.
- <!--UnknownTag: Shareders :UnknownTag--> The LNbits core (managed as a Nix input).
- <!--UnknownTag: Shareders :UnknownTag--> Our custom Scrum Extension.
This encapsulation ensures that changes to the core do not break the extension, as dependencies never "leak" between objects.

