#!/bin/bash

# http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in
DIR=$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)
VERSION=$($DIR/version.sh)
GITVERSION=$(git describe)
DATE=$(date -R)

echo "mapcrafter ($VERSION-1) unstable; urgency=low"
echo ""
echo "  * Git version $GITVERSION"
echo ""
echo " -- Moritz Hilscher <m0r13@mapcrafter.org>  $DATE"
