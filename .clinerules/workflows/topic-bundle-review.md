---
description: Audit one week bundle for five-layer parity, links, teaching quality, and credentials hygiene
tags: ["dsp", "workflow", "topic-bundle"]
version: 1.0
---

# Workflow: Topic bundle review (DSP)

**Objective:** Audit one `src/weekN/` bundle for five-layer companion parity and teaching quality.

## Input

Swamy names the week folder (e.g. `src/week1`) or you infer it from context.

## Steps

1. Confirm five subfolders exist: `01-notes/`, `02-quizzes/`, `03-notebooks/`, `04-discussions/`, `05-experimental-learning/`.
2. Verify layer-aware numbering (`01`–`99`, never `00-` / `00_`) per `.clinerules/rules/08-file-naming-conventions.md`.
3. Compare the week's `01-introduction-*.md` topic index to the filesystem.
4. Spot-check cross-layer relative links across all five layers.
5. Light zero-copy pass on quizzes and discussions (no institutional or vendor dumps).
6. Check teaching clarity: layman explanations, business use cases, Mermaid + ASCII fallbacks.
7. Spot-check notebooks for concept-first Markdown and credential placeholders.
8. Check experimental layer: exploratory spikes in `05-experimental-learning/` with `-experiment` suffix where applicable.
9. Confirm active quizzes use `<details>` answer keys with per-option rationales where expected.

## Output

Table: **Check | OK / Issue | Notes**

## Do not

- Treat `.archive/` or read-only staging archives as active bundles unless Swamy asks.
- Modify read-only staging content.
- Rewrite Swamy's first-person voice unless asked.

## Related

- Agent: `.clinerules/agents/dsp-topic-bundle-review.md`
- Skill: `.clinerules/skills/topic-companions.md`
