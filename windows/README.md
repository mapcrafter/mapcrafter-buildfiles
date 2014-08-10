# Building Mapcrafter on Windows #

1. Make sure you have MinGW, CMake and nasm installed and it's all available in your path.

2. Go to the lib/ directory, download the following files, unpack them and then run the build batch files (in this order):

* http://zlib.net/zlib-1.2.8.tar.gz
* http://downloads.sourceforge.net/project/libpng/libpng15/1.5.18/libpng-1.5.18.tar.gz
* http://downloads.sourceforge.net/project/libjpeg-turbo/1.3.1/libjpeg-turbo-1.3.1.tar.gz
* http://downloads.sourceforge.net/project/boost/boost/1.54.0/boost_1_54_0.tar.gz

3. Clone the Mapcrafter source from GitHub (https://github.com/mapcrafter/mapcrafter.git).

4. Run build_mapcrafter.bat to build Mapcrafter. Mapcrafter will be built in mapcrafter/build/.

5. Run dist_mapcrafter.bat to collect all files to the dist/ directory.

That's it.
