# Vocabulary Verification Log

Short log and pointers to timestamped verification outputs. **Keep this file under 50 lines.**

**Last verification**: 2025-11-18 10:54:34

## Standard Verification Command

```powershell
pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1"
```

## Recent Logs

- `Logs/verify-20251118-105434.txt` — added "Verisimilitude" to `V.md`
- `Logs/verify-20251117-104503.txt` — added "Sagacious" to `S.md`

## Notes

- After editing any `EnglishLearning/Vocabulary/*.md` file, run the verification command and save output to `Logs/verify-<timestamp>.txt`.
- All detailed verification history is stored in timestamped log files in `Logs/`.
- Template "WordName" entries are excluded from verification.
- Exit codes: 0 = All files OK, 2 = One or more files out of order.

