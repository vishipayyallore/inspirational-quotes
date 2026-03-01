# Vocabulary Verification Log

Short log and pointers to timestamped verification outputs. **Keep this file under 50 lines.**

**Last verification**: 2026-02-28 18:27:55

## Standard Verification Command

```powershell
pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1"
```

## Recent Logs

- 2026-02-28
  - Reasoning summary: Added today's unique word `Watershed` to `W.md` in strict alphabetical order.
  - Action(s) taken: Inserted `Watershed` between `Wary` and `Wheedle`; updated `VocabularyDefinitions.md`; ran verification and saved output (`Logs/verify-20260228-000000.txt`).
  - Outcome / verification: All 26 letter files OK; `W.md -> OK (9 words)`.
- 2026-02-27
  - Reasoning summary: Added today’s unique word `Yare` to `Y.md` in strict alphabetical order.
  - Action(s) taken: Inserted `Yare` before `Yearn`; updated `VocabularyDefinitions.md`; ran verification and saved output (`Logs/verify-20260227-000001.txt`).
  - Outcome / verification: All 26 letter files OK; `Y.md -> OK (7 words)`.
- 2026-02-26
  - Reasoning summary: Added today’s unique word `Xenodochy` to `X.md` in strict alphabetical order.
  - Action(s) taken: Inserted `Xenodochy` between `Xenial` and `Xenophobia`; updated `VocabularyDefinitions.md`; ran verification and saved output (`Logs/verify-20260226-092044.txt`).
  - Outcome / verification: All 26 letter files OK; `X.md -> OK (3 words)`.
- 2026-02-25
  - Reasoning summary: Added today’s unique word `Lyricism` to `L.md` and preserved alphabetical order.
  - Action(s) taken: Inserted `Lyricism` after `Lunation`; updated `VocabularyDefinitions.md`; ran verification and saved output (`Logs/verify-20260225-062642.txt`).
  - Outcome / verification: All 26 letter files OK; `L.md -> OK (12 words)`.
- 2026-02-24
  - Reasoning summary: Added 3 new words (Platitude, Breviloquent, Lodestar).
  - Action(s) taken: Inserted in correct alphabetical positions; ran verification (`Logs/verify-20260224-152752.txt`).
  - Outcome / verification: All 26 files OK.

## Notes

- After editing any `EnglishLearning/Vocabulary/*.md` file, run the verification command and save output to `Logs/verify-<timestamp>.txt`.
- Template `WordName` entries are excluded from verification.
- Exit codes: 0 = all files OK, 2 = one or more files out of order.
