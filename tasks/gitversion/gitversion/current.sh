#!/usr/bin/env bash
#MISE description="Get the current version using GitVersion"
#MISE depends=["gitversion:check-prerequisites"]

set -euo pipefail

echo "🔍 Getting current version using GitVersion..."

gitversion -showvariable SemVer
