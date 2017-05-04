Mapcrafter snap package
=======================

This is a snap package for mapcrafter based on the 'master' branch.

This has been uploaded to the snap store, and can be installed as follows:

    sudo snap install --edge --devmode mapcrafter

If you wish to upgrade to a newer release on the edge channel, you can run:

    sudo snap refresh --devmode --edge mapcrafter


Commands
========

The commands that a snap package puts on the `$PATH` in `/snap/bin` must begin
with the same prefix as the name of the snap. Therefore, the following commands
have been made available:

 * `mapcrafter`: The main `mapcrafter` binary.
 * `mapcrafter.export-textures`: The `mapcrafter_textures.py` script.
   (Used to export textures from the Minecraft jar.)


Usage Examples
==============

The following will extract usable textures using the 1.11.2 version of the `client.jar`:

    sudo snap install --edge --devmode mapcrafter
    
    export SNAP_HOME="$(mapcrafter --find-resources | grep "Your home" | grep -o '/.*')"
    mkdir -p ~/.mapcrafter/data/textures && \
        mapcrafter.export-textures \
            -f ~/.minecraft/versions/1.11.2/1.11.2.jar \
            "$SNAP_HOME"/textures

    mapcrafter -c ./render.conf -j 8


Development
===========

In order to test this package, simply change to the `snap` branch and run
`snapcraft`.

If all goes well, you can then install the development package using:

    sudo snap install --devmode *.snap


Known Issues
============

 * Confinement level should be increased (probably to `classic`).
