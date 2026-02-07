#!/usr/bin/env bash
#MISE description="Configure pre-commit hooks"
#MISE depends=["precommit:check-prerequisites"]

set -e

echo "🔧 Configuring pre-commit hooks..."

pre-commit install

echo "🟢 Pre-commit hooks configured."
