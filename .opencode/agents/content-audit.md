---
description: Audit vocabulary and quote content for format compliance
mode: subagent
permission:
  read: allow
  edit: deny
---

Audit content files for compliance with repo conventions.

For each file in `EnglishLearning/Vocabulary/[A-Z].md`:
1. Every `## ` line (word name) must be followed by `**Meaning**:` and `**Usage**:` lines.
2. Words must be in alphabetical order within the file.
3. No empty entries (word name but no meaning/usage).

For quotes across the repo:
1. Quote text should be in blockquotes (`>`).
2. Attribution should be italic (`_— Name_`).
3. Attribution must be present when the source is known.

Report all violations by file and line.
