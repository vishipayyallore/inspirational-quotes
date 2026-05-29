# Vocabulary Verification Log

Short log and pointers to timestamped verification outputs. Keep this file under 50 lines.

Last verification: 2026-05-29 19:11:28 — Added Laureate — all 26 files OK

## Standard Verification Command

```powershell
pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1"
```

## Recent Logs

- 2026-05-29: Reasoning summary: Added Laureate (L.md) after confirming it did not already exist. Action(s) taken: Inserted Laureate in strict alphabetical order between Latent and Lickety-Split; updated VocabularyDefinitions.md for L; ran `pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1" -OutFile "Logs/verify-20260529-191126.txt"`. Outcome / verification: All 26 letter files OK; L.md -> OK (21 words); log saved at Logs/verify-20260529-191126.txt.

## Notes

- After editing any EnglishLearning/Vocabulary/*.md file, run verification and save output to Logs/verify-[timestamp].txt.
- Template WordName entries are excluded from verification.
- Exit codes: 0 = all files OK, 2 = one or more files out of order.
