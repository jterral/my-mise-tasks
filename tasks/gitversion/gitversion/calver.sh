#!/usr/bin/env bash
#MISE description="Get the current version using GitVersion with CalVer format (YY.WW.N)"
#MISE depends=["gitversion:check-prerequisites"]

set -euo pipefail

calver=$(date +'%y.%U')
minor=$(git tag -l "${calver}.*" | sort -V | wc -l)
tag="${calver}.${minor}"

mise set CALVER="$tag"
echo "\$CALVER=$CALVER"
