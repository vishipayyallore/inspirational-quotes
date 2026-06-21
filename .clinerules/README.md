# Cline rules — Data Stores & Pipelines

Personal Cline configuration for **Swamy PKV's** `t2-data-stores-pipelines` learning workspace.

## Layout

| Path | Role |
|------|------|
| `AGENTS.md` | Cline entry point — precedence, scope, pointers |
| `dsp-core-context.md` | Compact always-on repo context |
| `rules/` | Standing guardrails (mirrors `.cursor/rules/*.mdc`) |
| `skills/` | On-demand procedures (mirrors `.github/skills/*/SKILL.md`) |
| `agents/` | Delegated task playbooks (mirrors `.cursor/agents/*.md`) |
| `workflows/` | Step-by-step Cline workflows derived from skills and agents |

## Canonical sources (avoid drift)

When **policy** changes, edit the canonical tree first, then sync this folder:

| Cline path | Canonical source |
|------------|------------------|
| `rules/` | `.cursor/rules/` (`*.mdc`) |
| `skills/` | `.github/skills/` (`SKILL.md` files) |
| `agents/` | `.cursor/agents/` (mirrored at `.github/agents/`) |
| `AGENTS.md` | Root `AGENTS.md` + `CLAUDE.md` summaries |

Regenerate after canonical edits:

```powershell
uv run python tools/pyscripts/sync_clinerules_from_canonical.py
uv run python tools/pyscripts/verify_clinerules_parity.py
```

Skills parity: `.github/skills/` ↔ `.cursor/skills/` (byte-identical). Agents parity: `.github/agents/` ↔ `.cursor/agents/`. Cline parity: `.clinerules/` ↔ canonical trees — `verify_clinerules_parity.py` / `ci-agent-docs-guard.yml`.

## Reference

Community patterns: [cline/clinerules](https://github.com/cline/clinerules) on GitHub.
