# Cline rules index

Mirrors `.cursor/rules/*.mdc` for Cline. Edit the canonical `.mdc` first, then run `uv run python tools/pyscripts/sync_clinerules_from_canonical.py`.

**Note:** Rule bodies mirror `.mdc` files; checked by `verify_clinerules_parity.py` but not markdownlint-guarded in CI (same as `.cursor/rules/*.mdc`).
