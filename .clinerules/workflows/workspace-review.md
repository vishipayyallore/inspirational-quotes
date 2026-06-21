# Workspace Review — Workflow

Comprehensive workspace health check and maintenance procedure for the inspirational-quotes repository.

## Purpose

Perform a complete audit of repository health, content quality, and organizational standards.

## Prerequisites

- PowerShell installed and available in PATH
- Repository cloned and up to date
- Working directory is repository root
- Access to Cline agents for automated checks

## Steps

### 1. Automated Quality Assurance Review

Invoke the `quality-assurance-review` agent:
- Execute complete content quality checklist
- Run vocabulary order verification
- Check content formatting standards
- Validate file naming conventions
- Verify markdown standards compliance

### 2. File Organization Audit

Invoke the `file-organization-audit` agent:
- Verify all main sections exist and are properly structured
- Check subdirectory organization within EnglishLearning/
- Confirm Strategic-Literacy/ contains numbered files
- Validate Scripts/ contains proper PowerShell scripts

### 3. Content Standards Review

Manual review of key content areas:
- Sample quote files for proper formatting and attribution
- Vocabulary files for alphabetical ordering and format compliance
- Grammar files for structural consistency
- Daily learning plans for time-boxing adherence

### 4. Script Functionality Verification

Test PowerShell scripts:
```powershell
.\Scripts\Verify-Vocabulary.ps1
```
- Verify script executes without errors
- Confirm output format is clear and actionable
- Test `-ShowMismatches` parameter functionality

### 5. Cross-Reference Validation

Check internal links and references:
- Verify relative paths are used consistently
- Confirm all referenced files exist
- Identify and document broken links

### 6. Documentation Review

Review all rule and guideline documents:
- `.clinerules/rules/` files for accuracy and completeness
- `.clinerules/skills/` files for proper procedures
- `.clinerules/agents/` files for correct agent behaviors
- `.clinerules/workflows/` files for accurate workflows

## Validation

All checks should report PASS status or provide clear documentation of issues requiring attention.

## Troubleshooting

### Failed Automated Checks
- Review agent output for specific file and line references
- Consult relevant rule files for correction guidance
- Re-run checks after implementing fixes

### Organization Issues
- Refer to `.clinerules/rules/03-repository-structure.md`
- Follow `.clinerules/rules/08-file-naming-conventions.md`
- Consult `.clinerules/agents/file-organization-audit.md` for detailed guidance

### Content Quality Issues
- Review `.clinerules/rules/02-content-standards.md`
- Check `.clinerules/rules/04-quality-assurance.md` checklist
- Use appropriate agents for detailed analysis

## Completion Criteria

- All automated checks pass or have documented resolutions
- File organization meets repository standards
- Content quality aligns with educational principles
- Documentation is accurate and complete
- No critical issues requiring immediate attention

## Recommended Frequency

- Weekly: Automated vocabulary verification
- Monthly: Complete quality assurance review
- Quarterly: Full workspace health check