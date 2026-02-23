#!/usr/bin/env bash
#MISE description="Uninstall all pre-commit hooks"
#MISE depends=["precommit:check-prerequisites"]

set -euo pipefail

echo "🧹 Uninstalling all pre-commit hooks..."
pre-commit uninstall
