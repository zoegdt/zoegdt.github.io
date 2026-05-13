$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $PSScriptRoot
$nodeDir = "C:\Program Files\nodejs"
$nodeExe = Join-Path $nodeDir "node.exe"
$npmCmd = Join-Path $nodeDir "npm.cmd"
$localNodeExe = Join-Path $repoRoot "node_modules\.bin\node.exe"

if (-not (Test-Path $nodeExe)) {
  throw "Node.js was not found at $nodeExe. Install Node.js LTS first."
}

if (-not (Test-Path $npmCmd)) {
  throw "npm.cmd was not found at $npmCmd. Reinstall Node.js LTS."
}

if (-not (Test-Path (Join-Path $repoRoot "node_modules"))) {
  Write-Host "Installing Node dependencies..."
  & $npmCmd install
}

if (-not (Test-Path $localNodeExe)) {
  Write-Host "Copying node.exe next to the local Tailwind CLI for Windows compatibility..."
  Copy-Item $nodeExe $localNodeExe -Force
}

Write-Host "Local Windows setup is ready."
