cd mapcrafter
mkdir build
cd build

cmake -G "MinGW Makefiles" -DBOOST_ROOT=%CD%\..\..\lib\boost_1_55_0 -DZLIB_INCLUDE_DIR=%CD%\..\..\lib\zlib-1.2.8 -DPNG_PNG_INCLUDE_DIR=%CD%\..\..\lib\libpng-1.6.7 -DPNG_LIBRARY_RELEASE=%CD%\..\..\lib\libpng-1.6.12\libpng16.dll -DJPEG_INCLUDE_DIR=%CD%\..\..\lib\libjpeg-turbo-1.3.1 -DJPEG_LIBRARY=%CD%\..\..\lib\libjpeg-turbo-1.3.1\libturbojpeg.a -DOPT_USE_BOOST_THREAD=ON -DOPT_BOOST_STATIC=ON -DOPT_SKIP_TESTS=ON ../

mingw32-make clean
mingw32-make

pause
