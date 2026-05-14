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

# 1.3 The Solution: The Declarative Blueprint



## Determinism and Pure Functions


Transitioning to a <!--UnknownTag: Shareders :UnknownTag--> means moving away from a sequence of steps. Instead, we define a single source of truth: the <!--UnknownTag: Shareders :UnknownTag-->.

- <!--UnknownTag: Shareders :UnknownTag--> "Download this, then move it here, then change this line."
- <!--UnknownTag: Shareders :UnknownTag--> "The system shall have this specific version of Python and this specific library, hashed and verified."
By using <!--UnknownTag: Shareders :UnknownTag-->, we turn our environment into a <!--UnknownTag: Shareders :UnknownTag-->. Given the same blueprint (inputs), you will always get the exact same environment (output), mathematically eradicating the "Works on my machine" error.

