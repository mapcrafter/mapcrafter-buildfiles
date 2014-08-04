# Building Mapcrafter on Windows #

1. Make sure you have MinGW, CMake and nasm installed and it's all available in your path.

2. Go to the lib/ directory, download the following files, unpack them and then run the build batch files (in this order):

* `http://zlib.net/zlib-1.2.8.tar.gz`
* `http://downloads.sourceforge.net/project/libpng/libpng16/1.6.12/libpng-1.6.12.tar.gz`
* `http://downloads.sourceforge.net/project/libjpeg-turbo/1.3.1/libjpeg-turbo-1.3.1.tar.gz`
* `http://downloads.sourceforge.net/project/boost/boost/1.55.0/boost_1_55_0.tar.gz`
  * There might be a weird problem with boost 1.55 and MinGW (that it can't find some Visual Studio batch files...). Go to tools/build/v2/engine and add a new line in build.bat just before line 93 (":Guess_Toolset"). Don't ask why that works.

3. Clone the Mapcrafter source from GitHub (https://github.com/mapcrafter/mapcrafter.git).

4. Run build_mapcrafter.bat to build Mapcrafter. Mapcrafter will be built in mapcrafter/build/.

5. Put the following files from MinGW (probably from C:\MinGW\bin\) into the otherlibs/ directory:

* `libgcc_s_dw2-1.dll`
* `libstdc++-6.dll`

6. Run dist_mapcrafter.bat to collect all files to the dist/ directory.

That's it.
