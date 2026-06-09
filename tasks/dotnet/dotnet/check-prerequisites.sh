#!/usr/bin/env bash
#MISE description="Check prerequisites for dotnet tasks"
#MISE quiet=true
#MISE hide=true

set -euo pipefail

if ! command -v dotnet &> /dev/null; then
    echo "❌ .NET CLI is not installed"
    exit 1
fi
