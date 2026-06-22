---
description: Run vocabulary alphabetical-order verification
mode: subagent
permission:
  read: allow
  bash:
    "*": ask
    "pwsh -NoProfile -ExecutionPolicy Bypass -File *": allow
  edit: deny
---

Verify that all vocabulary letter files (A.md–Z.md) are in strict alphabetical order.

1. Run `pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1" -ShowMismatches`
2. Report which files pass/fail.
3. If any file is out of order, show both the current and correct sequences.
