# Repository Structure

> **⚠️ README.md is outdated** — it references `InspirationalQuotes/` and `source-material/` which do **not** exist. Below is the real layout.

## Top-level directories

| Path | Contents |
|------|----------|
| `EnglishLearning/` | All learning content |
| `EnglishLearning/Vocabulary/` | `A.md`–`Z.md`, `WordsToOrganize.md`, `VocabularyDefinitions.md` |
| `EnglishLearning/Grammer/` | `Day1.md`–`Day4.md`, `_Template.md` (note: directory is **Grammer** not Grammar) |
| `EnglishLearning/Foundations/` | `Nouns.md`, `Pronouns.md`, `README.md` |
| `EnglishLearning/ChatAbbreviations.md` | Modern chat abbreviation guide |
| `Strategic-Literacy/` | Numbered personal-development content (`01-` through `07-`) |
| `Scripts/` | PowerShell maintenance scripts |
| `Scripts/Verify-Vocabulary.ps1` | Alphabetical-order verification |
| `Logs/` | Verification output files (append-only) |
| `.archive/` | Preserved content — do not modify |
| `.clinerules/` | Cline agent configuration (not for OpenCode) |
| `.opencode/` | OpenCode configuration (this directory) |

## Key facts

- No `InspirationalQuotes/` directory exists despite README references.
- No `source-material/` directory exists despite older rule references.
- No build system, package.json, tests, or CI/CD — pure Markdown.
