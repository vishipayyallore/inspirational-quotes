# Vocabulary Verification Log

Short log and pointers to timestamped verification outputs. **Keep this file under 50 lines.**

**Last verification**: 2025-11-21 12:23:33

## Standard Verification Command

```powershell
pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1"
```

## Recent Logs

- `Logs/verify-20251121-122333.txt` — added "Equable" to `E.md`
- `Logs/verify-20251120-095713.txt` — added "Resolute" to `R.md`

## Notes

- After editing any `EnglishLearning/Vocabulary/*.md` file, run the verification command and save output to `Logs/verify-<timestamp>.txt`.
- All detailed verification history is stored in timestamped log files in `Logs/`.
- Template "WordName" entries are excluded from verification.
- Exit codes: 0 = All files OK, 2 = One or more files out of order.

