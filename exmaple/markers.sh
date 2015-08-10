#!/bin/bash

date=$(date -u)
version=$(git describe)
text="<b>Last update:</b> $date<br /><b>Mapcrafter version:</b> $version<br /><br /><b>Generated blocks:</b> <a href='blocks.png'>blocks.png</a>"

echo "var MAPCRAFTER_MARKERS = ["
echo "{"
echo "\"id\" : \"markers\","
echo "\"name\" : \"Markers\","
echo "\"markers\" : {"
echo "\"exmaple\" : ["
echo "{\"pos\" : [-242, 59, 64], \"title\" : \"Exmaple\", \"text\" : \"$text\"},"
echo "],"
echo "},"
echo "},"
echo "];"

