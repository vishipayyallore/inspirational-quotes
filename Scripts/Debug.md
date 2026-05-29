# Vocabulary Verification Log

Short log and pointers to timestamped verification outputs. Keep this file under 50 lines.

Last verification: 2026-05-29 19:04:52 — Added Flâneur and Mercurial — all 26 files OK

## Standard Verification Command

```powershell
pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1"
```

## Recent Logs

- 2026-05-29: Reasoning summary: Added Flâneur (F.md) and Mercurial (M.md) after confirming they did not already exist. Action(s) taken: Inserted Flâneur in strict alphabetical order between Flagship and Flattery; inserted Mercurial between Meraki and Metanoia; updated VocabularyDefinitions.md for F and M; ran `pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1" -OutFile "Logs/verify-20260529-190451.txt"`. Outcome / verification: All 26 letter files OK; F.md -> OK (29 words), M.md -> OK (26 words); log saved at Logs/verify-20260529-190451.txt.

## Notes

- After editing any EnglishLearning/Vocabulary/*.md file, run verification and save output to Logs/verify-[timestamp].txt.
- Template WordName entries are excluded from verification.
- Exit codes: 0 = all files OK, 2 = one or more files out of order.
