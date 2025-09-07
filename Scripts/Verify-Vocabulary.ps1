param(
    [string]$Root = "d:/GitHub/inspirational-quotes/EnglishLearning/Vocabulary",
    [switch]$ShowMismatches,
    [string]$OutFile
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

if (-not (Test-Path -LiteralPath $Root)) {
    Write-Error "Path not found: $Root"
    exit 1
}

$results = @()
$files = Get-ChildItem -Path $Root -Filter "*.md" | Where-Object { $_.Name -match '^[A-Z]\.md$' } | Sort-Object Name
foreach ($file in $files) {
    $name = $file.Name
    $lines = Get-Content -LiteralPath $file.FullName
    $words = @()
    foreach ($line in $lines) {
        if ($line -like '## *' -and $line -ne '## WordName') {
            $words += $line.Substring(3).Trim()
        }
    }
    $sorted = $words | Sort-Object
    $ok = (($words -join '|') -eq ($sorted -join '|'))
    $results += [pscustomobject]@{
        File = $name; Count = $words.Count; Ordered = $ok;
        Current = if ($ShowMismatches) { $words -join ', ' } else { '' };
        Correct = if ($ShowMismatches) { $sorted -join ', ' } else { '' }
    }
}

# Prepare text output
$linesOut = @()
$linesOut += "Verification run: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
foreach ($r in ($results | Sort-Object File)) {
    $status = if ($r.Ordered) { 'OK' } else { 'OUT OF ORDER' }
    $linesOut += ("{0} -> {1} ({2} words)" -f $r.File, $status, $r.Count)
    if (-not $r.Ordered -and $ShowMismatches) {
        if ($r.Current) { $linesOut += ("  Current: {0}" -f $r.Current) }
        if ($r.Correct) { $linesOut += ("  Correct: {0}" -f $r.Correct) }
    }
}

if ($OutFile) {
    $dir = Split-Path -Parent $OutFile
    if ($dir -and -not (Test-Path -LiteralPath $dir)) { New-Item -ItemType Directory -Path $dir | Out-Null }
    $linesOut | Set-Content -LiteralPath $OutFile -Encoding UTF8
}
else {
    $linesOut | ForEach-Object { Write-Host $_ }
}

# Return non-zero if any file is out of order
if ($results.Where({ -not $_.Ordered }).Count -gt 0) { exit 2 } else { exit 0 }
