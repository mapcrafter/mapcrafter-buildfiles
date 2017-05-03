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


Development
===========

In order to test this package, simply change to the `snap` branch and run
`snapcraft`.

If all goes well, you can then install the development package using:

    sudo snap install --devmode *.snap


Known Issues
============

 * Confinement level should be increased (probably to `classic`).
