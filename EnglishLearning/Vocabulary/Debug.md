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

## Summary

- **Total Files Processed**: 19 vocabulary files (A.md through W.md, excluding VocabularyDefinitions.md)
- **Files Modified**: A.md, D.md, E.md, F.md, P.md, R.md, S.md, T.md
- **Files Already Correct**: B.md, C.md, G.md, H.md, I.md, L.md, M.md, N.md, O.md, V.md, W.md
- **Issues Fixed**: 
  - Alphabetical ordering corrections
  - Duplicate entry removal
  - Proper positioning of misplaced vocabulary words
- **Total Vocabulary Words**: 135 words across all files
- **Final Status**: All vocabulary files are now perfectly organized alphabetically

## Commands Used for Edits

The actual file modifications were performed using VS Code's `replace_string_in_file` tool, targeting specific sections that needed reordering based on the analysis results from the PowerShell commands above.
