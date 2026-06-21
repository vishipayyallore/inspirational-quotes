---
name: e2e-testing
description: Smoke verification for Data Stores & Pipelines (environment, notebook JSON, optional manual notebook run). Use when smoke-testing the workspace end-to-end.
tags: ["dsp", "skill", "e2e-testing"]
canonical: .github/skills/e2e-testing/SKILL.md
---

# Smoke / E2E-style verification — Data Stores & Pipelines

No deployed application here. "End-to-end" means **environment + parse + optional notebook execution** (and, when sensible, a small local pipeline run).

## Prerequisites

- Python 3.12+ with **`uv`** at repo root
- Optional: Jupyter — **Kernel → Restart & Run All**
- Optional: a local SQLite / DuckDB / small Postgres for SQL notebooks
- Optional: a single-broker Kafka and a local Spark session for streaming / batch notebooks

## Suggested sequence

1. **Dependencies**

   ```powershell
   $Env:UV_LINK_MODE = "copy"
   uv sync
   ```

2. **Import smoke (optional)**

   ```powershell
   uv run python -c "import numpy, pandas; print('ok')"
   ```

3. **Notebook JSON** (same as CI):

   ```powershell
   uv run python -c "import json,glob; paths=sorted(glob.glob('src/**/*.ipynb',recursive=True)); [json.load(open(p,encoding='utf-8')) for p in paths]"
   ```

4. **Manual (optional)** — open a representative notebook from `src/weekN/03-notebooks/`, run all cells. For SQL, run against the embedded engine; for Spark / Kafka, run against the local single-node setup.

## Summary

Report each step **PASS** / **FAIL** / **SKIPPED**.
