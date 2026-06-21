---
name: data-stores-pipelines
description: Work on t2-data-stores-pipelines — week folders under src/, five-layer companions (01-notes, 02-quizzes, 03-notebooks, 04-discussions, 05-experimental-learning), hands-on data-engineering implementations (SQL, ETL/ELT, Spark, Kafka, Airflow), zero-copy, beginner-friendly explanations, and realistic business use cases.
tags: ["dsp", "skill", "data-stores-pipelines"]
canonical: .github/skills/data-stores-pipelines/SKILL.md
---

# Data Stores & Pipelines

**Scope:** Swamy PKV's personal learning only. See `README.md` and `.cursor/rules/01_swamy_personal_learning_only.mdc`.

## Layout

Content is organized by **week** under `src/weekN/`. Each week has five companion subfolders:

| Layer | Path |
|-------|------|
| Notes | `src/weekN/01-notes/` |
| Quizzes | `src/weekN/02-quizzes/` |
| Notebooks | `src/weekN/03-notebooks/` |
| Discussions | `src/weekN/04-discussions/` |
| Experimental learning | `src/weekN/05-experimental-learning/` |

Shared reusable logic (connection helpers, schema definitions, small Spark/Kafka utilities) lives in `src/` alongside the week folders.

## Topic theme

Hands-on data engineering: SQL fundamentals, relational vs NoSQL modelling, ETL/ELT pipelines, distributed batch processing (Spark / PySpark), event streaming (Kafka), workflow orchestration (Airflow), and modern data engineering concepts on cloud platforms. The learning intent is to build small end-to-end examples and to understand system trade-offs (consistency, partitioning, throughput, delivery semantics).

## Teaching quality

- Explain concepts in beginner-friendly language before using formal data-engineering terms.
- Add layman explanations for important ideas, queries, pipeline patterns, and system trade-offs.
- Use realistic business use cases whenever practical so the concept is tied to a real application.
- Pair quantitative reasoning (throughput, latency, storage, or cost) with plain-English intuition and a numeric walkthrough when helpful.
- Include a Mermaid diagram with an ASCII fallback wherever a pipeline, topology, dependency, or architecture is easier to understand visually.

## Related

- **Topic SOP:** `.github/skills/topic-companions/SKILL.md`
- **CI commands:** `.github/skills/ci-checks/SKILL.md`
- **Subagent:** `.cursor/agents/dsp-topic-bundle-review.md`
