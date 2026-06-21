---
name: workspace-review
description: Comprehensive workspace review for Data Stores & Pipelines — structure, zero-copy, CI, five-layer companions, source-material hygiene, beginner-friendly teaching quality, and business-use-case grounding.
tags: ["dsp", "skill", "workspace-review"]
canonical: .github/skills/workspace-review/SKILL.md
---

# Workspace Review — Data Stores & Pipelines

## Protocol

1. Read `.github/copilot-instructions.md` (five-layer model, zero-copy, `source-material/` read-only — never listed in public `README.md` or `docs/`).
2. Compare the tree to `docs/01_repository-structure.md` and `README.md`.
3. Python: `uv sync` at repo root; `uv run …` per `pyproject.toml` / CI.
4. **Zero-copy:** original synthesis in public folders (`src/weekN/01-notes/`, `src/weekN/02-quizzes/`, `src/weekN/03-notebooks/`, `src/weekN/04-discussions/`, `src/weekN/05-experimental-learning/`).
5. **Five-layer parity:** for each active week, confirm `01-notes/`, `02-quizzes/`, `03-notebooks/`, `04-discussions/`, and `05-experimental-learning/` subfolders exist under `src/weekN/`.
6. **Concept-first prose:** spot-check reading notes and notebook Markdown cells that introduce systems, query patterns, and pipelines before code.
7. **Teaching clarity:** confirm important concepts use beginner-friendly wording and layman explanations before formal detail.
8. **Business grounding:** confirm realistic business use cases are present where they help the topic feel concrete.
9. **Diagram accessibility:** confirm Mermaid diagrams include ASCII fallbacks wherever a visual explanation is applicable.
10. Run the **ci-checks** skill (Python + notebook JSON + markdownlint + optional Lychee).
11. Optionally run **docs-verification**.
12. **Skills parity:** `.github/skills/**` ↔ `.cursor/skills/**` byte-identical — see `.github/skills/README.md`.
13. **Agents parity:** `.github/agents/**` ↔ `.cursor/agents/**` byte-identical.
14. **Credentials hygiene:** scan for hardcoded connection strings, passwords, or tokens; flag any found.

## Archive handling

- `.archive/` (if present) is preserved legacy content; do not flag it as stale active content unless Swamy asks to migrate it.
- `source-material/.archive/` (if present) is preserved raw/reference material; keep it read-only and do not count it as an automatic migration gap.
- Reviews should focus on active `src/weekN/` bundles plus governance/tooling consistency.

## Output

Structured report under `docs/reviews/` when requested. Table: **Area | Status | Notes | Suggested fix**.
