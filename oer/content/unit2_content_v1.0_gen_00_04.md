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

# Practice Activity: The Reproducible Hello World



## Hands-on Laboratory



````{activity} Hands-on Laboratory


To put these concepts into practice, complete the __Unit 2 Laboratory__ located in the course resources folder.

1. Navigate to the laboratory folder: `ou_tm470/oer/lab/unit2_practice/`.
2. Follow the steps in the `README.md` to initialize your first Nix/uv project.
3. Observe how the `flake.lock` and `uv.lock` files act as "hermetic seals" for your dependencies.


````

<!--
            SAQ id=
            -->

### Self-Assessment Question 1


What is the primary difference between `flake.nix` and `flake.lock`?



```{ou-answer}

`flake.nix` is the __blueprint__ (specifying where to find dependencies and what the environment should contain), while `flake.lock` is the __hermetic seal__ (capturing the exact cryptographic hashes and versions of those dependencies to ensure bit-identical reproduction across machines).

```

<!--ENDSAQ-->
*Pedagogical Note: This unit facilitates "Concept Formation" by moving the learner from a sequence of events to a state of being.*

