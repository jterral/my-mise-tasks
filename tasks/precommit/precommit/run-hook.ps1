#MISE description="Run pre-commit hook"
#MISE depends=["precommit:check-prerequisites"]
#USAGE arg "<hook>" help="Name of the pre-commit hook to run"

$ErrorActionPreference = "Stop"

$hookName = $env:usage_hook
if (-not $hookName) {
    Write-Host "❌ Hook name is required"
    exit 1
}

pre-commit run $hookName --all-files
