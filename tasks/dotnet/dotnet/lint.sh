#!/usr/bin/env bash
#MISE description="Lint a .NET project"
#MISE depends=["dotnet:check-prerequisites"]
#USAGE flag "--solution <solution_name>" help="Solution name to build"

set -euo pipefail

SOLUTION_NAME="${usage_solution?}"

dotnet format style --severity info --verify-no-changes "$SOLUTION_NAME"
dotnet format analyzers --severity info --verify-no-changes "$SOLUTION_NAME"
