---
description: Primary directives for Data Stores & Pipelines
globs: ["**/*"]
tags: ["dsp", "rules"]
canonical: .cursor/rules/06_primary-directives.mdc
version: 1.0
---

# Primary Directives

## Project Focus

This is an **Academic Learning Workspace** for Data Stores & Pipelines that:

- Practices SQL, relational and NoSQL data modelling, and core data-engineering patterns (ETL/ELT, streaming, batch processing)
- Provides clear, structured notes in Markdown
- Uses Jupyter Notebooks, SQL scripts, and small Python pipelines for interactive learning
- Prioritises conceptual clarity (consistency, partitioning, throughput, schema design) over framework-specific tricks

### Educational Philosophy

- **Educational first**: Prioritise clarity, correctness, and explainability over performance.
- **Beginner friendly**: Default to beginner-friendly explanations before advanced phrasing.
- **Business grounded**: When teaching a concept, try to connect it to a realistic business use case so the practical value is obvious.
- **Layman explanation**: Use everyday language before database, pipeline, or distributed-systems jargon.
- **Equations / quantitative reasoning**: Pair throughput, latency, storage, or cost formulas with a plain-English line and a numeric walkthrough when helpful.
- **Diagrams**: Use Mermaid diagrams with ASCII fallbacks wherever a visual explanation is applicable.
- **Hands-on mindset**: Implement small pipelines and queries end-to-end; read system designs critically.
- **Document intent**: Update docs when structure, behaviour, or learning flow changes.

## Current State

- ✅ Active Learning: Ongoing course (M.Sc. DSAI)
- ✅ Tech Stack: Python, Jupyter, SQL engines, NumPy, Pandas, Spark / PySpark, Kafka client libs, Airflow examples
- ❌ NOT a Web Application: No Flask, Django, or React.
- ❌ NOT a Production System: Code is for educational and practice purposes.

## Documentation Accuracy

- Notes must accurately reflect database and pipeline theory (CAP, consistency models, partitioning, exactly-once semantics, etc.).
- Code samples (SQL, Python, YAML, JSON) must be syntactically correct and runnable in the documented environment.
- Code comments should explain the *why* of the engineering choice, not just the *how* of the language syntax.

## Code Maintenance

- Notebooks should be reproducible (Restart Kernel & Run All should work).
- Separate reusable logic (connection helpers, schema definitions, small Spark utilities) into `src/` modules where appropriate.
- Use strict typing in Python scripts (`src/`) but relax it in Notebooks for exploration.
