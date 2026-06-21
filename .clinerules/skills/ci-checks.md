# CI Checks — Local Runner (Inspirational Quotes & English Learning)

Commands for verifying content quality and consistency in the inspirational-quotes repository.

## Policy

- **Quality expectations:** `.clinerules/rules/04-quality-assurance.md` and `.clinerules/rules/09-copilot-instructions-extract.md`.

## Prerequisites

- **PowerShell:** Windows PowerShell or PowerShell Core for running verification scripts
- **Repository:** Run commands from the repository root directory

## Checks to run

Report each as PASS or FAIL with output.

### 1. Vocabulary Order Verification

```powershell
.\Scripts\Verify-Vocabulary.ps1
```

This script verifies that all vocabulary words are in alphabetical order within each letter file.

### 2. Vocabulary Format Verification

```powershell
.\Scripts\Verify-Vocabulary.ps1 -ShowMismatches
```

This shows detailed information about any vocabulary files that are out of order.

### 3. Content Structure Verification

Manual checks based on quality assurance guidelines:
- Verify quote formatting follows standard template
- Check that vocabulary entries follow the required format
- Ensure grammar examples are drawn from actual quotes
- Validate daily learning plans are achievable in 18 minutes

### 4. File Naming Convention Verification

Manual verification that files follow naming conventions in `.clinerules/rules/08-file-naming-conventions.md`:
- Vocabulary files: A-Z.md format
- Quote files: theme-based naming with .md extension
- Grammar files: descriptive kebab-case naming
- Script files: PascalCase for PowerShell scripts

### 5. Markdown Standards Verification

Manual verification that content follows markdown standards in `.clinerules/rules/05-markdown-standards.md`:
- Proper heading hierarchy
- Correct quote entry format
- Appropriate vocabulary entry structure
- Consistent grammar entry formatting

## Execution strategy

Run the vocabulary verification script from the repository root. Perform manual checks for content structure, file naming, and markdown standards.

## On failure

- **Vocabulary order:** Run `.\Scripts\Verify-Vocabulary.ps1 -ShowMismatches` to see specific issues
- **Format issues:** Refer to `.clinerules/rules/02-content-standards.md` for correct formats
- **Structure issues:** Consult `.clinerules/rules/03-repository-structure.md` for proper organization

## Summary format

| # | Check | Status | Notes |
|---|--------|--------|-------|
| 1 | Vocabulary Order | | |
| 2 | Vocabulary Format | | |
| 3 | Content Structure | | |
| 4 | File Naming | | |
| 5 | Markdown Standards | | |

When a failure affects learning content, explain the impact in beginner-friendly language.