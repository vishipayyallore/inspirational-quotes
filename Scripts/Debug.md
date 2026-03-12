# Vocabulary Verification Log

Short log and pointers to timestamped verification outputs. **Keep this file under 50 lines.**

**Last verification**: 2026-03-12 14:21:17

## Standard Verification Command

```powershell
pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1"
```

## Recent Logs

- 2026-03-12
  - Reasoning summary: Added `Salutary` (S.md) in strict alphabetical order between `Salient` and `Sanguine`.
  - Action(s) taken: Inserted `Salutary`; updated `VocabularyDefinitions.md`; saved log (`Logs/verify-20260312-142115.txt`).
  - Outcome / verification: All 26 letter files OK; `S.md -> OK (49 words)`.
- 2026-03-11
  - Reasoning summary: Added `Hearten` (H.md) in strict alphabetical order between `Harmony` and `Hogwash`.
  - Action(s) taken: Inserted `Hearten`; updated `VocabularyDefinitions.md`; saved log (`Logs/verify-20260311-160322.txt`).
  - Outcome / verification: All 26 letter files OK; `H.md -> OK (12 words)`.
- 2026-03-07
  - Reasoning summary: Added `Ingenuity` (I.md) in strict alphabetical order between `Ingeminate` and `Ingest`.
  - Action(s) taken: Inserted `Ingenuity`; updated `VocabularyDefinitions.md`; saved log (`Logs/verify-20260307-212422.txt`).
  - Outcome / verification: All 26 letter files OK; `I.md -> OK (26 words)`.
- 2026-03-05
  - Reasoning summary: Added `Dexterity` (D.md) in strict alphabetical order between `Devious` and `Diaphanous`.
  - Action(s) taken: Inserted `Dexterity`; updated `VocabularyDefinitions.md`; saved log (`Logs/verify-20260305-001201.txt`).
  - Outcome / verification: All 26 letter files OK; `D.md -> OK (21 words)`.
- 2026-03-04
  - Reasoning summary: Added `Querulous` (Q.md) in strict alphabetical order between `Quell` and `Quest`.
  - Action(s) taken: Inserted `Querulous`; updated `VocabularyDefinitions.md`; saved log (`Logs/verify-20260304-204843.txt`).
  - Outcome / verification: All 26 letter files OK; `Q.md -> OK (10 words)`.
- 2026-03-02
  - Reasoning summary: Added `Buoyant` (B.md) and `Hogwash` (H.md) in strict alphabetical order.
  - Action(s) taken: Inserted both words; updated `VocabularyDefinitions.md`; saved log (`Logs/verify-20260302-*.txt`).
  - Outcome / verification: All 26 letter files OK; `B.md -> OK`, `H.md -> OK`.
- 2026-03-01
  - Reasoning summary: Added 4 words (`Vade Mecum`, `Ascribe`, `Mumpsimus`, `Odontoid`) in strict alphabetical order.
  - Action(s) taken: Inserted all 4 words; updated `VocabularyDefinitions.md`; saved log (`Logs/verify-20260301-120000.txt`).
  - Outcome / verification: All 26 letter files OK; A.md(44), M.md(18), O.md(12), V.md(15).

## Notes

- After editing any `EnglishLearning/Vocabulary/*.md` file, run the verification command and save output to `Logs/verify-<timestamp>.txt`.
- Template `WordName` entries are excluded from verification.
- Exit codes: 0 = all files OK, 2 = one or more files out of order.
