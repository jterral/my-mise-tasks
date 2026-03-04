#!/usr/bin/env bash
#MISE description="Run pre-commit hook"
#MISE depends=["precommit:check-prerequisites"]
#USAGE arg "<hook>" help="Name of the pre-commit hook to run"

set -euo pipefail

HOOK_NAME="${usage_hook:?}"

pre-commit run "$HOOK_NAME" --all-files
