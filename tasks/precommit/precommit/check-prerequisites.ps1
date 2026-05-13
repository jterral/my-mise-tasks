#MISE description="Check prerequisites for pre-commit"
#MISE hide=true

$ErrorActionPreference = "Stop"

if (-not (Get-Command pre-commit -ErrorAction SilentlyContinue)) {
    Write-Host "❌ Pre-commit CLI is not installed"
    exit 1
}
