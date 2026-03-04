#!/usr/bin/env bash
#MISE description="Run all pre-commit tasks"
#MISE depends=["precommit:check-prerequisites"]

set -euo pipefail

echo "🔎 Running all pre-commit tasks..."
pre-commit run --all-files
