#!/bin/bash

VERSION=$(git describe | grep -Po "\d\.\d(\.\d)?(?=(-\d+)?(-\w+)?)")
GIT_COMMIT_NUM=$(git describe | grep -Po "(?<=$VERSION-)\d+")

NUM_TMP="-$GIT_COMMIT_NUM"
if [ "$NUM_TMP" = "-" ]; then
    NUM_TMP=""
fi

GIT_COMMIT_HASH=$(git describe | grep -Po "(?<=${VERSION}${NUM_TMP}-)\w+")

if [ "$GIT_COMMIT_NUM" = "" ]; then
    echo -n "$VERSION"
else
    echo -n "$VERSION~$GIT_COMMIT_NUM~$GIT_COMMIT_HASH"
fi

