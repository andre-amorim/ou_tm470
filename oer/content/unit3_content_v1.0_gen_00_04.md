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

# Practice Activity: Shipping the Blueprint



````{activity} Hands-on Laboratory


To put these concepts into practice, complete the <!--UnknownTag: Shareders :UnknownTag--> located in the course resources folder.

1. Navigate to the laboratory folder: `ou_tm470/oer/lab/unit3_deployment/`.

2. Follow the steps in the `README.md` to "freeze" your project into a Nix artifact using `nix build`.

3. Attempt to run the artifact directly from the Nix store.


````

<!--
            SAQ id=
            -->

### Self-Assessment Question 2


Why is "patching" a deployment discouraged in the declarative model?



```{ou-answer}

Patching a deployment introduces <!--UnknownTag: Shareders :UnknownTag-->. It breaks the link between the blueprint and the artifact, making the system's state non-deterministic and non-reproducible. Instead, we update the blueprint and deploy a new, verified object.

```

<!--ENDSAQ-->
<!--UnknownTag: Emphasis :UnknownTag-->

