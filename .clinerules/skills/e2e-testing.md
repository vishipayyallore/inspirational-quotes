# Smoke / E2E-style verification — Inspirational Quotes & English Learning

No deployed application here. "End-to-end" means **environment + content verification + script functionality**.

## Prerequisites

- PowerShell installed and available in PATH
- Repository cloned and up to date
- Working directory is repository root

## Suggested sequence

1. **Content Structure Verification**

   ```powershell
   # Check that main directories exist
   Test-Path -Path "InspirationalQuotes"
   Test-Path -Path "EnglishLearning"
   Test-Path -Path "Strategic-Literacy"
   Test-Path -Path "Scripts"
   ```

2. **Vocabulary File Verification**

   ```powershell
   # Check that vocabulary files exist and follow naming convention
   Get-ChildItem -Path "EnglishLearning\Vocabulary" -Filter "*.md" | Where-Object { $_.Name -match '^[A-Z]\.md$' }
   ```

3. **Script Functionality Test**

   ```powershell
   # Test the main verification script
   .\Scripts\Verify-Vocabulary.ps1
   ```

4. **Detailed Script Test**

   ```powershell
   # Test with detailed output
   .\Scripts\Verify-Vocabulary.ps1 -ShowMismatches
   ```

5. **Manual Verification** — open a representative vocabulary file, quote file, and grammar file to verify proper formatting and content quality.

## Summary

Report each step **PASS** / **FAIL** / **SKIPPED**.