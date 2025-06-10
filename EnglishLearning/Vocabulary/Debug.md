# Debug Commands Log

This file contains all the PowerShell commands used to organize and verify the alphabetical ordering of vocabulary words in the vocabulary files.

## Initial Analysis Commands

### 1. List all vocabulary files

```powershell
Get-ChildItem -Path "D:\GitHub\inspirational-quotes\EnglishLearning\Vocabulary" -Filter "*.md" | Sort-Object Name
```

### 2. Extract vocabulary words from all files for analysis

```powershell
# Command to extract all vocabulary words from each file
Get-ChildItem -Path "D:\GitHub\inspirational-quotes\EnglishLearning\Vocabulary" -Filter "*.md" | Where-Object { $_.Name -ne "VocabularyDefinitions.md" -and $_.Name -ne "Debug.md" } | ForEach-Object {
    Write-Host "`n=== $($_.Name) ===" -ForegroundColor Yellow
    $content = Get-Content $_.FullName -Raw
    $words = [regex]::Matches($content, '(?<=^## )([A-Za-z]+)', [System.Text.RegularExpressions.RegexOptions]::Multiline) | ForEach-Object { $_.Value }
    $words | ForEach-Object { Write-Host $_ }
}
```

## File-Specific Analysis Commands

### A.md Analysis

```powershell
# Extract words from A.md
$content = Get-Content "D:\GitHub\inspirational-quotes\EnglishLearning\Vocabulary\A.md" -Raw
$words = [regex]::Matches($content, '(?<=^## )([A-Za-z]+)', [System.Text.RegularExpressions.RegexOptions]::Multiline) | ForEach-Object { $_.Value }
Write-Host "A.md words:" -ForegroundColor Green
$words | ForEach-Object { Write-Host $_ }
```

### F.md Analysis

```powershell
# Extract words from F.md
$content = Get-Content "D:\GitHub\inspirational-quotes\EnglishLearning\Vocabulary\F.md" -Raw
$words = [regex]::Matches($content, '(?<=^## )([A-Za-z]+)', [System.Text.RegularExpressions.RegexOptions]::Multiline) | ForEach-Object { $_.Value }
Write-Host "F.md words:" -ForegroundColor Green
$words | ForEach-Object { Write-Host $_ }
```

### P.md Analysis

```powershell
# Extract words from P.md
$content = Get-Content "D:\GitHub\inspirational-quotes\EnglishLearning\Vocabulary\P.md" -Raw
$words = [regex]::Matches($content, '(?<=^## )([A-Za-z]+)', [System.Text.RegularExpressions.RegexOptions]::Multiline) | ForEach-Object { $_.Value }
Write-Host "P.md words:" -ForegroundColor Green
$words | ForEach-Object { Write-Host $_ }
```

### R.md Analysis

```powershell
# Extract words from R.md
$content = Get-Content "D:\GitHub\inspirational-quotes\EnglishLearning\Vocabulary\R.md" -Raw
$words = [regex]::Matches($content, '(?<=^## )([A-Za-z]+)', [System.Text.RegularExpressions.RegexOptions]::Multiline) | ForEach-Object { $_.Value }
Write-Host "R.md words:" -ForegroundColor Green
$words | ForEach-Object { Write-Host $_ }
```

### S.md Analysis

```powershell
# Extract words from S.md
$content = Get-Content "D:\GitHub\inspirational-quotes\EnglishLearning\Vocabulary\S.md" -Raw
$words = [regex]::Matches($content, '(?<=^## )([A-Za-z]+)', [System.Text.RegularExpressions.RegexOptions]::Multiline) | ForEach-Object { $_.Value }
Write-Host "S.md words:" -ForegroundColor Green
$words | ForEach-Object { Write-Host $_ }
```

### T.md Analysis

```powershell
# Extract words from T.md
$content = Get-Content "D:\GitHub\inspirational-quotes\EnglishLearning\Vocabulary\T.md" -Raw
$words = [regex]::Matches($content, '(?<=^## )([A-Za-z]+)', [System.Text.RegularExpressions.RegexOptions]::Multiline) | ForEach-Object { $_.Value }
Write-Host "T.md words:" -ForegroundColor Green
$words | ForEach-Object { Write-Host $_ }
```

### D.md Analysis

```powershell
# Extract words from D.md
$content = Get-Content "D:\GitHub\inspirational-quotes\EnglishLearning\Vocabulary\D.md" -Raw
$words = [regex]::Matches($content, '(?<=^## )([A-Za-z]+)', [System.Text.RegularExpressions.RegexOptions]::Multiline) | ForEach-Object { $_.Value }
Write-Host "D.md words:" -ForegroundColor Green
$words | ForEach-Object { Write-Host $_ }
```

### E.md Analysis

```powershell
# Extract words from E.md
$content = Get-Content "D:\GitHub\inspirational-quotes\EnglishLearning\Vocabulary\E.md" -Raw
$words = [regex]::Matches($content, '(?<=^## )([A-Za-z]+)', [System.Text.RegularExpressions.RegexOptions]::Multiline) | ForEach-Object { $_.Value }
Write-Host "E.md words:" -ForegroundColor Green
$words | ForEach-Object { Write-Host $_ }
```

## Final Verification Commands

### Complete alphabetical verification for all files

```powershell
# Final verification command to check all files for proper alphabetical ordering
Get-ChildItem -Path "D:\GitHub\inspirational-quotes\EnglishLearning\Vocabulary" -Filter "*.md" | Where-Object { $_.Name -ne "VocabularyDefinitions.md" -and $_.Name -ne "Debug.md" } | ForEach-Object {
    Write-Host "`n=== Verifying $($_.Name) ===" -ForegroundColor Cyan
    $content = Get-Content $_.FullName -Raw
    $words = [regex]::Matches($content, '(?<=^## )([A-Za-z]+)', [System.Text.RegularExpressions.RegexOptions]::Multiline) | ForEach-Object { $_.Value }

    $sortedWords = $words | Sort-Object
    $isOrdered = ($words -join ",") -eq ($sortedWords -join ",")

    if ($isOrdered) {
        Write-Host "✓ Correctly ordered" -ForegroundColor Green
    } else {
        Write-Host "✗ Needs reordering" -ForegroundColor Red
        Write-Host "Current order: $($words -join ', ')"
        Write-Host "Should be: $($sortedWords -join ', ')"
    }
}
```

### Word count summary

```powershell
# Count total vocabulary words across all files
$totalWords = 0
Get-ChildItem -Path "D:\GitHub\inspirational-quotes\EnglishLearning\Vocabulary" -Filter "*.md" | Where-Object { $_.Name -ne "VocabularyDefinitions.md" -and $_.Name -ne "Debug.md" } | ForEach-Object {
    $content = Get-Content $_.FullName -Raw
    $words = [regex]::Matches($content, '(?<=^## )([A-Za-z]+)', [System.Text.RegularExpressions.RegexOptions]::Multiline) | ForEach-Object { $_.Value }
    $wordCount = $words.Count
    $totalWords += $wordCount
    Write-Host "$($_.Name): $wordCount words"
}
Write-Host "`nTotal vocabulary words: $totalWords" -ForegroundColor Yellow
```

## Modern Verification Commands (June 2025)

### Comprehensive Alphabetical Check for All Files

```powershell
# Check alphabetical ordering status for each vocabulary file
$ErrorActionPreference = 'Continue'
$files = 'A','B','C','D','E','F','G','H','I','L','M','N','O','P','R','S','T','V','W'
foreach ($letter in $files) {
    try {
        $filePath = "d:\GitHub\inspirational-quotes\EnglishLearning\Vocabulary\$letter.md"
        $content = Get-Content $filePath -Raw -ErrorAction Stop
        $pattern = '(?<=^## )([A-Za-z ]+)'
        $words = [regex]::Matches($content, $pattern, [System.Text.RegularExpressions.RegexOptions]::Multiline) | ForEach-Object { $_.Value }
        if ($words.Count -gt 0) {
            $sorted = $words | Sort-Object
            $isOrdered = ($words -join ',') -eq ($sorted -join ',')
            Write-Host "$letter.md: $(if ($isOrdered) { 'ORDERED ✅' } else { 'NOT ORDERED ❌' }) ($($words.Count) words)"
        }
    } catch {
        Write-Host "$letter.md: ERROR reading file"
    }
}
```

### Check for Duplicate Words Across All Files

```powershell
# Check for duplicate vocabulary words across all files
$allWords = @()
'A','B','C','D','E','F','G','H','I','L','M','N','O','P','R','S','T','V','W' | ForEach-Object {
    $content = Get-Content "d:\GitHub\inspirational-quotes\EnglishLearning\Vocabulary\$_.md" -Raw
    $words = [regex]::Matches($content, '(?<=^## )([A-Za-z ]+)', [System.Text.RegularExpressions.RegexOptions]::Multiline) | ForEach-Object { $_.Value }
    $allWords += $words
}
Write-Host "Total vocabulary words: $($allWords.Count)"
Write-Host "Unique vocabulary words: $(($allWords | Sort-Object -Unique).Count)"

