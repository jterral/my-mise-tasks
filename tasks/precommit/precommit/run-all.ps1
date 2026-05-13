#MISE description="Run all pre-commit tasks"
#MISE depends=["precommit:check-prerequisites"]

$ErrorActionPreference = "Stop"

pre-commit run --all-files
