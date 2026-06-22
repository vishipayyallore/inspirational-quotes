---
name: vocab-verify
description: Verify alphabetical ordering of vocabulary files and optionally fix mismatches
license: MIT
compatibility: opencode
metadata:
  workflow: quality
---

## What I do

- Run `Scripts/Verify-Vocabulary.ps1` on all 26 letter files
- Report which files are in order and which are out of order
- Show mismatches when `-ShowMismatches` is used
- Save output to `Logs/` when `-OutFile` is specified

## Exact command

```powershell
pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1" -ShowMismatches -OutFile "Logs/verify-$(Get-Date -Format 'yyyyMMdd-HHmmss').txt"
```

## When to use

Use this after adding, removing, or reordering any word in `EnglishLearning/Vocabulary/*.md`. Run before every commit that touches vocabulary files.