# Check for duplicates
$duplicates = $allWords | Group-Object | Where-Object { $_.Count -gt 1 }
if ($duplicates) {
    Write-Host "❌ Found duplicates:"
    $duplicates | ForEach-Object { Write-Host "  '$($_.Name)' appears $($_.Count) times" }
} else {
    Write-Host "✅ No duplicates found!"
}
```

### Individual File Word Extraction

```powershell
# Extract and display words from a specific file (replace X with desired letter)
$letter = "A"  # Change this to any letter A-W
$filePath = "d:\GitHub\inspirational-quotes\EnglishLearning\Vocabulary\$letter.md"
$content = Get-Content $filePath -Raw
$words = [regex]::Matches($content, '(?<=^## )([A-Za-z ]+)', [System.Text.RegularExpressions.RegexOptions]::Multiline) | ForEach-Object { $_.Value }
Write-Host "$letter.md words:" -ForegroundColor Green
$words | ForEach-Object { Write-Host "  $_" }

# Show alphabetical order
Write-Host "`nAlphabetical order:" -ForegroundColor Yellow
$sorted = $words | Sort-Object
$sorted | ForEach-Object { Write-Host "  $_" }

# Check if ordered
$isOrdered = ($words -join ',') -eq ($sorted -join ',')
Write-Host "`nIs correctly ordered: $(if ($isOrdered) { 'YES ✅' } else { 'NO ❌' })" -ForegroundColor $(if ($isOrdered) { 'Green' } else { 'Red' })
```

### Quick Status Check

```powershell
# Quick status check for all vocabulary files
$files = 'A','B','C','D','E','F','G','H','I','L','M','N','O','P','R','S','T','V','W'
$totalFiles = 0
$orderedFiles = 0
$totalWords = 0

