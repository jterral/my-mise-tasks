#!/usr/bin/env bash
#MISE description="Build a .NET project"
#MISE depends=["dotnet:check-prerequisites"]
#USAGE flag "--solution <solution_name>" help="Solution name to build"
#USAGE flag "--configuration <configuration>" help="Build configuration (default: Debug)" default="Debug"

set -euo pipefail

SOLUTION_NAME="${usage_solution?}"
CONFIGURATION="${usage_configuration?}"

dotnet build "$SOLUTION_NAME" --configuration "$CONFIGURATION"
