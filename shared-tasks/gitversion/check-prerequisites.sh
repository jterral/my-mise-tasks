#!/usr/bin/env bash
#MISE description="Check prerequisites for gitversion"
#MISE hide=true

set -euo pipefail

if ! command -v gitversion &> /dev/null; then
    echo "❌ GitVersion CLI is not installed"
    exit 1
fi
