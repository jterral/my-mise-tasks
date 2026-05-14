#MISE description="Get the current version using GitVersion"
#MISE depends=["gitversion:check-prerequisites"]

$ErrorActionPreference = "Stop"

gitversion -showvariable SemVer
