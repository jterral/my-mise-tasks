#MISE description="Uninstall all pre-commit hooks"
#MISE depends=["precommit:check-prerequisites"]

$ErrorActionPreference = "Stop"

pre-commit uninstall
