# OBC OpenLearn Mechanics Deconstruction (Technical Reference)

This document maps the "mechanics" of the OBC Startup Fund 2026 course (`PUB_10139_1.0`) to serve as a structural reference for the nixB project.

## 1. Course Structure (The "Engine")
*   **Asset-Led Navigation:** Content is not a book; it's a sequence of "Actions."
*   **External Integration Pattern:** How does OpenLearn link to SimVenture Validate? 
    *   *Observation:* The course provides the "Why" and "What," while the external tool provides the "How" (Workplace simulation).
    *   *nixB Application:* OpenLearn provides the Theory; the Nix Flake provides the Laboratory.

## 2. Interactive Mechanics
*   **The Workshop Activity:** A specific Moodle-style component for "Portfolio Submission."
    *   *Refinement:* Investigate how files are handled and if peer review is enabled.
*   **Statement of Participation:** Automated trigger based on activity completion (not just a final test).

## 3. Pedagogical Style (Bridging to 'Creating OER' PDF)
*   **Conversational Tone:** Page 36 of the OER PDF suggests a "one-to-one tutorial" style. The OBC course implements this by using direct calls to action ("Your Task:...", "Download your...").
*   **Formative Assessment:** Quizzes are used not just for grading, but for "Checking your Understanding" (Page 6 of OER PDF).

## 4. Technical File Formats
*   OpenLearn supports **OU-XML** packages (Page 41 of OER PDF).
*   *Task:* Verify if the OBC course uses specific interactive XML elements that we should replicate in nixB.
