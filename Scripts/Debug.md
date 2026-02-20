# Vocabulary Verification Log

Short log and pointers to timestamped verification outputs. **Keep this file under 50 lines.**

**Last verification**: 2026-02-21 00:43:15

## Standard Verification Command

```powershell
pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1"
```

## Recent Logs

- 2026-02-21
	- Reasoning summary: Added today's unique word to N.
	- Action(s) taken: Added "Numinous" (inspiring awe/reverence; of spiritual quality); placed after "Nudge" alphabetically; updated VocabularyDefinitions.md; ran verification (Logs/verify-20260221-004314.txt).
	- Outcome / verification: N.md OK (12 words). A.md has pre-existing ordering issue.
- 2026-02-17
	- Reasoning summary: Added today's unique word to H.
	- Action(s) taken: Added "Harbinger" (forerunner or signal); initially placed incorrectly after Harmony, corrected to proper position after Hallucination; ran verification (Logs/verify-20260217-074409.txt).
	- Outcome / verification: Ordering verified OK after correction.
- 2026-02-12
	- Reasoning summary: Added today's unique word to D.
	- Action(s) taken: Added "Discernment" (ability to judge well); ran verification (Logs/verify-20260212-123221.txt).
	- Outcome / verification: Ordering verified OK.
- 2026-02-09
	- Reasoning summary: Added today's unique word to V.
	- Action(s) taken: Added "Verdant" (green with vegetation); ran verification (Logs/verify-20260209-190620.txt).
	- Outcome / verification: Ordering verified OK.
- 2026-02-07
	- Reasoning summary: Added today's unique word to B.
	- Action(s) taken: Added "Bliss"; ran verification (Logs/verify-20260207-192022.txt).
	- Outcome / verification: Ordering verified OK.
- `Logs/verify-20260202-000730.txt` — added "Beacon" (B); ordering verified OK
- `Logs/verify-20260201-000000.txt` — added "Sonder" (S); ordering verified OK
- `Logs/verify-20260130-090810.txt` — added "Mythomania" (M); fixed R ordering; ordering verified OK
- `Logs/verify-20260127-071426.txt` — added "Atiptoe" (A); ordering verified OK
- `Logs/verify-20260126-175039.txt` — added "Boustrophedon" (B), "Inure" (I), "Scofflaw" (S), "Anatine" (A), "Krummholz" (K), "Circumambient" (C), "Hypethral" (H); ordering verified OK

## Notes

- After editing any `EnglishLearning/Vocabulary/*.md` file, run the verification command and save output to `Logs/verify-<timestamp>.txt`.
- All detailed verification history is stored in timestamped log files in `Logs/`.
- Template "WordName" entries are excluded from verification.
- Exit codes: 0 = All files OK, 2 = One or more files out of order.

