# GitHub Copilot Instructions

## Project Overview

This repository contains an **Inspirational Quotes Collection** and **English Learning Materials** designed to help users improve their vocabulary and language skills through meaningful quotes and structured learning resources.

## Project Structure

```
inspirational-quotes/
├── .github/
│   └── copilot-instructions.md
├── .copilot/
│   └── settings.json               # VS Code settings optimized for vocabulary work
├── EnglishLearning/
│   ├── Debug.md                    # Verification logs and debugging commands
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
├── LICENSE
└── README.md
```

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
- Use PowerShell commands to check alphabetical ordering:
  ```powershell
  $words = Get-Content [file].md | Select-String "^## " | ForEach-Object { $_.ToString().Substring(3).Trim() } | Where-Object { $_ -ne "WordName" }
  $sorted = $words | Sort-Object
  $isCorrect = ($words -join "|") -eq ($sorted -join "|")
  Write-Host "File is correctly ordered: $isCorrect"
  ```
- Document all verification activities in `EnglishLearning/Debug.md`
- Always exclude template "WordName" entries from verification

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

**Current Status (August 6, 2025):**

- **ALL 26 alphabet files (A-Z) are present and correctly ordered**
- **Template integration complete**: All files include vocabulary formatting template
- **Recent verification**: A.md (23 words), C.md (26 words), S.md (13 words) confirmed correctly ordered
- **Total collection**: 170+ vocabulary words across 26 files in perfect alphabetical order

**Previous Achievements:**

- Complete file creation: Added missing J.md, Q.md, X.md, Y.md, Z.md
- Resolved ordering issues in multiple files during July-August 2025 sessions
- Established comprehensive verification procedures using PowerShell scripts
- Implemented markdown linting standards (MD032, MD022, MD047, MD036)

### Debugging and Verification

- Always update `EnglishLearning/Debug.md` with verification commands and results
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
