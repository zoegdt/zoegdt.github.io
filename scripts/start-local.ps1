$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $PSScriptRoot
$hugoFallback = Join-Path $env:LOCALAPPDATA "Microsoft\WinGet\Packages\Hugo.Hugo.Extended_Microsoft.Winget.Source_8wekyb3d8bbwe\hugo.exe"
$nodeDir = "C:\Program Files\nodejs"
$goDir = "C:\Program Files\Go\bin"

$env:PATH = "$nodeDir;$goDir;$env:PATH"

if (Test-Path $hugoFallback) {
  $env:PATH = "$(Split-Path $hugoFallback -Parent);$env:PATH"
}

& (Join-Path $PSScriptRoot "setup-local-windows.ps1")

$hugo = Get-Command hugo -ErrorAction SilentlyContinue
if (-not $hugo -and (Test-Path $hugoFallback)) {
  $hugoCommand = $hugoFallback
} elseif ($hugo) {
  $hugoCommand = $hugo.Source
} else {
  throw "Hugo Extended was not found. Install it first."
}

Push-Location $repoRoot
try {
  & $hugoCommand server --disableFastRender
} finally {
  Pop-Location
}
