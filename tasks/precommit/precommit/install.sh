#!/usr/bin/env bash
#MISE description="Install pre-commit hooks"
#MISE depends=["precommit:check-prerequisites"]

set -euo pipefail

pre-commit install
