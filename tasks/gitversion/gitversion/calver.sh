#!/usr/bin/env bash
#MISE description="Get the current version using GitVersion with CalVer format (YY.WW.N)"
#MISE depends=["gitversion:check-prerequisites"]

set -euo pipefail

calver=$(date +'%y.%V')
minor=$(git tag -l "${calver}.*" | wc -l)
tag="${calver}.${minor}"

echo "$tag"
