---
description: Run CI-aligned local checks for Data Stores & Pipelines (ruff, pytest, notebooks, markdownlint)
tags: ["dsp", "workflow", "ci"]
version: 1.0
---

# Workflow: Run CI checks (DSP)

**Objective:** Validate this repo after substantive edits using the same checks as GitHub Actions.

## Prerequisites

- Repository root: `d:\msc-dsai\t2-data-stores-pipelines`
- `uv sync` completed
- Node.js 20.x for markdownlint (optional Lychee via Docker)

## Steps

1. Read `.clinerules/skills/ci-checks.md` for exact commands — do not invent flags.
2. From repo root, run **ruff** check and format on `src/` and `tests/`.
3. Run **pytest** (`uv run pytest -q`).
4. Parse all notebook JSON under `src/**/*.ipynb`.
5. Run **markdownlint-cli2** on `README.md`, `docs/**/*.md`, `src/**/*.md`, `tools/**/*.md`.
6. (Optional) Run Lychee via Docker or `.\tools\psscripts\Run-MarkdownLintAndLychee.ps1`.

## Output

Report a summary table: Check | PASS/FAIL | Notes.

If any check fails, show the minimal failing output (file + line/rule). Explain teaching-impact failures in beginner-friendly language.

## Do not

- Skip failing checks silently.
- Commit secrets or real connection strings while fixing lint issues.

## Related

- Agent: `.clinerules/agents/dsp-ci-verify.md`
- Canonical skill: `.github/skills/ci-checks/SKILL.md`
