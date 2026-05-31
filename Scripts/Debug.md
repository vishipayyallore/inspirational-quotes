# Vocabulary Verification Log

Short log and pointers to timestamped verification outputs. Keep this file under 50 lines.

Last verification: 2026-05-31 08:26:58 — Added Uxorious — all 26 files OK

## Standard Verification Command

```powershell
pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1"
```

## Recent Logs

- 2026-05-31: Reasoning summary: Added Uxorious (U.md) as today's unique word after confirming it was not already present. Action(s) taken: Inserted Uxorious in strict alphabetical order after Usual; ran `pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1" -OutFile "Logs/verify-20260531-082657.txt"`. Outcome / verification: All 26 letter files OK; U.md -> OK (23 words); log saved at Logs/verify-20260531-082657.txt.
- 2026-05-29: Reasoning summary: Added Laureate (L.md) after confirming it did not already exist. Action(s) taken: Inserted Laureate in strict alphabetical order between Latent and Lickety-Split; updated VocabularyDefinitions.md for L; ran `pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1" -OutFile "Logs/verify-20260529-191126.txt"`. Outcome / verification: All 26 letter files OK; L.md -> OK (21 words); log saved at Logs/verify-20260529-191126.txt.

## Notes

- After editing any EnglishLearning/Vocabulary/*.md file, run verification and save output to Logs/verify-[timestamp].txt.
- Template WordName entries are excluded from verification.
- Exit codes: 0 = all files OK, 2 = one or more files out of order.
