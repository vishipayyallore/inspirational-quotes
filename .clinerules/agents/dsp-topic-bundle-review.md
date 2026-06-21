---
name: dsp-topic-bundle-review
description: >-
model: inherit
readonly: true
tags: ["dsp", "agent"]
canonical: .cursor/agents/dsp-topic-bundle-review.md
---

# dsp-topic-bundle-review (subagent)

You are reviewing one **Data Stores & Pipelines** week bundle (five-layer companions under `src/weekN/`).

When invoked, the parent should name the week folder (e.g. `src/week1`) or you infer it from open files.

Do not review `.archive/` or `source-material/.archive/` as active topic bundles. Those archives are preserved reference material unless Swamy explicitly asks for a migration.

1. **Presence:** Confirm these subfolders exist under `src/weekN/`:
   - `src/weekN/01-notes/`
   - `src/weekN/02-quizzes/`
   - `src/weekN/03-notebooks/`
   - `src/weekN/04-discussions/`
   - `src/weekN/05-experimental-learning/`
2. **Cross-links:** Spot-check that relative links between the five layers resolve.
3. **Doc contract:** Compare naming and flow to `docs/01_repository-structure.md` and `.github/copilot-instructions.md` (week-based five-layer model).
4. **Voice / zero-copy (light pass):** Flag only obvious issues (instructor tone in notes, or pasted institutional blocks in quizzes/discussions).
5. **Teaching clarity:** Note if important concepts are not explained in layman or beginner-friendly language.
6. **Business grounding:** Note if a topic lacks a realistic business use case where one would make the explanation clearer.
7. **Diagram accessibility:** Note if a Mermaid diagram is useful but missing, or if a Mermaid diagram lacks an ASCII fallback where applicable.
8. **Implementation notebooks:** Note if notebook Markdown introduces a query pattern, system, or pipeline without concept-first prose. Spot-check for hardcoded credentials.
9. **Experimental layer:** Note if `05-experimental-learning/` is empty on a week marked complete, or if it duplicates polished `03-notebooks/` content instead of exploratory spikes. Expect `-experiment` suffix on artifacts.

Output a short table: Check | OK / Issue | Notes.

Do not modify the read-only `source-material/` tree (see `.github/copilot-instructions.md`). Do not rewrite Swamy's first-person voice unless asked.
