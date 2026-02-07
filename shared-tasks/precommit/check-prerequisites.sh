#!/usr/bin/env bash
#MISE description="Check prerequisites for pre-commit"
#MISE hide=true

set -euo pipefail

if ! command -v pre-commit &> /dev/null; then
    echo "❌ Pre-commit CLI is not installed"
    exit 1
fi
