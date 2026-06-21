# Documentation Verification — Inspirational Quotes & English Learning

**Main sections** are organized under four primary directories with supporting content.

## Verification matrix

| Concern | Source of truth | Common errors |
|--------|-----------------|---------------|
| Layout | `.clinerules/rules/03-repository-structure.md`, `README.md` | Missing main sections; wrong directory names |
| Quotes | `InspirationalQuotes/` | Missing attribution; improper formatting; lack of educational value |
| Vocabulary | `EnglishLearning/Vocabulary/` | Words out of order; missing sections; improper formatting |
| Grammar | `EnglishLearning/Grammar/` | Lack of quote examples; unclear explanations; poor structure |
| Foundations | `EnglishLearning/Foundations/` | Missing basic concepts; unclear progression |
| Strategic Literacy | `Strategic-Literacy/` | Lack of personal development focus; poor organization |
| Scripts | `Scripts/` | Non-functional PowerShell scripts; missing error handling |
| Public docs | `.clinerules/rules/07-source-material-rules.md` | Listing `source-material/` in public documentation |
| Diagrams | `.clinerules/rules/05-markdown-standards.md` | Missing alt text; poor image naming conventions |
| File naming | `.clinerules/rules/08-file-naming-conventions.md` | Incorrect naming patterns; inconsistent casing |

## Archive handling

- `source-material/.archive/` (if present) is preserved raw/reference material; keep it internal-only and read-only.
- Do not require archive content to appear in main sections during ordinary documentation audits.

## Output format

Use a table: **File | Status | Issues**. Concrete paths only; offer fixes when requested.

When noting teaching issues, explain them in beginner-friendly terms and mention when a missing quote example weakens the real-world explanation.
When noting format issues, mention whether markdown standards are being followed properly.