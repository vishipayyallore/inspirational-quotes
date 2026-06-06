# Vocabulary Verification Log

Short log and pointers to timestamped verification outputs. Keep this file under 50 lines.

Last verification: 2026-06-05 12:54:17 — Added Davenport; confirmed Interlard already existed — all 26 files OK

## Standard Verification Command

```powershell
pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1"
```

## Recent Logs

- 2026-06-05: Reasoning summary: Added Davenport (D.md) after confirming it was not already present; confirmed Interlard already existed in I.md. Action(s) taken: Inserted Davenport in strict alphabetical order; updated VocabularyDefinitions.md for D; ran `pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1" -OutFile "Logs/verify-20260605-125417.txt"`. Outcome / verification: All 26 letter files OK; D.md -> OK (25 words); log saved at Logs/verify-20260605-125417.txt.
- 2026-06-04: Reasoning summary: Added Droll (D.md) and Repose (R.md) after confirming they were not already present. Action(s) taken: Inserted both words in strict alphabetical order; updated VocabularyDefinitions.md for D and R; ran `pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1" -OutFile "Logs/verify-20260604-104254.txt"`. Outcome / verification: All 26 letter files OK; D.md -> OK (24 words); R.md -> OK (40 words); log saved at Logs/verify-20260604-104254.txt.
- 2026-06-02: Reasoning summary: Added Brummagem (B.md), Hopscotch (H.md), and Skirl (S.md) after confirming they were not already present. Action(s) taken: Inserted each word in strict alphabetical order; updated VocabularyDefinitions.md for B, H, and S; ran `pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1" -OutFile "Logs/verify-20260602-131107.txt"`. Outcome / verification: All 26 letter files OK; B.md -> OK (31 words); H.md -> OK (19 words); S.md -> OK (62 words); log saved at Logs/verify-20260602-131107.txt.
- 2026-06-01: Reasoning summary: Added Unctuous (U.md) as today's unique word after confirming it was not already present. Action(s) taken: Inserted Unctuous in strict alphabetical order between Uncomfortable and Undaunted; updated VocabularyDefinitions.md for U; ran `pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1" -OutFile "Logs/verify-20260601-135249.txt"`. Outcome / verification: All 26 letter files OK; U.md -> OK (24 words); log saved at Logs/verify-20260601-135249.txt.
- 2026-05-31: Reasoning summary: Added Uxorious (U.md) as today's unique word after confirming it was not already present. Action(s) taken: Inserted Uxorious in strict alphabetical order after Usual; ran `pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1" -OutFile "Logs/verify-20260531-082657.txt"`. Outcome / verification: All 26 letter files OK; U.md -> OK (23 words); log saved at Logs/verify-20260531-082657.txt.
- 2026-05-29: Reasoning summary: Added Laureate (L.md) after confirming it did not already exist. Action(s) taken: Inserted Laureate in strict alphabetical order between Latent and Lickety-Split; updated VocabularyDefinitions.md for L; ran `pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1" -OutFile "Logs/verify-20260529-191126.txt"`. Outcome / verification: All 26 letter files OK; L.md -> OK (21 words); log saved at Logs/verify-20260529-191126.txt.

## Notes

- After editing any EnglishLearning/Vocabulary/*.md file, run verification and save output to Logs/verify-[timestamp].txt.
- Template WordName entries are excluded from verification.
- Exit codes: 0 = all files OK, 2 = one or more files out of order.
