---
name: ci-checks
description: Run the full CI suite for customer-churn-prediction-ml
license: MIT
compatibility: opencode
metadata:
  workflow: ci
---

## What I do

- Run isort import sorting check on `src/`
- Run black formatting check on `src/`
- Run flake8 serious errors check (E9, F63, F7, F82)
- Run flake8 warnings check (exit-zero, max-complexity=10)
- Validate all notebooks parse as valid JSON
- Run pytest suite on `tests/`

## Exact commands

```powershell
$Env:UV_LINK_MODE = "copy"
uv sync
uv run isort --check-only --diff src/
uv run black --check --line-length 127 --target-version py312 src/
uv run flake8 src/ --count --select=E9,F63,F7,F82 --show-source --statistics
uv run flake8 src/ --count --exit-zero --max-complexity=10 --max-line-length=127 --statistics
uv run python -c "import json,glob; [json.load(open(p,encoding='utf-8')) for p in glob.glob('notebooks/**/*.ipynb', recursive=True)]"
uv run pytest tests/ -q
```

## When to use

Use this after making changes to `src/`, `tests/`, or notebooks to verify everything passes before committing.
