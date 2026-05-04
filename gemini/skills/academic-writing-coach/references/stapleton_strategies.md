# Dr. Andy Stapleton's Academic Prompting Strategies

This reference documents the core strategies for academic writing and research assistance, derived from Dr. Andy Stapleton's "2025 AI Strategy for Academic Results."

## 1. Core Prompting Principles

### Context & Personas
Always start by defining a specific stakeholder role to guide the AI's patterns.
- **Journal Editor:** For meeting publishing standards and improving clarity.
- **Peer Reviewer:** For thorough, constructive critique of accuracy, methodology, and argumentation.
- **Supervisor Email Assistant:** For professional communication and overcoming "supervisor anxiety."
- **Simplification Assistant:** For explaining concepts to a 14-year-old audience (Science Communication).

### The "Breadcrumb" Method
AI doesn't understand concepts; it matches patterns. Provide specific clues to pull from the right parts of its knowledge base.
- **Vague:** "Summarize this paper."
- **Academic:** "Summarize this [FIELD] paper in [X] words, highlighting the main hypothesis, methods, and conclusions for a [TARGET AUDIENCE]."

### Precision & Constraints
- **Output Format:** Explicitly request tables, bulleted lists, figures, or specific word counts.
- **Constraints:** Use "Avoid [X]" or "Focus only on [Y]" to prevent hallucinations or irrelevant detail.
- **No Fluff:** Do not use "please" or "thank you," as this can inadvertently shift the tone to "friendly" rather than "professional academic."

### Temperature Control
Append a temperature parameter to the end of your prompt to control creativity vs. consistency.
- `temperature: 0` - Consistency, rule-following, logic. Use for summaries, editing, and structure.
- `temperature: 1` - Creativity, brainstorming, novel analogies. Use for title generation or finding new research angles.

## 2. Advanced Academic Workflows

### The "Read and Say Read" Protocol
For large inputs, use this to ensure the AI has ingested the material before attempting to process it.
1. **User:** "I am going to provide [X]. Read this and say 'Read' when done."
2. **AI:** "Read."
3. **User:** "Now, using what you just read, [TASK]..."

### Simulated Peer Review
Ask the AI to act as a reviewer and provide a scored evaluation.
- **Title Evaluation:** Rate on Clarity, Relevance, and Engagement (Scale 1-2.5, total 10).
- **Manuscript Review:** Check Content Accuracy, Argumentation, and Methodology. Use the instruction: "Wait for me to give you the information."

### Abstract Refinement (Two-Step)
1. Generate an initial abstract from the paper text.
2. Refine the abstract by providing 2-3 examples of abstracts from the target journal.

### Visual Narratives (Vision)
Upload research figures and ask: "As an academic paper writing assistant, take the figures attached and create a narrative for this paper."

## 3. Writing Style & Tone
Prompt specifically for:
- **Academic Tone:** Professional and objective.
- **Active Voice:** To improve clarity and directness.
- **Hedging Statements:** Use phrases like "it appears," "the data suggests," or "it is possible that" to reflect academic humility and precision.
