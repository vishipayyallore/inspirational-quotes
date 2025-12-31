# Vocabulary Verification Log

Short log and pointers to timestamped verification outputs. **Keep this file under 50 lines.**

**Last verification**: 2025-12-31 18:41:28

## Standard Verification Command

```powershell
pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1"
```

## Recent Logs

- `Logs/verify-20251231-184127.txt` — added "Momentum" (M) and "Simonize" (S); ordering verified OK
- `Logs/verify-20251230-073625.txt` — added "Mascot" (M); ordering verified OK
- `Logs/verify-20251226-100050.txt` — added "Nimble" (N); ordering verified OK
- `Logs/verify-20251225-142101.txt` — added "Clement" (C) and "Yuletide" (Y); ordering verified OK
- `Logs/verify-20251224-150109.txt` — added "Radiance" (R), "Moxie" (M), "Vehement" (V); ordering verified OK
- `Logs/verify-20251223-160223.txt` — fixed `E.md` ordering; added "Alpenglow" (A), "Euphonious" (E)
- `Logs/verify-20251121-125834.txt` — added "Quixotic" to `Q.md` and "Osmosis" to `O.md`
- `Logs/verify-20251121-122333.txt` — added "Equable" to `E.md`

## Notes

- After editing any `EnglishLearning/Vocabulary/*.md` file, run the verification command and save output to `Logs/verify-<timestamp>.txt`.
- All detailed verification history is stored in timestamped log files in `Logs/`.
- Template "WordName" entries are excluded from verification.
- Exit codes: 0 = All files OK, 2 = One or more files out of order.

