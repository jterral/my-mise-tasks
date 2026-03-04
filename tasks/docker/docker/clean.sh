#!/usr/bin/env bash
#MISE description="Aggressively clean Docker resources"
#MISE depends=["docker:check-prerequisites"]
#MISE confirm="This will remove all unused images, containers, networks, and volumes. Are you sure you want to continue?"

set -euo pipefail

docker system prune --all --volumes --force
