#!/usr/bin/env bash
#MISE description="Get the current version using GitVersion"
#MISE depends=["gitversion:check-prerequisites"]

set -euo pipefail

gitversion -showvariable SemVer
