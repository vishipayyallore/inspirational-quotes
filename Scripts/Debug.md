# Vocabulary Verification Log

Short log and pointers to timestamped verification outputs. **Keep this file under 50 lines.**

**Last verification**: 2026-03-17 11:43:31

## Standard Verification Command

```powershell
pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1"
```

## Recent Logs

- 2026-03-17
  - Reasoning summary: Added `Undaunted` (U.md) and `Sub Rosa` (S.md) in strict alphabetical order.
  - Action(s) taken: Inserted both words; updated `VocabularyDefinitions.md`; saved logs (`Logs/verify-20260317-114200.txt`, `Logs/verify-20260317-114330.txt`).
  - Outcome / verification: All 26 letter files OK; `U.md -> OK (16 words)`, `S.md -> OK (50 words)`.

- 2026-03-16
  - Reasoning summary: Added `Raconteur` (R.md) and `Triumvirate` (T.md) in strict alphabetical order and corrected the temporary R ordering issue before final verification.
  - Action(s) taken: Inserted both words; updated `VocabularyDefinitions.md`; saved log (`Logs/verify-20260316-124059.txt`).
  - Outcome / verification: All 26 letter files OK; `R.md -> OK (36 words)`, `T.md -> OK (23 words)`.
- 2026-03-15
  - Reasoning summary: Added missing requested words `Candor` (C), `Eidolon` (E), `Inhere` (I), and `Juvenescent` (J) in strict alphabetical order; `Effulgent` and `Odontoid` already existed and were left unchanged.
  - Action(s) taken: Inserted the four missing words; updated `VocabularyDefinitions.md`; saved log (`Logs/verify-20260315-165747.txt`).
  - Outcome / verification: All 26 letter files OK; `C.md -> OK (47 words)`, `E.md -> OK (26 words)`, `I.md -> OK (27 words)`, `J.md -> OK (10 words)`.
- 2026-03-15
  - Reasoning summary: Added `Largesse` (L.md) in strict alphabetical order between `Laconic` and `Latent`.
  - Action(s) taken: Inserted `Largesse`; updated `VocabularyDefinitions.md`; saved log (`Logs/verify-20260315-000732.txt`).
  - Outcome / verification: All 26 letter files OK; `L.md -> OK (13 words)`.
- 2026-03-14
  - Reasoning summary: Added `Eunoia` (E.md) in strict alphabetical order between `Eudaimonia` and `Euphonious`.
  - Action(s) taken: Inserted `Eunoia`; updated `VocabularyDefinitions.md`; saved log (`Logs/verify-20260314-185453.txt`).
  - Outcome / verification: All 26 letter files OK; `E.md -> OK (25 words)`.

## Notes

- After editing any `EnglishLearning/Vocabulary/*.md` file, run the verification command and save output to `Logs/verify-<timestamp>.txt`.
- Template `WordName` entries are excluded from verification.
- Exit codes: 0 = all files OK, 2 = one or more files out of order.