foreach ($letter in $files) {
    $filePath = "d:\GitHub\inspirational-quotes\EnglishLearning\Vocabulary\$letter.md"
    if (Test-Path $filePath) {
        $totalFiles++
        $content = Get-Content $filePath -Raw
        $words = [regex]::Matches($content, '(?<=^## )([A-Za-z ]+)', [System.Text.RegularExpressions.RegexOptions]::Multiline) | ForEach-Object { $_.Value }
        $totalWords += $words.Count

        if ($words.Count -gt 0) {
            $sorted = $words | Sort-Object
            $isOrdered = ($words -join ',') -eq ($sorted -join ',')
            if ($isOrdered) { $orderedFiles++ }
        }
    }
}

Write-Host "📊 Vocabulary Collection Summary:" -ForegroundColor Cyan
Write-Host "  Total files: $totalFiles"
Write-Host "  Properly ordered: $orderedFiles"
Write-Host "  Total vocabulary words: $totalWords"
Write-Host "  Status: $(if ($orderedFiles -eq $totalFiles) { '✅ ALL PERFECT' } else { '❌ NEEDS ATTENTION' })"
```

### Verify Latest A.md Changes (June 2025)

```powershell
# Verify A.md file after adding "Armor" word
$content = Get-Content "d:\GitHub\inspirational-quotes\EnglishLearning\Vocabulary\A.md" -Raw
$words = [regex]::Matches($content, '(?<=^## )([A-Za-z ]+)', [System.Text.RegularExpressions.RegexOptions]::Multiline) | ForEach-Object { $_.Value }
Write-Host "A.md Current Status:" -ForegroundColor Cyan
Write-Host "  Total words: $($words.Count)"
Write-Host "  Words list:" -ForegroundColor Green
$words | ForEach-Object { $i = [array]::IndexOf($words, $_) + 1; Write-Host "    $i. $_" }

