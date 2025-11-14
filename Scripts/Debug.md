# Vocabulary Verification Log

Short log and pointers to timestamped verification outputs. **Keep this file under 50 lines.**

**Last verification**: 2025-11-13 12:26:00

## Standard Verification Command

```powershell
pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1"
```

## Recent Logs

- `Logs/verify-20251113-122257.txt` — added "Benevolent" to `B.md`
- `Logs/verify-20251113-122600.txt` — added "Fantasticate" to `F.md`

## Notes

- After editing any `EnglishLearning/Vocabulary/*.md` file, run the verification command and save output to `Logs/verify-<timestamp>.txt`.
- All detailed verification history is stored in timestamped log files in `Logs/`.
- Template "WordName" entries are excluded from verification.
- Exit codes: 0 = All files OK, 2 = One or more files out of order.

