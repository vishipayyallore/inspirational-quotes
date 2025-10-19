# Vocabulary Verification Log

This file maintains a record of recent verification runs and the standard verification command used in the project.

---

## Verification Command Template

`powershell
# Standard verification run with mismatch reporting
pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1" -ShowMismatches

# Save verification output to timestamped log
$ts = Get-Date -Format "yyyyMMdd-HHmmss"
$log = "Logs/verify-$ts.txt"
pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1" -ShowMismatches | Tee-Object -FilePath $log
Write-Output "Saved verification log to $log"
`

---

## Recent Verification Runs

### October 16, 2025 - Fix Alphabetical Order (Acquire)

**Status**: ✅ ALL 26 FILES VERIFIED OK
**Details**: Moved `Acquire` to appear before `Acumen` in `A.md` to restore alphabetical order.
**Log**: `Logs/verify-20251016-194548.txt`
**Timestamp**: 2025-10-16 19:45:49

---

### October 17, 2025 - Add Benevolence

**Status**: ✅ ALL 26 FILES VERIFIED OK
**Details**: Added `Benevolence` to `B.md` in correct alphabetical position (after Balance, before bespoke).
**Log**: `Logs/verify-20251017-145447.txt`
**Timestamp**: 2025-10-17 14:54:47
**B.md word count**: 10 words (was 9)

---

### October 18, 2025 - Add Dedicated

**Status**: ✅ ALL 26 FILES VERIFIED OK
**Details**: Added `Dedicated` to `D.md` in correct alphabetical position (after Deciphering, before Deletable).
**Log**: `Logs/verify-20251018-230351.txt`
**Timestamp**: 2025-10-18 23:03:52
**D.md word count**: 17 words (was 16)

---

## Current Vocabulary Collection Status

- **Total vocabulary words**: 279+ across 26 files (A–Z)
- **Files verified**: All 26 files in perfect alphabetical order
- **Recent additions**: Acquire (A), Benevolence (B), Dedicated (D)
- **Last verified**: 2025-10-18 23:03:52

---

## Key Notes

- All vocabulary files maintain strict alphabetical ordering
- Verification script run after every vocabulary addition
- Timestamped logs saved to `Logs/` directory for audit trail
- Exit code: 0 = All files OK, 2 = One or more files out of order
- Old log entries archived to `Scripts/Debug.md.bak`
