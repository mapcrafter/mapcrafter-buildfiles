#!/bin/bash

rm -rf dist
mkdir dist

cp src/mapcrafter.exe dist
cp src/mapcrafter_markers.exe dist
cp src/tools/testtextures.exe dist
cp src/mapcraftercore/libmapcraftercore.dll dist
cp src/logging.conf dist
cp mapcrafter-gui/release/mapcrafter-gui.exe dist

cp -R src/data dist
MC_VERSION=$(cat MCVERSION)
wget https://s3.amazonaws.com/Minecraft.Download/versions/$MC_VERSION/$MC_VERSION.jar -O mc.jar
src/tools/mapcrafter_textures.py -f mc.jar dist/data/textures
rm mc.jar


# http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in
DIR=$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)
VERSION=$($DIR/../version.sh)
RELEASENAME="mapcrafter_"$VERSION

if [ "$ARCH" = "i686" ]; then
	RELEASENAME=$RELEASENAME"_win32"
	cp /usr/i686-w64-mingw32/bin/libgcc_s_sjlj-1.dll dist
elif [ "$ARCH" = "x86_64" ]; then
	RELEASENAME=$RELEASENAME"_win64"
	cp /usr/x86_64-w64-mingw32/bin/libgcc_s_seh-1.dll dist
fi

cp /usr/$ARCH-w64-mingw32/bin/lib{stdc++-6,winpthread-1}.dll dist
#cp /usr/$ARCH-w64-mingw32/bin/libboost_{filesystem,program_options,iostreams,system}-mt.dll dist
#cp /usr/$ARCH-w64-mingw32/bin/lib{jpeg-8,png16-16}.dll dist
#cp /usr/$ARCH-w64-mingw32/bin/{libbz2-1,zlib1}.dll dist
cp /usr/$ARCH-w64-mingw32/bin/libpng16-16.dll dist
cp /usr/$ARCH-w64-mingw32/bin/zlib1.dll dist
cp /usr/$ARCH-w64-mingw32/bin/Qt{Core,Gui}4.dll dist

cp VERSION dist/version.txt
echo " ("$VERSION")" >> dist/version.txt

rm -rf $RELEASENAME
mv dist $RELEASENAME
zip -r $RELEASENAME.zip $RELEASENAME
