# Vocabulary Verification Log

Short log and pointers to timestamped verification outputs. **Keep this file under 50 lines.**

**Last verification**: 2026-01-26 12:27:15

## Standard Verification Command

```powershell
pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1"
```

## Recent Logs

- `Logs/verify-20260126-122715.txt` — added "Erudite" (E); ordering verified OK
- `Logs/verify-20260120-141946.txt` — added "Laconic" (L); ordering verified OK
- `Logs/verify-20260119-172823.txt` — added "Transcend" (T); ordering verified OK
- `Logs/verify-20260118-003825.txt` — added "Novaturient" (N); ordering verified OK
- `Logs/verify-20260117-103803.txt` — added "Apocope" (A), "Flummox" (F), "Mondegreen" (M); ordering verified OK
- `Logs/verify-20260115-110353.txt` — added "Harmony" (H); ordering verified OK
- `Logs/verify-20260113-122921.txt` — added "Wisdom" (W); fixed alphabetical ordering; verified OK
- `Logs/verify-20260110-102323.txt` — added "Wistful" (W) and "Mephitic" (M); ordering verified OK
- `Logs/verify-20260108-225247.txt` — added "Caesura" (C) and "Reticent" (R); ordering verified OK
- `Logs/verify-20260107-104614.txt` — added "Panglossian" (P); fixed ordering in F/S/T; ordering verified OK
- `Logs/verify-20260106-124851.txt` — added "Interlard" (I) and "Vituperate" (V); ordering verified OK
- `Logs/verify-20260105-181006.txt` — added "First-Foot" (F), "Jovial" (J), "Moschate" (M), "Skosh" (S), "Threshold" (T); ordering verified OK
- `Logs/verify-20260103-110945.txt` — added "Aphorism" (A) and "Reverie" (R); ordering verified OK
- `Logs/verify-20260102-231326.txt` — added "Obdurate" (O); ordering verified OK
- `Logs/verify-20260101-001007.txt` — added "Zeitgeist" (Z); ordering verified OK
- `Logs/verify-20260101-000646.txt` — added "Quotidian" (Q); ordering verified OK

## Notes

- After editing any `EnglishLearning/Vocabulary/*.md` file, run the verification command and save output to `Logs/verify-<timestamp>.txt`.
- All detailed verification history is stored in timestamped log files in `Logs/`.
- Template "WordName" entries are excluded from verification.
- Exit codes: 0 = All files OK, 2 = One or more files out of order.

