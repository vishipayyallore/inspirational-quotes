# Workspace Health Check — Workflow

Complete maintenance and cleanup procedure for ensuring optimal repository health and performance.

## Purpose

Perform comprehensive maintenance to keep the repository organized, efficient, and aligned with best practices.

## Prerequisites

- PowerShell installed and available in PATH
- Git installed and configured
- Repository cloned and up to date
- Working directory is repository root
- Sufficient time for thorough maintenance (2-3 hours)

## Steps

### 1. Version Control Health

Check Git repository status:
```powershell
git status
git fetch origin
git pull origin main
```

- Ensure local repository is up to date
- Check for uncommitted changes
- Resolve any merge conflicts
- Verify remote repository connectivity

### 2. Branch Management

Review and clean up branches:
```powershell
git branch -a
git branch --merged
```

- Delete fully merged local branches
- Archive or delete stale feature branches
- Ensure main branch is stable and clean
- Verify branch naming conventions

### 3. File System Cleanup

Remove temporary and unnecessary files:
```powershell
git clean -fd
```

- Delete untracked files and directories
- Remove temporary files and build artifacts
- Clean up backup files (if not intentionally kept)
- Verify no important files are accidentally removed

### 4. Content Verification

Run complete content quality checks:
```powershell
.\Scripts\Verify-Vocabulary.ps1
```

- Execute vocabulary order verification
- Run content format validation
- Check file organization compliance
- Verify markdown standards adherence

### 5. Script Functionality Test

Test all PowerShell scripts:
```powershell
.\Scripts\Verify-Vocabulary.ps1
.\Scripts\Verify-Vocabulary.ps1 -ShowMismatches
```

- Verify all scripts execute without errors
- Test different parameter combinations
- Check output formatting and clarity
- Document any script issues or improvements needed

### 6. Directory Structure Audit

Verify repository organization:
- Check that all main sections exist and are properly named
- Verify subdirectory structure within each main section
- Confirm file naming conventions are followed
- Identify and address any organizational issues

### 7. Documentation Review

Update and verify all documentation:
- Review README.md for accuracy and completeness
- Check rule files in `.clinerules/rules/` for current practices
- Verify skill files in `.clinerules/skills/` match actual procedures
- Ensure agent files in `.clinerules/agents/` describe correct behaviors
- Confirm workflow files in `.clinerules/workflows/` are accurate

### 8. Cross-Reference Validation

Check all internal links and references:
- Verify relative paths are used consistently
- Confirm all referenced files exist and are accessible
- Identify and fix broken links
- Update references when files have been moved or renamed

### 9. Performance Optimization

Optimize repository performance:
- Remove large unnecessary files from history if needed
- Optimize large binary files with Git LFS if applicable
- Clean up Git history if needed (interactive rebase)
- Verify repository size is reasonable

### 10. Security Check

Review for security considerations:
- Check for accidentally committed sensitive information
- Verify no real credentials or personal data
- Review file permissions
- Ensure proper `.gitignore` configuration

### 11. Backup and Recovery

Ensure backup strategies are in place:
- Verify remote repository is current and accessible
- Check that important local changes are committed
- Confirm backup procedures are documented
- Test recovery procedures if applicable

### 12. Dependency Review

Check any external dependencies:
- Verify PowerShell version compatibility
- Check for required modules or tools
- Document any dependency changes
- Update installation or setup instructions

### 13. Performance Monitoring

Monitor repository performance:
- Track script execution times
- Monitor file access patterns
- Identify any performance bottlenecks
- Document optimization opportunities

### 14. Community Standards

Review alignment with best practices:
- Check adherence to markdown standards
- Verify consistent formatting throughout
- Ensure accessibility considerations
- Confirm documentation quality

### 15. Future Planning

Document maintenance findings:
- Record any issues discovered and resolved
- Note recurring problems and preventive measures
- Document improvements for next health check
- Update maintenance schedules and procedures

## Validation

Health check should result in:
- Clean Git repository status
- All content passing quality verification
- Proper directory structure and organization
- Functional scripts and tools
- Accurate and complete documentation
- No broken links or references
- Optimal performance characteristics

## Troubleshooting

### Git Issues
- Resolve merge conflicts carefully
- Recover lost changes from Git history if needed
- Re-clone repository if local corruption suspected
- Verify remote repository integrity

### Script Failures
- Check PowerShell execution policies
- Verify script permissions and paths
- Test scripts in isolation
- Document and fix any script errors

### Content Quality Issues
- Use appropriate agents for detailed analysis
- Refer to rule files for correction guidance
- Prioritize critical issues affecting learning
- Document less urgent improvements for later

### Performance Problems
- Identify largest files and directories
- Optimize or remove unnecessary content
- Consider Git LFS for large binary files
- Document performance baselines

## Completion Criteria

- Git repository is clean and up to date
- All content passes quality verification
- Directory structure is properly organized
- All scripts function correctly
- Documentation is accurate and complete
- No broken links or references
- Performance is optimized
- Security considerations addressed
- Backup strategies verified
- Maintenance findings documented

## Recommended Frequency

- Weekly: Quick Git maintenance and basic checks
- Monthly: Complete content verification and script testing
- Quarterly: Full workspace health check
- Annually: Comprehensive repository audit and optimization

## Post-Check Actions

After completing the health check:
- Commit any changes made during maintenance
- Push updates to remote repository
- Document significant findings or changes
- Schedule next health check
- Share relevant findings with team members