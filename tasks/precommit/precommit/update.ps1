#MISE description="Update pre-commit hooks"
#MISE depends=["precommit:check-prerequisites"]

$ErrorActionPreference = "Stop"

pre-commit autoupdate
