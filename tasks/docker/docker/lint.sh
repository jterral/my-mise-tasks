#!/usr/bin/env bash
#MISE description="Lint Dockerfile with docker build --check"
#MISE depends=["docker:check-prerequisites"]
#USAGE flag "--file <dockerfile_path>" help="Dockerfile path (default: Dockerfile)" default="Dockerfile"
#USAGE flag "--context <build_context>" help="Build context path (default: .)" default="."

set -euo pipefail

DOCKERFILE_PATH="${usage_file?}"
BUILD_CONTEXT="${usage_context?}"

docker build --check -f "$DOCKERFILE_PATH" "$BUILD_CONTEXT"
