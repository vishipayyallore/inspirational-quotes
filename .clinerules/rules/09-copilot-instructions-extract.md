---
description: Key guidelines extracted from copilot-instructions.md for AI assistants
globs: ["**/*"]
tags: ["dsp", "rules"]
canonical: .cursor/rules/09_copilot-instructions-extract.mdc
version: 1.0
---

# Copilot Instructions Extract

**Source**: `.github/copilot-instructions.md` from this repository
**Purpose**: Key guidelines for AI assistants working on this repository

---

## 🎯 Repository Context

**Data Stores & Pipelines** is an academic workspace dedicated to studying SQL and NoSQL data stores, ETL/ELT pipelines, distributed data processing, streaming systems, and modern data-engineering concepts (Python, Spark, Kafka, Airflow, cloud platforms). It contains structured notes, examples, and hands-on implementations for the M.Sc. DSAI program.

### Intended use

- Swamy PKV's personal M.Sc. Data Science & AI learning
- Private revision, practice, and hands-on implementation notes for Swamy only

### Five-Layer Learning Architecture

Content is organized by **week** under `src/`. For each week, maintain five companion subfolders:

1. **Notes**: `src/weekN/01-notes/` — Theory, first-person learning journey
2. **Quizzes**: `src/weekN/02-quizzes/` — Self-assessment (original synthesis only)
3. **Notebooks**: `src/weekN/03-notebooks/` — Hands-on implementations (SQL, Python ETL, Spark, Kafka, Airflow DAG sketches)
4. **Discussions**: `src/weekN/04-discussions/` — Worked examples and discussion scenarios
5. **Experimental learning**: `src/weekN/05-experimental-learning/` — Exploratory spikes, prototypes, sandbox notebooks/scripts

**Week folder naming:** lowercase `weekN` (e.g. `week1`, `week2`).

**Learning Flow**: Read notes → Do quizzes → Implement in notebooks → Discuss examples → Experiment and iterate

---

## 🔧 Development Guidelines

### Source Material Staging

**🚫 Critical Restrictions:**

- **Read-Only Policy**:
 - **NEVER modify** any file inside `source-material/`
 - **NEVER overwrite** any file inside `source-material/`
 - **NEVER edit** content even if it contains errors
 - Files are **permanent reference materials**

- **No Deletion Policy**:
 - **NEVER delete** anything from `source-material/`
 - Content remains even after migration
 - Serves as **permanent historical reference**

- **Export Location Policy (.pdf/.pptx)**:
 - **NEVER export to `docs/exports/`** when the source file is under `source-material/`
 - Create converted artifacts in the **same `source-material` location tree** as the input file
 - Keep source and converted files colocated for auditability

**🔄 Migration Workflow:**
1. Read from `source-material/` to understand concepts
2. Synthesize — Rewrite in your own words (NO copy-paste)
3. Publish to educational folders (`src/weekN/01-notes/`, `src/weekN/02-quizzes/`, `src/weekN/03-notebooks/`, `src/weekN/04-discussions/`, `src/weekN/05-experimental-learning/`, `docs/`, `src/`)
4. Cite when using specific system papers (e.g. Dynamo, GFS, Spanner), or named patterns

**✅ Zero-Copy Policy:**
- **Good Synthesis**: Demonstrates understanding, uses different vocabulary, explains concepts
- **Bad Synthesis (Rejected)**: Word-for-word copying, minor rephrasing, close paraphrasing without understanding

### Zero-Copy Policy

- All notes and code must be original syntheses of learning materials.
- No direct copying from textbooks or vendor docs without citation.

### Project Focus

- **System & Query Correctness**: Ensure SQL queries return what you intend; ensure pipeline diagrams reflect the actual data flow.
- **Code Quality**: Use clear, well-commented Python and SQL code.
- **Visualization**: Use Mermaid diagrams to show pipeline topology, partitioning, replication, and event flow, and include ASCII fallbacks wherever applicable.

### Code Style (Python)

- Follow PEP 8 style guide.
- Use meaningful variable names (e.g., `raw_events_df` instead of `df1`).
- Use type hints where appropriate.
- **Comments**: Comment liberally to explain the *why* of the engineering choice, not just the *how*.
- **No hardcoded paths**: Use `pathlib` or relative paths; for connection strings prefer environment variables (with placeholders in the code).

### Code Comments Philosophy

- Explain the **engineering reason** for the operation (e.g., "We coalesce here to reduce small-file overhead before writing partitions").
- Explain the **schema mapping** (e.g., "`order_id` joins `orders` and `order_items` on the order grain").
- Not just syntax explanation (avoid: "This creates a list").

### Documentation Standards

- **Review reports**: All review reports go in `docs/reviews/`.
- **Reference materials**: General reference docs go in `docs/reference/`.
- **Notes**: Synthesized study notes go in `src/weekN/01-notes/`.

### Notebook Guidelines

- Structure notebooks with clear headers.
- Include markdown cells explaining the data model and pipeline intent before the code.
- Ensure all cells run sequentially.
- **Logical Flow**: Setup -> Load / Generate Data -> Transform -> Load / Sink -> Verify.
- **No Hidden State**: Avoid variables defined in deleted cells.
- **Reproducibility**: Where data is randomly generated, fix the seed; where queries run on a sample, include the sample.
- **Visualization Standards**: All plots and diagrams must have titles, axis labels, and legends where applicable.

### Diagram Guidelines

- Use Mermaid for pipeline topology, system architecture, and data-flow diagrams; add an ASCII fallback wherever applicable.
- Always label nodes and arrows clearly (system name, data type, event direction).
- Use appropriate diagram types (architecture, sequence, ER diagrams, lineage).

---

## 🚀 Environment & Commands

**Environment**: Windows, PowerShell, Python 3.x, Jupyter Notebooks
**Note**: All commands and scripts should use PowerShell syntax. File paths use Windows format.

**Python Environment:**

```powershell
# Optional: Suppress cross-drive hardlink warnings (if expected)
$Env:UV_LINK_MODE = "copy"

# Create virtual environment and install dependencies
uv sync
```

**Jupyter:**

```powershell
jupyter notebook
```

---

## 🧠 Prompt Engineering Tips

When asking AI assistants for help:

- Specify the engine, format, or pattern clearly (e.g., "Write a window-function query in PostgreSQL to compute 7-day rolling revenue").
- Request hands-on implementation (e.g., "Sketch an Airflow DAG that ingests JSON events, validates schema, and writes Parquet").
- Ask for explanations using plain English plus a small worked example.
- Request diagrams when appropriate (e.g., "Create a Mermaid diagram for a Lambda architecture").
- Specify reproducibility expectations (e.g., "Use a fixed seed when generating sample data").

## ✅ Quality Checklist

### Before Submitting Code/Notebooks

- [ ] **Kernel Restart & Run All** passes without errors.
- [ ] Where data is random, seeds are fixed.
- [ ] Diagrams have titles and labels.
- [ ] Code comments explain the *why* (engineering reasoning), not just the *how*.
- [ ] SQL queries are explained alongside their intent and expected output shape.
- [ ] Variable / column / topic / DAG names are descriptive and meaningful.
- [ ] No hardcoded credentials; use environment variables with placeholders.

### Content Review

- [ ] Content is original synthesis (zero-copy policy).
- [ ] System / pipeline concepts are explained before code implementation.
- [ ] Citations included for landmark systems papers and named patterns.
- [ ] All assumptions (consistency, partitioning, delivery semantics) are verified before code.
