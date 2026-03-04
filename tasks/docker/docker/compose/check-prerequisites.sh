#!/usr/bin/env bash
#MISE description="Check prerequisites for docker tasks"
#MISE hide=true

set -euo pipefail

if ! docker compose version &> /dev/null; then
    echo "❌ Docker Compose v2 plugin is required (docker compose)"
    exit 1
fi
