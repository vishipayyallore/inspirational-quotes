---
name: ci-checks
description: Run CI-aligned checks for Data Stores & Pipelines (Python lint, recursive notebook JSON parse, markdown lint, optional Lychee). Use when asked to run CI, lint, or verify code quality after content or notebook updates.
tags: ["dsp", "skill", "ci-checks"]
canonical: .github/skills/ci-checks/SKILL.md
---

# CI Checks — Local Runner (Data Stores & Pipelines)

Commands mirror `.github/workflows/ci-python.yml` and `.github/workflows/ci-documentation.yml`.

## Policy

- **Quality expectations:** `.cursor/rules/04_quality-assurance.mdc` and `.github/copilot-instructions.md`.

## Prerequisites

- **Python:** `uv` at repo root — `uv sync` (dev dependency group supplies `ruff`, `pytest`).
- **Node.js:** **20.x** for `markdownlint-cli2` (match `ci-documentation.yml`).
- **Link checks:** **Docker** with `lycheeverse/lychee:latest`, local `lychee`, or `.\tools\psscripts\Run-MarkdownLintAndLychee.ps1`.

### Windows / `uv run` troubleshooting

If `uv run` fails with **"Failed to canonicalize script path"** (some Windows setups), use the project venv after `uv sync`, for example:

```powershell
.\.venv\Scripts\python.exe -m ruff check src/ tests/ --fix
.\.venv\Scripts\python.exe -m ruff format src/ tests/
```

Or use `py -3.12 -m ruff` with the same flags if that interpreter is on PATH.

## Checks to run

Report each as PASS or FAIL with output.

### 1. ruff (primary lint + format)

```powershell
uv run ruff check src/ tests/
uv run ruff check --fix src/ tests/   # apply auto-fixable changes
uv run ruff format src/ tests/        # formatting pass
```

### 2. pytest

```powershell
uv run pytest -q
```

### 3. Notebook JSON parse

```powershell
uv run python -c "import json,glob; paths=sorted(glob.glob('src/**/*.ipynb',recursive=True)); [json.load(open(p,encoding='utf-8')) for p in paths]"
```

### 4. markdownlint-cli2

```powershell
npx --yes markdownlint-cli2 "README.md" "docs/**/*.md" "src/**/*.md" "tools/**/*.md"
```

### Optional — Lychee (Docker, recommended)

```powershell
docker run --rm `
  -v "${PWD}:/workspace" `
  -w /workspace `
  lycheeverse/lychee:latest `
  --config lychee.toml --cache --max-cache-age 1d '**/*.md'
```

Or: `.\tools\psscripts\Run-MarkdownLintAndLychee.ps1 -LycheeOnly` / local `lychee` with the same flags.

## Execution strategy

Run 1–3 from repo root with `uv`; run 4 with Node. Parallelize Python checks where helpful.

## On failure

- **Ruff:** suggest `uv run ruff check --fix src/ tests/` and `uv run ruff format src/ tests/` from repo root (verify `pyproject.toml` `tool.ruff` settings).
- **pytest / markdownlint / JSON parse:** report file (and line if applicable); do not skip silently.

## Summary format

| # | Check | Status | Notes |
|---|--------|--------|-------|
| 1 | ruff | | |
| 2 | pytest | | |
| 3 | notebooks JSON | | |
| 4 | markdownlint | | |

When a failure affects teaching content, explain the impact in beginner-friendly language.