# Check if "Armor" is in correct position
$armorIndex = [array]::IndexOf($words, "Armor")
if ($armorIndex -ge 0) {
    Write-Host "`n  ✅ 'Armor' found at position: $($armorIndex + 1)" -ForegroundColor Green
    if ($armorIndex -gt 0) { Write-Host "    Previous word: $($words[$armorIndex - 1])" }
    if ($armorIndex -lt $words.Count - 1) { Write-Host "    Next word: $($words[$armorIndex + 1])" }
} else {
    Write-Host "`n  ❌ 'Armor' not found!" -ForegroundColor Red
}

# Verify alphabetical order
$sorted = $words | Sort-Object
$isOrdered = ($words -join ',') -eq ($sorted -join ',')
Write-Host "`n  Alphabetical order: $(if ($isOrdered) { '✅ CORRECT' } else { '❌ INCORRECT' })" -ForegroundColor $(if ($isOrdered) { 'Green' } else { 'Red' })
```

## Summary

- **Total Files Processed**: 19 vocabulary files (A.md through W.md, excluding VocabularyDefinitions.md and Debug.md)
- **Current Status (June 2025)**: All files are perfectly organized alphabetically
- **Total Vocabulary Words**: 140 unique words across all files (updated June 10, 2025)
- **Files Status**: All 19 files are properly ordered A-Z
- **No Duplicates**: Complete vocabulary collection has no duplicate entries
- **Last Update**: June 10, 2025 - Added "Armor" to A.md file
- **Final Verification Date**: June 10, 2025

## Recent Verification Results (June 2025)

**All vocabulary files verified as ORDERED ✅:**
- A.md: 19 words (updated June 10, 2025 - added "Armor")
- B.md: 5 words  
- C.md: 15 words
- D.md: 8 words
- E.md: 8 words
- F.md: 7 words
- G.md: 1 word
- H.md: 1 word
- I.md: 12 words
- L.md: 1 word
- M.md: 4 words
- N.md: 2 words
- O.md: 4 words
- P.md: 15 words
- R.md: 13 words
- S.md: 10 words
- T.md: 9 words
- V.md: 4 words
- W.md: 2 words

## Latest Changes (June 10, 2025)

### A.md File Update
- **Added word**: "Armor" (A protective covering or shield)
- **Position**: Correctly placed between "Amplitude" and "Aroused"
- **New word count**: 19 words (previously 18)
- **Status**: ✅ Maintained perfect alphabetical order

### Updated Word List for A.md:
1. Abandon, 2. Acknowledge, 3. Adherence, 4. Adversary, 5. Adversity, 6. Advocate, 7. Aesthetic, 8. Alleviate, 9. Altruism, 10. Amassed, 11. Amplitude, 12. **Armor** (NEW), 13. Aroused, 14. Aspects, 15. Aspire, 16. Attain, 17. Authenticity, 18. Awareness, 19. Axiom

## Commands Used for Edits

The actual file modifications were performed using VS Code's `replace_string_in_file` tool, targeting specific sections that needed reordering based on the analysis results from the PowerShell commands above. All vocabulary files are now perfectly organized alphabetically with no duplicates.
