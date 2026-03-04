#!/usr/bin/env bash
#MISE description="Uninstall all pre-commit hooks"
#MISE depends=["precommit:check-prerequisites"]

set -euo pipefail

pre-commit uninstall
