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

# 2.1 From Chaos to Order: The Hierarchical Mental Model



## Thinking in Objects


In Unit 1, we identified the "Jenga Tower" of manual installations. Now, we move to the solution: __The Declarative Hierarchy__.

Think of your development environment not as a list of actions, but as a set of __Educational Objects__ (Tait, 1997). In Unit 2, we introduce two tools that work together to create a perfectly reproducible stack:

- __Nix__: The "System Foundation" that manages binary dependencies.
- __uv__: The "Project Specialist" that manages Python-specific libraries.
