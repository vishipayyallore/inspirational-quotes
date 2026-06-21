---
description: Repository structure for Data Stores & Pipelines
globs: ["**/*"]
tags: ["dsp", "rules"]
canonical: .cursor/rules/03_repository-structure.mdc
version: 1.0
---

# Repository Structure

**Project**: Data Stores & Pipelines (M.Sc. DSAI)

> **Single Source of Truth**: For the complete and detailed repository structure, naming conventions, and workflow standards, refer to [docs/01_repository-structure.md](../../docs/01_repository-structure.md).

## Quick Summary

- **`src/weekN/01-notes/`**: Theory and notes for that week.
- **`src/weekN/02-quizzes/`**: Self-assessment for that week.
- **`src/weekN/03-notebooks/`**: Hands-on implementation notebooks (SQL, Python ETL, Spark, Kafka, Airflow DAG sketches) for that week.
- **`src/weekN/04-discussions/`**: Worked examples and discussion scenarios (system design trade-offs, real-world pipelines) for that week.
- **`src/weekN/05-experimental-learning/`**: Exploratory spikes, prototypes, and sandbox experiments beyond polished labs for that week.
- **`src/`**: Also houses reusable Python code (helpers, connectors, schema definitions) alongside the week folders.
- **`tools/`**: Maintenance scripts and helper utilities.
- **`docs/`**: Structure guides, agent docs, and reviews.

When writing or updating public-facing structure (for example `README.md` or `docs/01_repository-structure.md`), do not list or mention any internal-only paths.

## Preserved archives

- `.archive/` (if present) contains old layouts. Leave it as preserved legacy material unless Swamy explicitly asks to migrate or clean it.
- `source-material/.archive/` (if present) contains raw/reference material. Treat it as read-only source material and leave it as-is unless Swamy explicitly asks for a topic migration.
- Routine parity, docs, and CI reviews should focus on active `src/weekN/` content and should not treat either archive as a required active layer.
