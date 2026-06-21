# Data Stores & Pipelines — core context (Cline)

## Repository

**t2-data-stores-pipelines** — Swamy PKV's personal M.Sc. DSAI (Term 2) learning workspace. SQL, NoSQL, ETL/ELT, warehousing, Spark/PySpark, Kafka, Airflow, and cloud data platforms. **Not** a web application or production system.

## Non-negotiable: Swamy only

This repo is **personal learning only**. Do **not** reword docs for a general audience, imply shared courseware, or invite others to treat content as tutorials unless Swamy explicitly asks.

## Five-layer week layout

Under `src/weekN/`:

1. `01-notes/` — theory, first-person learning journey
2. `02-quizzes/` — self-assessment (original synthesis)
3. `03-notebooks/` — hands-on labs (SQL, ETL, Spark, Kafka, Airflow)
4. `04-discussions/` — pipeline trade-offs and worked scenarios
5. `05-experimental-learning/` — exploratory spikes and sandbox experiments

Term map: `src/course-roadmap-and-module-overview.md`. Cross-layer map: each week's `01-introduction-*.md` topic index.

## Zero-copy and source material

- Public content must be **original synthesis** — no vendor or course handout dumps or close paraphrase.
- `source-material/` is **read-only** — never modify, delete, or name in public docs.
- Never commit real database URLs, Kafka bootstrap servers, cloud keys, or production connection strings. Use placeholders such as `<db-host>`, `<kafka-bootstrap>`, `<airflow-conn-id>`.

## Teaching defaults

- Beginner-friendly plain English before jargon.
- Realistic business use cases where practical.
- Mermaid diagrams with ASCII fallbacks for pipeline and system visuals.
- Code comments explain **why** (modeling or pipeline choice), not just syntax.

## Environment (Windows / PowerShell)

```powershell
$Env:UV_LINK_MODE = "copy"
uv sync
jupyter notebook
```

**PySpark labs:** JDK 17+ and `JAVA_HOME` on PATH when running Spark notebooks locally.

## CI (local)

Read `.clinerules/skills/ci-checks.md` or `.github/skills/ci-checks/SKILL.md` for exact commands (ruff, pytest, notebook JSON, markdownlint).

## Full rule set

See `.clinerules/rules/` and `.clinerules/AGENTS.md` for precedence and delegated playbooks.