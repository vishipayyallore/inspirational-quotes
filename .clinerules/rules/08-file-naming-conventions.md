---
description: Naming conventions for notebooks, scripts, and notes
globs: ["**/*"]
tags: ["dsp", "rules"]
canonical: .cursor/rules/08_file-naming-conventions.mdc
version: 1.0
---

# File Naming Conventions

## Five-Layer Learning Architecture

Content is organized by **week** under `src/`. For each week, maintain five companion subfolders:

1. **Notes**: `src/weekN/01-notes/` — Theory, first-person learning journey
2. **Quizzes**: `src/weekN/02-quizzes/` — Self-assessment (original synthesis only)
3. **Notebooks**: `src/weekN/03-notebooks/` — Hands-on implementations
4. **Discussions**: `src/weekN/04-discussions/` — Worked examples and discussion scenarios
5. **Experimental learning**: `src/weekN/05-experimental-learning/` — Exploratory spikes, prototypes, sandbox notebooks/scripts

**Week folder naming:** lowercase `weekN` (e.g. `week1`, `week2`). No `00` prefix.

### Notes (`src/weekN/01-notes/`)
- Format: descriptive kebab-case markdown, e.g. `relational-modeling-and-normalisation.md`

### Quizzes (`src/weekN/02-quizzes/`)
- Format: descriptive kebab-case markdown with `-quiz` suffix, e.g. `relational-modeling-quiz.md`

### Notebooks (`src/weekN/03-notebooks/`)
- Format: descriptive kebab-case notebook with `-implementation` suffix, e.g. `etl-with-pandas-implementation.ipynb`, `pyspark-batch-job-implementation.ipynb`

### Discussions (`src/weekN/04-discussions/`)
- Format: descriptive kebab-case markdown with `-discussion` suffix, e.g. `oltp-vs-olap-trade-offs-discussion.md`

### Experimental learning (`src/weekN/05-experimental-learning/`)
- Format: descriptive kebab-case with `-experiment` suffix, e.g. `kafka-consumer-tuning-experiment.ipynb`, `spark-partition-skew-experiment.md`, `airflow-dag-retry-experiment.py`

### SQL scripts (`src/weekN/03-notebooks/` or alongside)
- Format: descriptive kebab-case, e.g. `customer-orders-schema.sql`, `daily-revenue-aggregation.sql`

## Python Scripts (`src/`)
- Use snake_case (standard Python convention).
- No topic numbering prefix required (these are reusable utilities).
- **Example**: `db_helpers.py`, `kafka_producer.py`, `spark_session.py`

## Images & Figures
- Use descriptive kebab-case names.
- **Example**: `star-schema-diagram.png`, `lambda-vs-kappa-architecture.png`
