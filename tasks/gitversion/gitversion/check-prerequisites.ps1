#MISE description="Check prerequisites for gitversion"
#MISE hide=true

$ErrorActionPreference = "Stop"

if (-not (Get-Command gitversion -ErrorAction SilentlyContinue)) {
    Write-Host "❌ GitVersion CLI is not installed"
    exit 1
}
