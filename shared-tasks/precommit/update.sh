#!/usr/bin/env bash
#MISE description="Update pre-commit hooks"
#MISE depends=["precommit:check-prerequisites"]

set -euo pipefail

echo "🔄 Updating pre-commit hooks..."

pre-commit autoupdate
