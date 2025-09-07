# Project Maintenance Prompt

## Context

You are maintaining an inspirational quotes and English learning repository with strict organizational standards. This prompt covers project structure maintenance, file organization, automation scripts, and quality assurance procedures.

## Project Structure Standards

### 1. Directory Organization

**Core Structure:**

```text
inspirational-quotes/
├── .github/
│   ├── copilot-instructions.md     # Main project documentation
│   └── prompts/                    # Comprehensive prompt collection
├── .copilot/
│   └── settings.json               # VS Code configuration
├── EnglishLearning/
│   ├── Daily/                      # Daily learning sessions
│   └── Vocabulary/                 # A-Z vocabulary organization
├── InspirationalQuotes/
│   └── InspirationalQuotes.md      # Quote collections
├── Logs/                           # Automated verification outputs
├── Scripts/                        # PowerShell automation tools
│   └── Debug.md                    # Verification logs and commands
└── README.md                       # Project overview
```

**File Naming Conventions:**

- Vocabulary files: Single letter format (A.md, B.md, etc.)
- Log files: Timestamp format (verify-YYYYMMDD-HHMMSS.txt)
- Daily learning: Sequential format (Day1.md, Day2.md, etc.)
- Scripts: Descriptive PowerShell names (Verb-Noun.ps1)

### 2. Documentation Standards

**Required Documentation:**

- README.md: Project overview and getting started guide
- copilot-instructions.md: Comprehensive development guidelines
- Debug.md: Verification commands and troubleshooting logs
- Each prompt file: Specific workflow documentation

**Documentation Quality:**

- Clear, concise writing appropriate for contributors
- Up-to-date status information and statistics
- Practical examples and code snippets
- Troubleshooting guides and common solutions

### 3. Automation and Scripts

**Verification Script Requirements:**

```powershell
# Core verification functionality
param(
    [string]$Root = "default/path",
    [switch]$ShowMismatches,
    [string]$OutFile
)

# Must include:
# - Alphabetical order checking
# - Template exclusion logic
# - Detailed output options
# - Exit code management (0=OK, 2=Errors)
# - Timestamped logging capability
```

**Script Maintenance:**

- Regular testing with various input scenarios
- Error handling for edge cases and missing files
- Performance optimization for large file sets
- Documentation of parameters and usage examples

## Quality Assurance Procedures

### 1. Content Verification

**Alphabetical Order Verification:**

```bash
# Required verification steps
1. Run basic verification script
2. Check for OUT OF ORDER files
3. Fix ordering issues immediately
4. Re-verify and log results
5. Update documentation with status
```

**File Integrity Checks:**

- All 26 vocabulary files (A.md through Z.md) must exist
- Each file must follow the established template structure
- Headers must be consistent across all files
- Content must exclude template placeholder entries

### 2. Technical Standards

**Markdown Formatting:**

- Consistent heading structures and hierarchy
- Proper spacing around code blocks and lists
- Compliant with markdown linting rules (MD022, MD032, etc.)
- Error-free rendering in common markdown viewers

**Git Workflow:**

- Descriptive branch names following pattern: author/feature-description
- Comprehensive commit messages including verification results
- Regular verification before commits and merges
- Proper documentation of all organizational changes

### 3. Monitoring and Maintenance

**Regular Maintenance Tasks:**

- Weekly verification runs with full logging
- Monthly review of project structure and documentation
- Quarterly assessment of vocabulary collection growth
- Annual review of educational effectiveness and user feedback

**Performance Monitoring:**

- Script execution time and efficiency
- File size growth and organization impact
- User engagement with learning materials
- Error rates and common issues

## Troubleshooting and Recovery

### 1. Common Issues

**Alphabetical Order Problems:**

```powershell
# Diagnostic approach
1. Run: Verify-Vocabulary.ps1 -ShowMismatches
2. Identify files marked "OUT OF ORDER"
3. Compare "Current" vs "Correct" word lists
4. Edit files to match correct ordering
5. Re-verify until all files show "OK"
```

**Script Execution Failures:**

- Check PowerShell execution policy settings
- Verify file paths and parameter syntax
- Test with minimal input sets to isolate issues
- Review error messages for specific causes

**Documentation Inconsistencies:**

- Cross-check statistics across all documentation files
- Verify links and cross-references for accuracy
- Update status information to reflect current state
- Ensure examples match actual file contents

### 2. Recovery Procedures

**Backup and Recovery:**

- Maintain regular backups of vocabulary files
- Document all significant changes in Debug.md
- Use version control effectively for rollback capability
- Test recovery procedures periodically

**Emergency Fixes:**

- Prioritize alphabetical order restoration
- Document emergency changes thoroughly
- Run full verification suite after emergency fixes
- Update all affected documentation immediately

## Continuous Improvement

### 1. Process Enhancement

**Automation Opportunities:**

- Automated verification on file changes
- Batch processing for multiple file updates
- Integration with version control hooks
- Scheduled maintenance task automation

**Quality Improvements:**

- Enhanced error detection and reporting
- More comprehensive logging and analytics
- Improved user feedback collection
- Better integration between components

### 2. Growth Management

**Scalability Considerations:**

- Performance impact of growing vocabulary collections
- Maintenance of quality standards at scale
- User experience optimization for larger datasets
- Infrastructure requirements for continued growth

**Feature Development:**

- New learning material formats and structures
- Enhanced verification and quality assurance tools
- Improved documentation and user guidance
- Integration with external educational resources

This maintenance framework ensures the project remains well-organized, technically sound, and educationally effective as it continues to grow and evolve.
