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
    
    mkdir -p ~/.mapcrafter/textures && \
        mapcrafter.export-textures \
            -f ~/.minecraft/versions/1.11.2/1.11.2.jar \
            ~/.mapcrafter/textures

    # This is a workaround for a bug; a more recent version of Minecraft seems
    # to have moved where this texture is located.
    cd ~/.mapcrafter/textures/blocks
    ln portal.png ../endportal.png

Create a configuration to point to your Mincraft world data files. The
following is a simple example, which would render a save file called "Test"
from the local client:

    output_dir = output

    [world:test]
    input_dir = /home/user/.minecraft/saves/Test

    [map:test]
    world = test

Then run Mapcrafter as follows:

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
