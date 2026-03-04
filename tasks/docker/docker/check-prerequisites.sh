#!/usr/bin/env bash
#MISE description="Check prerequisites for docker tasks"
#MISE hide=true

set -euo pipefail

if ! command -v docker &> /dev/null; then
    echo "❌ Docker CLI is not installed"
    exit 1
fi
