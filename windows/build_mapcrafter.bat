cd mapcrafter
mkdir build
cd build

cmake -G "MSYS Makefiles" -DBOOST_ROOT=%CD%\..\..\lib\boost_1_54_0 -DZLIB_INCLUDE_DIR=%CD%\..\..\lib\zlib-1.2.8 -DZLIB_LIBRARY=%CD%\..\..\lib\zlib-1.2.8\zlib1.dll -DPNG_PNG_INCLUDE_DIR=%CD%\..\..\lib\libpng-1.5.18 -DPNG_LIBRARY_RELEASE=%CD%\..\..\lib\libpng-1.5.18\libpng15.dll -DJPEG_INCLUDE_DIR=%CD%\..\..\lib\libjpeg-turbo-1.3.1 -DJPEG_LIBRARY=%CD%\..\..\lib\libjpeg-turbo-1.3.1\libturbojpeg.a -DOPT_USE_BOOST_THREAD=OFF -DOPT_BOOST_STATIC=ON -DOPT_SKIP_TESTS=ON ../

mingw32-make clean
mingw32-make

cd ../..

if not defined NOPAUSE pause
