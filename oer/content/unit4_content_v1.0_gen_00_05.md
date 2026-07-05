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

# Practice Activity: Launching the Ecosystem



````{activity} Final Capstone Laboratory


To complete the course, launch the <!--UnknownTag: Shareders :UnknownTag-->.

1. Navigate to the laboratory folder: `ou_tm470/oer/lab/unit4_integration/`.

2. Run `nix develop` to enter the integrated environment.

3. Launch the LNbits instance and verify the Scrum extension is active.

<!--UnknownTag: Emphasis :UnknownTag--> Now that you've seen a complex system launched from a single blueprint, how has your view of "installation" changed? Is there any part of this stack that isn't reproducible?


````

<!--
            SAQ id=
            -->

### Self-Assessment Question 3


How does the "Integration Object" approach improve the stability of complex software like LNbits?



```{ou-answer}

By treating each component (Core, Extension, Node) as an encapsulated object with its own immutable dependencies, we prevent <!--UnknownTag: Shareders :UnknownTag-->. We can update individual pieces of the stack with confidence, knowing they won't interfere with the system state of other components.

```

<!--ENDSAQ-->
<!--UnknownTag: Emphasis :UnknownTag-->

