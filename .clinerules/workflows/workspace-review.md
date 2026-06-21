---
description: Full workspace audit — structure, zero-copy, CI, governance parity, credentials hygiene
tags: ["dsp", "workflow", "workspace-review"]
version: 1.0
---

# Workflow: Workspace review (DSP)

**Objective:** Comprehensive review of Swamy's Data Stores & Pipelines learning workspace.

## Steps

1. Read `.github/copilot-instructions.md` and compare tree to `docs/01_repository-structure.md`.
2. For each active `src/weekN/`, confirm five-layer subfolders exist.
3. Spot-check teaching quality (layman explanations, business use cases, diagrams).
4. Verify topic numbering and week topic indexes.
5. Run the **ci-checks** workflow (`.clinerules/workflows/run-ci-checks.md`).
6. Optionally apply **docs-verification** matrix from `.clinerules/skills/docs-verification.md`.
7. Verify governance parity:
   - `.github/skills/` ↔ `.cursor/skills/`
   - `.github/agents/` ↔ `.cursor/agents/`
   - `.clinerules/` ↔ canonical via `verify_clinerules_parity.py`
8. Scan for credentials hygiene across notebooks, SQL, and pipeline configs.

## Output

Critical / Major / Minor findings; CI summary; credentials-hygiene notes.

## Governance

Do not bulk-edit copilot, rules, skills, or agents without mirror-safe commits. If governance trees are corrupted, see `docs/agent-governance-recovery.md` before continuing.

## Related

- Skill: `.clinerules/skills/workspace-review.md`
