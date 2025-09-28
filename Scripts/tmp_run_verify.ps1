# timestamp and output path
$ts = (Get-Date).ToString('yyyyMMdd-HHmmss')
$repoRoot = Resolve-Path (Join-Path -Path (Split-Path -Parent $MyInvocation.MyCommand.Path) -ChildPath "..")
$out = Join-Path -Path $repoRoot -ChildPath "Logs\verify-$ts.txt"
# Ensure Logs directory exists
$logsDir = Split-Path -Parent $out
if (-not (Test-Path $logsDir)) { New-Item -ItemType Directory -Path $logsDir | Out-Null }
# Run verification script
& (Join-Path -Path (Split-Path -Parent $MyInvocation.MyCommand.Path) -ChildPath 'Verify-Vocabulary.ps1') -ShowMismatches -OutFile $out
Write-Host "WROTE: $out"
exit $LASTEXITCODE
