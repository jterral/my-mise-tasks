#!/usr/bin/env bash
#MISE description="Lint compose file with docker compose config"
#MISE depends=["docker:compose:check-prerequisites"]
#USAGE flag "-f --file <compose_file>" help="Compose file path (default: docker-compose.yml)" default="docker-compose.yml"

set -euo pipefail

COMPOSE_FILE="${usage_file?}"

docker compose -f "$COMPOSE_FILE" config --quiet
