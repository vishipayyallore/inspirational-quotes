---
description: Zero-copy spot check on specified Markdown or notebook paths before merge or migration
tags: ["dsp", "workflow", "zero-copy"]
version: 1.0
---

# Workflow: Zero-copy review (DSP)

**Objective:** Advisory pass on public learning content for copy-paste risk from vendor docs or course handouts.

## Input

One or more paths under `src/weekN/` (notes, quizzes, notebooks, discussions, experimental-learning).

## Steps

1. For each path, skim for long verbatim vendor, textbook, or course handout blocks.
2. Flag near-duplicate phrasing without synthesis.
3. Confirm citations where precise definitions or named frameworks are used.
4. Scan for leaked credentials, connection strings, or account identifiers in any pasted block.
5. Classify each file: **Clear** / **Review** / **Likely problem** with a one-line rationale.

## Output

Per-file classification table. Do not quote long copyrighted or internal source text.

## Do not

- Edit the read-only staging tree.
- Treat advisory results as automatic rewrites — Swamy decides edits.

## Related

- Agent: `.clinerules/agents/dsp-zero-copy-review.md`
- Rules: `.clinerules/rules/02-educational-content-rules.md`
