# Inspirational Quotes & English Learning

Personal English-learning workspace by Viswanatha Swamy. Markdown-only content — no build system, no tests, no package.json.

## Real directory structure (README is outdated)

| Directory | Contents |
|-----------|----------|
| `EnglishLearning/Vocabulary/` | **A.md – Z.md** (alphabetical vocab), `WordsToOrganize.md`, `VocabularyDefinitions.md` |
| `EnglishLearning/Grammer/` | `Day1.md`–`Day4.md` (note: directory is spelled `Grammer`, not `Grammar`) |
| `EnglishLearning/Foundations/` | `Nouns.md`, `Pronouns.md` |
| `Strategic-Literacy/` | `01-today-is-mine.md` … `07-negotiation-defensive.md` |
| `Scripts/` | `Verify-Vocabulary.ps1` (see below) |
| `.clinerules/` | Cline agent config — rules, skills, workflows |
| `.archive/` | Preserved content — **do not modify** |

`InspirationalQuotes/` and `source-material/` do **not** exist despite being referenced in older docs.

## Vocabulary verification

Always verify alphabetical ordering after editing any letter file:

```powershell
pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1"
```

Add `-ShowMismatches` to see current vs. correct order; add `-OutFile "Logs/verify-<stamp>.txt"` to persist. Exit codes: 0 = OK, 2 = out of order.

## Vocabulary agent rules

- Check the full vocabulary set before adding a new word to avoid duplicates or near-duplicate spellings.
- Put the entry in the file that matches the word's first letter and verify the exact insertion point against neighboring words.
- Preserve both Meaning and Usage when possible; if a field is missing, add it cleanly without rewriting unrelated content.
- After every vocabulary edit, run the verification script and record the result in `Logs/` and `Scripts/Debug.md`.

## Content conventions

- **Vocab entries**: `## WordName` then `**Meaning**: …` then `**Usage**: "…"`.
- Words must be in **strict alphabetical order** within each letter file.
- Quote formatting: blockquote (`>`) for quote text, italic (`_— Author_`) for attribution.
- Attribution must be preserved when known.

## What to leave alone

- `Logs/` — verification output files (append-only).
- `.archive/` — preserved content, never edit or delete.
- `.clinerules/` — Cline-specific instructions; OpenCode should not modify these.
