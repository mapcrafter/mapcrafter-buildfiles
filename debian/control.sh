#!/bin/bash

# http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in
DIR=$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)

PNG_DEV="libpng12-dev"
PNG="libpng12-0"

JPEG_DEV="libjpeg-dev"
JPEG="libjpeg"

BOOST_DEV=""
BOOST=""

function use_boost {
    v=$1
    BOOST_DEV="libboost$v-dev, libboost-iostreams$v-dev, libboost-system$v-dev, libboost-filesystem$v-dev, libboost-program-options$v-dev"
    if [ "$v" != "" ]; then
        v="$v.0"
    fi
    BOOST="libboost-iostreams$v, libboost-system$v, libboost-filesystem$v, libboost-program-options$v"
}

use_boost ""

DISTRO="$1"
RELEASE="$2"

if [ "$DISTRO" = "debian" ]; then
    if [ "$RELEASE" = "jessie" ]; then # stable
        JPEG_DEV="libjpeg62-turbo-dev"
        JPEG="libjpeg62-turbo"
        use_boost "1.55"
    elif [ "$RELEASE" = "wheezy" ]; then # oldstable
        JPEG_DEV="libjpeg8-dev"
        JPEG="libjpeg8"
        use_boost "1.49"
    else
        echo "Invalid debian release!"
        exit 1
    fi
elif [ "$DISTRO" = "ubuntu" ]; then
    if [ "$RELEASE" = "wily" ]; then # 15.10
        JPEG_DEV="libjpeg-turbo8-dev"
        JPEG="libjpeg-turbo8"
        use_boost "1.58"
    elif [ "$RELEASE" = "vivid" ]; then # 15.04
        JPEG_DEV="libjpeg-turbo8-dev"
        JPEG="libjpeg-turbo8"
        use_boost "1.55"
    elif [ "$RELEASE" = "trusty" ]; then # 14.04 LTS
        JPEG_DEV="libjpeg-turbo8-dev"
        JPEG="libjpeg-turbo8"
        use_boost "1.55"
    elif [ "$RELEASE" = "precise" ]; then # 12.04 LTS
        JPEG_DEV="libjpeg-turbo8-dev"
        JPEG="libjpeg-turbo8"
        use_boost "1.48"
    else
        echo "Invalid ubuntu release!"
        exit 1
    fi
else
    echo "Invalid distribution!"
    exit 1
fi

export BUILD_DEPENDS="$PNG_DEV, $JPEG_DEV, $BOOST_DEV"
export DEPENDS="libstdc++6, $PNG, $JPEG, $BOOST"

envsubst < $DIR/debian/control.template

