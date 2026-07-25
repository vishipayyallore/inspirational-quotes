# Vocabulary Verification Log

Short log and pointers to timestamped verification outputs. Keep this file concise.

Last verification: 2026-07-25 12:07:06 — H.md five-field facelift — all 26 files OK

## Standard Verification Command

```powershell
pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1"
```

## Recent Logs

- 2026-07-25: Reasoning summary: Normalized H.md to the repository's five-field vocabulary format without changing word order. Action(s) taken: Added Grammar, Synonyms, and Antonyms to every entry in `EnglishLearning/Vocabulary/H.md`; ran `pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1" -OutFile "Logs/verify-20260725-000000.txt"`. Outcome / verification: all 26 letter files OK; `H.md` -> OK (24 words); log saved at Logs/verify-20260725-000000.txt.
- 2026-07-24: Reasoning summary: Applied targeted quality fixes in G.md to improve synonym/antonym precision and keep entries aligned to the usage sense. Action(s) taken: Refined flagged lines for Gastronomy, Gazelle, Gorge, Gouging, and Grimoire in `EnglishLearning/Vocabulary/G.md`; ran `pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1" -OutFile "Logs/verify-20260724-095103.txt"`. Outcome / verification: all 26 letter files OK; `G.md` -> OK (21 words); log saved at Logs/verify-20260724-095103.txt.
- 2026-07-24: Reasoning summary: Refreshed G.md to match the repository's five-field vocabulary format without changing word order. Action(s) taken: Added Grammar, Synonyms, and Antonyms to all entries in `EnglishLearning/Vocabulary/G.md`; ran `pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1" -OutFile "Logs/verify-20260724-094753.txt"`. Outcome / verification: all 26 letter files OK; `G.md` -> OK (21 words); log saved at Logs/verify-20260724-094753.txt.

## Notes

- After editing any EnglishLearning/Vocabulary/*.md file, run verification and save output to Logs/verify-[timestamp].txt.
- Template WordName entries are excluded from verification.
- Exit codes: 0 = all files OK, 2 = one or more files out of order.
