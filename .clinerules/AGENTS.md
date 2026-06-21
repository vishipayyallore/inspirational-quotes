# Agent instructions (Cline)

This repository is Swamy PKV's personal academic learning workspace for data
stores, pipelines, and hands-on data-engineering study notes, quizzes, notebooks,
and experiments.

## Scope

Applies to: code changes, documentation edits, quizzes, notebooks, and automation inside this repo. Does **not** apply to external repos, one-off shell sessions, or anything outside `d:\msc-dsai\t2-data-stores-pipelines\`.

## Read first

1. `README.md` — repo purpose and current structure.
2. `CLAUDE.md` — repo-level assistant entry point and key policies.
3. `.github/copilot-instructions.md` — canonical assistant rules for this repository.
4. `.clinerules/rules/01-swamy-personal-learning-only.md` — Swamy-only scope (always apply).
5. `.clinerules/rules/06-primary-directives.md` — primary engineering directives for agent work.

### Precedence on conflict

When the files above disagree, resolve in this order (highest wins):

1. `.clinerules/rules/01-swamy-personal-learning-only.md` (scope guardrail; canonical: `.cursor/rules/01_swamy_personal_learning_only.mdc`)
2. `.github/copilot-instructions.md` (canonical assistant rules)
3. `.clinerules/rules/06-primary-directives.md` (canonical: `.cursor/rules/06_primary-directives.mdc`)
4. `CLAUDE.md`
5. `README.md`

`.github/copilot-instructions.md` is **canonical** and overrides `CLAUDE.md` whenever they disagree; `CLAUDE.md` is an entry point and summary, not a source of authority.

### Missing or unreadable files

If any referenced file is missing, empty, or unreadable, proceed with the remaining files and explicitly note the missing reference in your response so Swamy can decide whether to restore it.

If the missing file is ranked #1 or #2 in the precedence list (Swamy-only rule or `.github/copilot-instructions.md`), do not proceed with the task. Notify Swamy and halt until the file is restored. For files ranked #3–#5, proceed with the remaining files and note the gap.

## Cline asset map

| Need | Use |
|------|-----|
| Standing rules | `.clinerules/rules/` (nine rule files) |
| Repeatable procedures | `.clinerules/skills/` |
| Delegated audits | `.clinerules/agents/` |
| Step-by-step workflows | `.clinerules/workflows/` |

## Bundled skills

Treat `.github/skills/` as the source of truth: read and edit skill files there. `.cursor/skills/` is the matching mirror. When you edit any file under `.github/skills/` or `.cursor/skills/`, you must apply the identical change to the corresponding file in the other tree within the same response/commit. The same applies to `.github/agents/` ↔ `.cursor/agents/`.

After editing canonical skills or agents, sync `.clinerules/` via `tools/pyscripts/sync_clinerules_from_canonical.py` and verify with `verify_clinerules_parity.py`.

If you detect that `.github/skills/` and `.cursor/skills/` (or the agents trees) are not byte-identical before you begin an edit, do not proceed. Report the specific files that differ to Swamy and wait for resolution before making any changes to either tree.

If you cannot verify CI status, treat the parity requirement as a hard constraint you must satisfy yourself. Never rely on CI to catch a single-sided edit. If you cannot write to both sides in the same response, make no edit and notify Swamy.

## Prompts

- `.github/prompts/` contains repo-specific task and audit prompts.
