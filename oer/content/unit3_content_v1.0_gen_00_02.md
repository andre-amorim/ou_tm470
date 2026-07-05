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

# 3.2 Immutability: The "Frozen" State



## Immutable Deliverables


The core characteristic of a Deployment Object is <!--UnknownTag: Shareders :UnknownTag-->. Once an artifact is built, it should never change.

- If you need to update a library, you don't "patch" the deployment.
- Instead, you update the <!--UnknownTag: Shareders :UnknownTag--> (Unit 2) and generate a <!--UnknownTag: Emphasis :UnknownTag--> Deployment Object.
<!-- #region tags=["style-box", "alert-success"] -->

### Zero-Downtime Reliability

This ensures that "Version 1.0.1" is exactly the same today as it will be in five years, because it is defined by the cryptographic hashes we saw in Unit 2.



