#MISE description="Install pre-commit hooks"
#MISE depends=["precommit:check-prerequisites"]

$ErrorActionPreference = "Stop"

pre-commit install
