# Run CI Checks — Workflow

Step-by-step process for running complete content verification and quality checks in the inspirational-quotes repository.

## Purpose

Execute all automated and manual quality checks to ensure content meets repository standards.

## Prerequisites

- PowerShell installed and available in PATH
- Repository cloned and up to date
- Working directory is repository root

## Steps

### 1. Vocabulary Order Verification

```powershell
.\Scripts\Verify-Vocabulary.ps1
```

- Run the vocabulary verification script
- Note any files reported as "OUT OF ORDER"
- If issues found, proceed to step 2

### 2. Detailed Vocabulary Analysis (if needed)

```powershell
.\Scripts\Verify-Vocabulary.ps1 -ShowMismatches
```

- Run with detailed output to see specific ordering issues
- Document which words need to be reordered

### 3. Content Format Verification

Invoke the `content-format-check` agent:
- Check quote entry formatting (H2 headings, blockquotes, attribution)
- Verify vocabulary entry structure (**Meaning**, **Usage** sections)
- Validate grammar entry formatting (H2/H3 hierarchy, examples)
- Review markdown standards compliance

### 4. File Organization Audit

Invoke the `file-organization-audit` agent:
- Verify directory structure compliance
- Check file naming conventions
- Validate file placement
- Identify orphaned or misplaced files

### 5. Manual Quality Review

Perform manual checks based on `.clinerules/rules/04-quality-assurance.md`:
- Quote curation standards
- Vocabulary definition quality
- Grammar learning material structure
- Daily learning plan time-boxing

## Validation

All checks should report PASS status. Any FAIL results require corrective action.

## Troubleshooting

### Vocabulary Order Issues
- Use `ShowMismatches` flag for detailed analysis
- Manually reorder words in affected files
- Re-run verification to confirm fix

### Format Issues
- Refer to `.clinerules/rules/02-content-standards.md` for correct formats
- Use `content-format-check` agent for detailed guidance

### Organization Issues
- Consult `.clinerules/rules/03-repository-structure.md` for proper structure
- Follow `.clinerules/rules/08-file-naming-conventions.md` for naming standards

## Completion Criteria

- All automated checks pass
- Manual review confirms content quality standards
- No outstanding issues requiring immediate attention