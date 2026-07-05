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

# 2.3 uv: The Fast Python Handshake



## Isolated Environments


While Nix handles the heavy lifting of system libraries (like `openssl` or `libsqlite3`), we use __uv__ to manage our Python packages.


```{figure} declarative_hierarchy_blueprint.png
Figure 1: The Declarative Hierarchy (Nix and uv)

A 3D isometric stack showing the host system foundation, the Nix Flake layer, and the nested uv Python environment.
```


Figure 1: The Declarative Hierarchy (Nix and uv)

A 3D isometric stack showing the host system foundation, the Nix Flake layer, and the nested uv Python environment.
