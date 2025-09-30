# GitHub Copilot Instructions

## Project Overview

This repository contains an **Inspirational Quotes Collection** and **English Learning Materials** designed to help users improve their vocabulary and language skills through meaningful quotes and structured learning resources.

## Project Structure

```
inspirational-quotes/
├── .github/
│   ├── copilot-instructions.md
│   └── prompts/                    # Comprehensive prompt collection
│       ├── vocabulary-management.md # Vocabulary verification and management
│       ├── content-creation.md      # Quote and learning content creation
│       ├── educational-review.md    # Educational content review and quality
│       └── project-maintenance.md   # Project structure and maintenance
├── .copilot/
│   └── settings.json               # VS Code settings optimized for vocabulary work
├── EnglishLearning/
│   ├── DailyLearningTemplate.md    # Template for daily learning sessions
│   ├── EnglishLearningPlan.md      # Comprehensive learning plan
│   ├── SampleDailyLearningPlan.md  # Example daily learning schedule
│   ├── Daily/                      # Daily learning sessions
│   │   ├── Day1.md - Day7.md       # Individual daily lessons
│   └── Vocabulary/                 # Vocabulary definitions organized by letter
│       ├── A.md - Z.md             # ALL 26 alphabetically organized vocabulary files
│       └── VocabularyDefinitions.md # Master index of all vocabulary
├── InspirationalQuotes/
│   └── InspirationalQuotes.md      # Collection of inspirational quotes
├── Logs/                           # Verification and activity logs
│   └── verify-*.txt                # Timestamped verification results
├── Scripts/                        # PowerShell automation scripts
│   ├── Debug.md                    # Verification logs and debugging commands
│   └── Verify-Vocabulary.ps1       # Alphabetical order verification
├── LICENSE
└── README.md
```

## Current Project Status (September 1, 2025)

### Vocabulary Collection Status

- **Total Vocabulary Words**: 239+ words across 26 files
- **Complete Alphabet Coverage**: ALL 26 files (A.md through Z.md) have content
- **Recent Additions**: New words added to Q.md (Quest), X.md (Xenophobia), Y.md (Yearn), Z.md (Zeal)
- **Verification Status**: All files verified OK with strict alphabetical ordering
- **Recent Updates**: B.md (7 words), P.md (22 words) with ordering corrections

### Infrastructure Enhancements

- **Automated Verification**: PowerShell script for alphabetical order checking
- **Logging System**: Timestamped verification logs in Logs/
- **Prompt Collection**: Comprehensive prompts in .github/prompts/ for various workflows
- **Quality Assurance**: Markdown linting and formatting standards established

## Coding Guidelines

### Vocabulary File Standards

When working with vocabulary files (`EnglishLearning/Vocabulary/*.md`):

1. **Complete Alphabet Coverage**: ALL 26 alphabet files (A.md through Z.md) exist and are ready for content
2. **Alphabetical Organization**: ALL vocabulary words within each file MUST be in strict alphabetical order
3. **Template Format**: Each file includes a consistent template for adding new words:

   ```markdown
   <!-- Add vocabulary words here following the format:
   ## WordName

   **Meaning**: Clear, concise definition of the word.
   **Usage**: "Quote or example sentence." - Explanation of the usage context.
   -->
   ```

4. **Consistent Format**: Use this exact structure for each word entry:

   ```markdown
   ## WordName

   **Meaning**: Clear, concise definition of the word.
   **Usage**: "Quote or example sentence." - Explanation of the usage context.
   ```

5. **File Naming**: Use single letter filenames (A.md, B.md, etc.) for vocabulary organized by first letter
6. **Header Format**: Each file should start with `# [Letter] Vocabulary Definitions`

### Verification Requirements

- **CRITICAL**: After any edits to vocabulary files, alphabetical order MUST be verified
- Use the dedicated PowerShell verification script:

  ```powershell
  # Basic verification
  pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1"

  # Detailed verification with mismatch details
  pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1" -ShowMismatches

  # Save results to timestamped log
  pwsh -NoProfile -ExecutionPolicy Bypass -File "Scripts/Verify-Vocabulary.ps1" -OutFile "Logs/verify-$(Get-Date -Format 'yyyyMMdd-HHmmss').txt"
  ```

- Document all verification activities in `Scripts/Debug.md`
- Always exclude template "WordName" entries from verification
- Exit codes: 0 = All files OK, 2 = One or more files out of order

### Content Standards

