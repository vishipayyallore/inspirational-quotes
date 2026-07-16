# Vocabulary Management Prompt

## Context

You are working with an inspirational quotes repository that includes English learning materials. The vocabulary is organized alphabetically across 26 files (A.md through Z.md) in the `EnglishLearning/Vocabulary/` directory.

## Critical Requirements

### 1. Alphabetical Ordering

- **STRICT REQUIREMENT**: All vocabulary words within each file MUST be in perfect alphabetical order
- Each word is represented as a markdown heading: `## WordName`
- Template entries (`## WordName`) should be excluded from verification
- Any ordering violations must be fixed immediately
- Compare the full spelling of near-prefix words before insertion so entries like `Avionic` and `Avionics` land in the correct order

### 1.1 Duplicate Prevention

- Search the entire `EnglishLearning/Vocabulary/` folder before adding a word
- If the word already exists, update the existing entry instead of creating a duplicate
- If the user supplies a partial entry, preserve the given text and add only missing fields among `Meaning`, `Usage`, `Grammar`, `Synonyms`, and `Antonyms` when that can be done cleanly

### 2. Verification Process

Use the PowerShell verification script located at:

```text
Scripts/Verify-Vocabulary.ps1
```

**Basic verification commands:**

```powershell
# Quick verification (console output)
pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1"

# Save results to timestamped log
pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1" -OutFile "Logs/verify-$(Get-Date -Format 'yyyyMMdd-HHmmss').txt"

# Detailed verification with mismatch details
pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1" -ShowMismatches
```

### 3. File Structure Standards

Each vocabulary entry follows this exact format:

```markdown
## WordName

**Meaning**: Clear, concise definition of the word.
**Usage**: "Quote or example sentence." - Explanation of the usage context.
**Grammar**: Part of speech and form details.
**Synonyms**: Comma-separated related words.
**Antonyms**: Comma-separated opposite words.
```

### 4. Documentation Requirements

- Log all verification activities in `Scripts/Debug.md`
- Save verification outputs to `Logs/` with timestamps
- Update the master index `VocabularyDefinitions.md` when adding new words

## Workflow for Adding New Vocabulary

1. **Identify the correct file** (based on first letter)
2. **Find the alphabetical insertion point**
3. **Add the word using the standard format**
4. **Run verification** to confirm ordering
5. **Fix any ordering issues** immediately
6. **Log the verification results**

## Agent Instructions

- Before editing, check whether the target word already exists elsewhere in the vocabulary set
- Do not rely on the currently selected file alone; verify the intended target letter against the first character of the word
- Keep additions minimal and avoid changing unrelated entries while inserting a new word
- Prefer one focused edit followed by verification over multiple speculative changes

## Common Issues & Solutions

### Out of Order Words

- Use the `-ShowMismatches` flag to see Current vs Correct ordering
- Edit files to move words to their correct alphabetical positions
- Re-run verification after each fix

### Template Exclusion

- The verification script automatically excludes `## WordName` template entries
- Only actual vocabulary words are checked for ordering

### Markdown Formatting

- Ensure proper spacing around headings (MD022 compliance)
- Use consistent formatting for all entries
- Maintain blank lines between sections

## Emergency Recovery

If multiple files are out of order:

1. Run detailed verification: `pwsh ... -ShowMismatches`
2. Note which files are "OUT OF ORDER"
3. For each file, compare "Current" vs "Correct" word lists
4. Edit files to match the "Correct" ordering
5. Re-verify until all files show "OK"

## Quality Assurance

- **Before committing**: Always run a final verification
- **Exit code 0**: All files correctly ordered
- **Exit code 2**: One or more files out of order
- **Target state**: All 26 files showing "OK" status

## Example Success Output

```text
Verification run: 2025-08-31 19:45:00
A.md -> OK (23 words)
B.md -> OK (6 words)
C.md -> OK (27 words)
...
Z.md -> OK (0 words)
```

This prompt ensures vocabulary integrity and maintains the educational value of the learning materials.
