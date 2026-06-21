---
description: Rules for creating educational content and notes
globs: ["*.md", "*.ipynb"]
tags: ["dsp", "rules"]
canonical: .cursor/rules/02_educational-content-rules.mdc
version: 1.0
---

# Educational Content Rules

**Context**: Academic note-taking and practice for Data Stores & Pipelines (SQL, NoSQL, ETL/ELT, streaming, distributed data processing).
**Priority**: HIGH

## Core principles

### Academic integrity (zero-copy)
- **Original synthesis**: Do not copy-paste directly from textbooks, lecture slides, vendor docs, or course handouts. Read, understand, and write in your own words.
- **Citation**: If referencing a specific algorithm, system design, or formal definition (e.g. RAFT, MVCC, exactly-once semantics), cite the source.
- **Review strictness**: Reviewers should reject content that looks like direct copying or close paraphrase.
- **Examples must be original**: Do not reuse institutional examples verbatim; create fresh scenarios in your own words (e.g. your own schemas, your own DAGs, your own streaming topics).

### Clarity and structure
- **Concept first**: Explain the system or pipeline concept in Markdown before writing SQL / Python / DAG / config.
- **Math / system notation**: Use LaTeX where helpful (e.g. throughput formulas) and code fences for SQL, JSON schemas, YAML configs.
- **Visuals**: Use diagrams to show pipeline topology, data flow, partitioning, or replication. Where a visual explanation is applicable, include a Mermaid diagram and an ASCII fallback so the idea remains readable in plain-text contexts.

### Plain English or worked example (every concept)
- **Minimum**: For each concept, provide at least one of **(A)** a plain-English explanation or **(B)** a worked example (e.g. a small dataset, a SQL query and its result, a tiny Kafka producer / consumer trace).
- **Beginner-friendly default**: Write for revision after a gap. Use simple wording first, then add technical precision.
- **Layman explanation**: Explain the idea in everyday language before moving to database, pipeline, or distributed-systems jargon.
- **Business use cases**: Whenever practical, attach at least one realistic business use case so the concept is grounded in a real application.
- **Equations / quantitative reasoning**: Do not leave throughput, latency, storage, or cost calculations unexplained. Add plain-English intuition and a numeric walkthrough where helpful.
- **Diagrams / queries**: Do not leave a pipeline diagram or query unexplained — add plain-English intuition before or after.
- **Teaching Markdown**: Apply this standard in reading notes, examples, quizzes when they teach, and notebook Markdown cells that introduce a new concept or pattern.

### Code in education
- **Comments**: Explain the data-engineering reason for the operation, not just the syntax.
- **Variable / identifier names**: Use descriptive names (`raw_events`, `dim_customer`, `daily_orders_fact`) over generic placeholders.
- **Reproducibility**: Where data is generated, fix seeds. Where queries depend on data, include a small loadable sample.

## Voice and tone
- **Personal learning journey**: Write reading notes as Swamy's first-person learning journey.
- **Reflection-oriented**: Prefer "I'm learning…", "I plan to…", and "I want to be able to…" over generic instructor phrasing.
- **Avoid course framing**: Do not title notes as "Course …" or write like a lecturer.

## Five-layer learning architecture

Content is organized by **week** under `src/`. For each week, maintain five companion subfolders:

1. **Notes**: `src/weekN/01-notes/` — Theory, first-person learning journey
2. **Quizzes**: `src/weekN/02-quizzes/` — Self-assessment (original synthesis only)
3. **Notebooks**: `src/weekN/03-notebooks/` — Hands-on implementations (SQL workbooks, Python ETL, Spark, Kafka, Airflow DAG sketches)
4. **Discussions**: `src/weekN/04-discussions/` — Worked examples and discussion scenarios (system design trade-offs, real-world pipelines)
5. **Experimental learning**: `src/weekN/05-experimental-learning/` — Exploratory spikes, prototypes, sandbox notebooks/scripts, iteration logs

**Do not copy** author or course samples into `02-quizzes/` or `04-discussions/`. Those remain reference-only.

**Learning flow**: Read notes → do quizzes → implement in notebooks → discuss examples → experiment and iterate.

## Note enhancement footer (Exam + Architect + Hands-on)

After the core teaching content in each `src/weekN/01-notes/*.md` file, append these **H2 sections** when the note is marked enhancement-complete (apply incrementally; do not rewrite existing theory blocks):

1. `## Architect's Notes` — anti-patterns, reference architectures, design trade-offs
2. `## Hands-On Validation` — SQL / CLI / notebook pointers I can run locally
3. `## Exam Quick Revision` — bullet cram sheet for rapid review
4. `## BITS Question Bank` — original 2 / 5 / 10 mark practice prompts (H3 subheadings)
5. `## Interview Questions` — short Q&A for architect / data-engineering interviews
6. `## Common Mistakes` — misconceptions I want to avoid
7. `## Key Takeaways` — closing bullets

**Rules:**

- Preserve all existing content above the footer; additions only.
- Question bank and interview answers must be **original synthesis**, not copied from institution papers.
- Link to companion notebooks, quizzes, and discussions in Hands-On Validation where they exist.
- Exemplar: `src/week1/01-notes/03-oltp-vs-olap-architectures.md`.

## Markdown standards
- Use H2 (`##`) for main topics and H3 (`###`) for subtopics.
- Use blockquotes (`>`) for definitions or key takeaways when helpful.
- Use tables for comparing engines, storage models, consistency guarantees, or pipeline tooling.