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

# 3.3 The Delivery Mechanism: Nix Bundles and Containers



## Distribution Channels


How do we move these objects? The Nix ecosystem provides several methods for object delivery:

1. <!--UnknownTag: Shareders :UnknownTag--> Compiles your project into a specific, isolated path in the Nix Store.
2. <!--UnknownTag: Shareders :UnknownTag--> Allows you to take that store path and bundle it into a single executable that can run on any Linux machine.
3. <!--UnknownTag: Shareders :UnknownTag--> Automatically generate OCI-compliant (Docker) images from your Nix blueprint.
