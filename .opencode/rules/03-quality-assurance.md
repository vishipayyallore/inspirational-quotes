# Quality Assurance

## Vocabulary verification (required after every edit)

```powershell
pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1"
```

| Flag | Purpose |
|------|---------|
| `-ShowMismatches` | Show current vs. correct order |
| `-OutFile "Logs/verify-<stamp>.txt"` | Save output to a log file |

Exit codes: `0` = all files in order, `2` = one or more files out of order.

**Always verify after adding, removing, or reordering any word.**

## Content quality checklist

- [ ] Quote attribution is present and accurate.
- [ ] Vocabulary entry follows `## Word ` → `**Meaning**:` → `**Usage**:` format.
- [ ] Words are in strict alphabetical order within the letter file.
- [ ] No duplicate words across files.
- [ ] Usage examples use real quotes (not fabricated).
- [ ] Markdown renders correctly (no broken syntax).

## What not to check

- There is no test suite, no linting, no typechecking — none of that applies.
- The `.clinerules/` directory is for a different agent system; leave it alone.
- `Logs/` files are append-only machine output; do not edit them.
