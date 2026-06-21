# Update Vocabulary Order — Workflow

Step-by-step process for reorganizing vocabulary files to maintain proper alphabetical ordering.

## Purpose

Ensure all vocabulary words are properly organized alphabetically within their respective letter files.

## Prerequisites

- PowerShell installed and available in PATH
- Repository cloned and up to date
- Working directory is repository root

## Steps

### 1. Initial Verification

```powershell
.\Scripts\Verify-Vocabulary.ps1
```

- Run the vocabulary verification script
- Note which files are reported as "OUT OF ORDER"
- Document the current state before making changes

### 2. Detailed Analysis

For each file reported as out of order:
```powershell
.\Scripts\Verify-Vocabulary.ps1 -ShowMismatches
```

- Run with detailed output to see specific ordering issues
- Document which words need to be reordered
- Note the current vs. correct order for each problematic file

### 3. Backup Current Files

Before making changes, create backups:
```powershell
Copy-Item -Path "EnglishLearning\Vocabulary\*.md" -Destination "EnglishLearning\Vocabulary\Backup\" -Force
```

- Create a backup directory if it doesn't exist
- Copy all vocabulary files to preserve current state
- This allows for easy rollback if needed

### 4. Manual Reordering

For each problematic file:
- Open the file in a text editor
- Identify the words that are out of order
- Move them to their correct alphabetical positions
- Ensure consistent spacing and formatting
- Maintain proper markdown structure

### 5. Reordering Strategy

When reordering words:
- Work from the beginning of the file toward the end
- Move one word at a time to its correct position
- Double-check neighboring words to ensure proper order
- Maintain consistent blank lines between entries
- Preserve all formatting elements (headings, bold text, etc.)

### 6. Quality Check During Reordering

As you reorder each file:
- Verify H2 headings remain intact
- Ensure **Meaning** and **Usage** sections are properly formatted
- Check that quote examples and attributions are preserved
- Confirm markdown syntax is correct
- Maintain consistent spacing throughout

### 7. Intermediate Verification

After reordering each file:
```powershell
.\Scripts\Verify-Vocabulary.ps1
```

- Run verification to check if the specific file is now ordered correctly
- Continue with remaining files if issues persist
- Document progress for each file

### 8. Final Comprehensive Verification

Once all reordering is complete:
```powershell
.\Scripts\Verify-Vocabulary.ps1
```

- Run complete verification across all vocabulary files
- Confirm no files are reported as "OUT OF ORDER"
- Verify the script completes successfully with all PASS results

### 9. Content Integrity Check

Review reordered files for:
- No lost or duplicated content
- Proper formatting maintained
- Accurate quote attributions preserved
- Consistent entry structure throughout

### 10. Cross-Reference Validation

Check that reordering didn't affect:
- Internal links to specific vocabulary entries
- References in grammar lessons or other content
- Daily learning plan references
- Any external documentation citing specific word positions

## Validation

All vocabulary files should:
- Pass the verification script with no ordering errors
- Maintain all original content and formatting
- Preserve proper markdown structure
- Keep accurate quote attributions and examples

## Troubleshooting

### Persistent Ordering Issues
- Double-check alphabetical ordering rules
- Verify no special characters affecting sort order
- Ensure consistent capitalization in word names
- Check for hidden characters or encoding issues

### Content Loss or Corruption
- Restore from backup files created in step 3
- Compare before/after versions to identify changes
- Use version control history if available
- Recreate lost content from original sources

### Script Errors
- Verify PowerShell execution policy allows script running
- Check that the repository root is the working directory
- Ensure all vocabulary files follow naming conventions
- Confirm script has read/write permissions

## Completion Criteria

- All vocabulary files pass verification script
- No "OUT OF ORDER" reports from the script
- All original content is preserved
- Proper formatting is maintained
- No broken links or references
- Backup files can be safely deleted (optional)

## Best Practices

- Perform reordering during low-activity periods
- Commit changes frequently to version control
- Test verification script after each file modification
- Keep detailed notes of changes made
- Communicate planned maintenance if working in shared environment