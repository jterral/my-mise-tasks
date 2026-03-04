#!/usr/bin/env bash
#MISE description="Run pre-commit hook"
#USAGE flag "--hook <hook_name>" "Name of the pre-commit hook to run"
#MISE depends=["precommit:check-prerequisites"]

set -euo pipefail

if [ -z "$usage_hook" ]; then
  echo "❌ Error: --hook flag is required."
  exit 1
fi

echo "🔎 Running pre-commit hook: $usage_hook ..."
pre-commit run "$usage_hook" --all-files
