# Vocabulary Verification Log

Short log and pointers to timestamped verification outputs. **Keep this file under 50 lines.**

**Last verification**: 2026-03-21 17:09:25

## Standard Verification Command

```powershell
pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1"
```

## Recent Logs

- 2026-03-21: Reasoning summary: Added `Aplomb` (A.md) as today's unique word in strict alphabetical order. Action(s) taken: Inserted `Aplomb`; updated `VocabularyDefinitions.md`; corrected the initial insertion point; saved final log (`Logs/verify-20260321-170924.txt`). Outcome / verification: All 26 letter files OK; `A.md -> OK (46 words)`.
- 2026-03-20: Reasoning summary: Added `Kairos` (K.md) as today's unique word. Action(s) taken: Inserted `Kairos`; updated `VocabularyDefinitions.md`; saved log (`Logs/verify-20260320-131458.txt`). Outcome / verification: All 26 letter files OK; `K.md -> OK (8 words)`.
- 2026-03-19: Reasoning summary: Added `Diagnosis` (D), `Pericope` (P), and `Prognosis` (P); also verified `Hiraeth` (H). Action(s) taken: Inserted the requested words; refreshed `VocabularyDefinitions.md`; saved log (`Logs/verify-20260319-123103.txt`). Outcome / verification: All 26 letter files OK; `D.md -> OK (22 words)`, `H.md -> OK (13 words)`, `P.md -> OK (49 words)`.
- 2026-03-18: Reasoning summary: Added `Beatific` (B.md) and `Pellucid` (P.md) in strict alphabetical order. Action(s) taken: Inserted both words; updated `VocabularyDefinitions.md`; saved logs (`Logs/verify-20260318-082828.txt`, `Logs/verify-20260318-082700.txt`). Outcome / verification: All 26 letter files OK; `B.md -> OK (26 words)`, `P.md -> OK (47 words)`.
- 2026-03-17: Reasoning summary: Added `Undaunted` (U.md) and `Sub Rosa` (S.md) in strict alphabetical order. Action(s) taken: Inserted both words; updated `VocabularyDefinitions.md`; saved logs (`Logs/verify-20260317-114200.txt`, `Logs/verify-20260317-114330.txt`). Outcome / verification: All 26 letter files OK; `U.md -> OK (16 words)`, `S.md -> OK (50 words)`.

## Notes

- After editing any `EnglishLearning/Vocabulary/*.md` file, run the verification command and save output to `Logs/verify-<timestamp>.txt`.
- Template `WordName` entries are excluded from verification.
- Exit codes: 0 = all files OK, 2 = one or more files out of order.
