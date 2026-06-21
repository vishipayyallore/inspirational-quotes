---
name: topic-companions
description: >-
tags: ["dsp", "skill", "topic-companions"]
canonical: .github/skills/topic-companions/SKILL.md
---

# Topic companions — five-layer SOP (Data Stores & Pipelines)

**Applies to**: `t2-data-stores-pipelines` **only**. Do not assume the same layer count or filenames in other course repositories.

**Canonical governance**: `.github/copilot-instructions.md`, `docs/01_repository-structure.md`, and `.cursor/rules/02_educational-content-rules.mdc`.

## Layers (five) per week under `src/`

| # | Path pattern | Role |
|---|--------------|------|
| 1 | `src/weekN/01-notes/` | Notes — first-person learning journey |
| 2 | `src/weekN/02-quizzes/` | Quizzes — self-assessment (original synthesis only) |
| 3 | `src/weekN/03-notebooks/` | Notebooks — hands-on implementations (SQL, ETL, Spark, Kafka, Airflow) |
| 4 | `src/weekN/04-discussions/` | Discussions — worked examples and discussion scenarios |
| 5 | `src/weekN/05-experimental-learning/` | Experimental learning — spikes, prototypes, sandbox notebooks/scripts, iteration logs |

**Week folder naming:** lowercase `weekN` (e.g. `week1`, `week2`).

**Layer 5 intent:** Document exploratory work that does not belong in polished `03-notebooks/` labs — alternative approaches, tuning runs, failed hypotheses, and tooling spikes. First-person reflection is expected; polish is not.

## Migration SOP (on demand)

1. Confirm **naming contract** (`.cursor/rules/08_file-naming-conventions.mdc`) before renames.
2. For each **active** week, ensure all **five** subfolders exist (or document WIP in `docs/reviews/`).
3. Add new week folders **only when starting** that week — no empty future scaffolding.
4. After each phase: fix cross-links; run **`ci-checks`** skill locally.
5. Mark a week **done** only if layers 01–04 have aligned content, layer 05 folder exists (with at least one experiment artifact when the week is complete), notebook health passes, and zero-copy passes.

## Definition of done (per week)

- [ ] All five subfolders exist: `01-notes/`, `02-quizzes/`, `03-notebooks/`, `04-discussions/`, `05-experimental-learning/`.
- [ ] Content across notes, quizzes, notebooks, and discussions is aligned.
- [ ] Layer 05 captures at least one exploratory artifact when the week is marked complete (notebook, script, or reflection note with `-experiment` suffix).
- [ ] Notebooks parse and run top-to-bottom (fixed seeds where data is random; small sample data committed).
- [ ] No broken internal links for that week.
- [ ] Quiz answers and worked steps match explanations.
- [ ] Teaching content explains ideas in layman language and uses beginner-friendly wording.
- [ ] At least one realistic business use case appears where it helps make the topic concrete.
- [ ] Mermaid diagrams include ASCII fallbacks wherever a visual explanation is applicable.

## Related

- **Docs audit matrix:** `.github/skills/docs-verification/SKILL.md`
- **Subagent:** `.cursor/agents/dsp-topic-bundle-review.md` (one topic pass)
