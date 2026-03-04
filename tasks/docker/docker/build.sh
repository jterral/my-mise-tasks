#!/usr/bin/env bash
#MISE description="Build a Docker image"
#MISE depends=["docker:check-prerequisites"]
#USAGE flag "--image <image_name>" help="Image name to build"
#USAGE flag "--tag <tag>" help="Image tag (default: latest)" default="latest"
#USAGE flag "--file <dockerfile_path>" help="Dockerfile path (default: Dockerfile)" default="Dockerfile"
#USAGE flag "--context <build_context>" help="Build context path (default: .)" default="."

set -euo pipefail

IMAGE_NAME="${usage_image:?}"
TAG="${usage_tag?}"
DOCKERFILE_PATH="${usage_file?}"
BUILD_CONTEXT="${usage_context?}"

docker build -f "$DOCKERFILE_PATH" -t "$IMAGE_NAME:$TAGg" "$BUILD_CONTEXT"
