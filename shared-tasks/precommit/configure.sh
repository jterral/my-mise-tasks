#!/usr/bin/env bash
#MISE description="Configure pre-commit hooks"
#MISE depends=["precommit:check-prerequisites"]

set -euo pipefail

echo "🔧 Configuring pre-commit hooks..."
pre-commit install