1. **Inspirational Quotes**: Focus on motivational, educational, and positive content
2. **Vocabulary Definitions**: Provide clear, educational definitions with practical usage examples
3. **Learning Materials**: Structure content to support progressive English language learning

### Quality Assurance

- Maintain consistent markdown formatting throughout all files
- Ensure all vocabulary entries include both meaning and usage examples
- Keep the master vocabulary index (`VocabularyDefinitions.md`) synchronized with individual files
- Regular verification of alphabetical ordering is essential
- Use markdown linting to maintain file quality (MD032, MD022, MD047, MD036)

- Maintain consistent markdown formatting throughout all files
- Ensure all vocabulary entries include both meaning and usage examples
- Keep the master vocabulary index (`VocabularyDefinitions.md`) synchronized with individual files
- Regular verification of alphabetical ordering is essential

### Git Workflow

- Use descriptive branch names (e.g., `swamy/vocabulary-updates`, `swamy/daily-lessons`)
- Include verification results in commit messages when updating vocabulary files
- Maintain the Debug.md file with detailed logs of all organizational activities

## Special Considerations

### Alphabetical Ordering Priority

This is a **CRITICAL REQUIREMENT**: The vocabulary files have undergone extensive organization to ensure perfect alphabetical ordering. Any modifications to vocabulary files must preserve this ordering. Recent verification sessions have confirmed:

**Current Status (September 1, 2025):**

- **ALL 26 alphabet files (A-Z) are present and correctly ordered**
- **Template integration complete**: All files include vocabulary formatting template
- **Recent verification**: A.md (23 words), C.md (27 words), P.md (22 words) confirmed correctly ordered
- **Total collection**: 239+ vocabulary words across 26 files in perfect alphabetical order
- **New content**: Q.md (Quest), X.md (Xenophobia), Y.md (Yearn), Z.md (Zeal) recently added

**Previous Achievements:**

- Complete file creation: Added missing J.md, Q.md, X.md, Y.md, Z.md
- Resolved ordering issues in multiple files during July-August 2025 sessions
- Established comprehensive verification procedures using PowerShell scripts
- Implemented markdown linting standards (MD032, MD022, MD047, MD036)

### Debugging and Verification

- Always update `Scripts/Debug.md` with verification commands and results
- Include timestamps and session details for all organizational activities
- Document any issues found and their resolutions

## File Maintenance

When suggesting changes to existing files:

1. Preserve the established structure and formatting
2. Maintain alphabetical order in vocabulary files
3. Update related files (like indexes) when adding new content
4. Include verification steps in any vocabulary-related changes

## Educational Focus

This project serves learners of English as a second language. Ensure all content:

- Uses clear, accessible language
- Provides practical usage examples
- Supports progressive learning
- Maintains educational value and positive messaging

## Daily Learning Routine

To stay aligned with the user’s goals, every study session must cover:

1. **Vocabulary (≈3 minutes):** Introduce exactly one new word each day, add it to the appropriate `EnglishLearning/Vocabulary/[A-Z].md` file in strict alphabetical order, and document its meaning and usage.
2. **Core Grammar Practice (≈6 minutes):** Use the updated `EnglishLearning/Daily/_Template.md` to drill a focused grammar concept, transforming sentences and creating an original example that applies the day’s vocabulary word.

The entire routine should take no more than nine minutes. If any vocabulary file is edited, immediately run the verification script noted above and capture the command/output in `Scripts/Debug.md`.

### Daily Vocabulary Workflow (`EnglishLearning/Vocabulary`)

1. Select a new, unique word that does not already appear in any letter file.
2. Insert the entry into the correct `EnglishLearning/Vocabulary/[A-Z].md` file, maintaining strict alphabetical order and the standard format (meaning + usage).
3. Update `EnglishLearning/Vocabulary/VocabularyDefinitions.md` if the letter summary needs to mention the new word.
4. Run `Scripts/Verify-Vocabulary.ps1` after every vocabulary edit and log the command/output in `Scripts/Debug.md`.

### Daily English Mastery Workflow (`EnglishLearning/Daily`)

1. Copy or reference `EnglishLearning/Daily/_Template.md` to structure the day’s lesson; total study time must remain within nine minutes (1 min centering, 3 min vocabulary, 4 min grammar drills, 1 min integration).
2. Populate `EnglishLearning/Daily/DayN.md` with the chosen vocabulary word, the targeted grammar concept, and the required drill steps.
3. Ensure the vocabulary word used in the lesson matches the daily word added to the vocabulary collection and that grammar practice produces an original sentence using that word.
