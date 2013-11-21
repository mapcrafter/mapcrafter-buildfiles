#!/bin/bash

VERSION=$(git describe | grep -Po "\d\.\d\.\d(-\d+)?")
GITVERSION=$(git describe)
DATE=$(date -R)

echo "mapcrafter ($VERSION) unstable; urgency=low"
echo ""
echo "  * Git version $GITVERSION"
echo ""
echo " -- Moritz Hilscher <m0r13@mapcrafter.org>  $DATE"
