---
name: docs-verification
description: Verify markdown structure, five-layer week companions, folder naming, beginner-friendly explanations, and business-use-case grounding. Use when auditing docs, broken links, or cross-layer consistency.
tags: ["dsp", "skill", "docs-verification"]
canonical: .github/skills/docs-verification/SKILL.md
---

# Documentation Verification — Data Stores & Pipelines

**Five-layer** companions are organized by week under `src/weekN/` with five subfolders: `01-notes/`, `02-quizzes/`, `03-notebooks/`, `04-discussions/`, `05-experimental-learning/`.

## Verification matrix

| Concern | Source of truth | Common errors |
|--------|-----------------|---------------|
| Layout | `docs/01_repository-structure.md`, `README.md` | Missing layer for a week; wrong subfolder name |
| Notes | `src/weekN/01-notes/` | Instructor tone; concepts without layman intuition before diagrams; missing business use case where helpful |
| Quizzes | `src/weekN/02-quizzes/` | Marked answers inconsistent with explanations; copied institution questions |
| Notebooks | `src/weekN/03-notebooks/` | Missing `-implementation` suffix; broken JSON; hidden cell state; hardcoded credentials |
| Discussions | `src/weekN/04-discussions/` | Copied institution scenarios; missing original synthesis |
| Experimental learning | `src/weekN/05-experimental-learning/` | Polished lab duplicated here instead of exploratory spike; missing `-experiment` suffix; no reflection on what was learned |
| Reusable code | `src/` (alongside week folders) | Connection / helper logic duplicated in notebooks without clear separation |
| Public docs | `.cursor/rules/07_source_material_rules.mdc` | Listing `source-material/` in `README.md`, `docs/**/*.md`, or structure diagrams |
| Diagrams | `.cursor/rules/02_educational-content-rules.mdc` | Mermaid diagram missing an ASCII fallback where a visual explanation is applicable |
| Week folders | `src/week1/`, `src/week2/`, … | Wrong casing (`Week1` instead of `week1`); content in wrong week |

## Archive handling

- `.archive/` (if present) is preserved legacy content and is not part of active docs parity unless Swamy asks for migration.
- `source-material/.archive/` (if present) is preserved raw/reference material; keep it internal-only and read-only.
- Do not require archive content to appear in `src/weekN/` during ordinary documentation audits.

## Output format

Use a table: **File | Status | Issues**. Concrete paths only; offer fixes when requested.

When noting teaching issues, explain them in beginner-friendly terms and mention when a missing business use case weakens the real-world explanation.
When noting diagram issues, mention whether a Mermaid diagram needs an ASCII fallback for environments that do not render Mermaid.
