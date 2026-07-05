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

# 3.1 The Artifact: Beyond "It Runs on My Machine"



## Encapsulating the State


In Unit 2, we mastered the <!--UnknownTag: Shareders :UnknownTag--> (Nix Flakes). But a blueprint is just instructions. In Unit 3, we focus on the <!--UnknownTag: Shareders :UnknownTag-->—the actual realization of those instructions into a self-contained, immutable __Artifact__.

In traditional development, "deploying" often means manually moving files and hoping the server's environment matches yours. In the nixB model, the Deployment is an __Encapsulated Object__. It contains the code, the libraries, and the exact system dependencies required to run, all bundled together.

