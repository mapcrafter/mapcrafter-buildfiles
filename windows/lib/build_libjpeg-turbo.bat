cd libjpeg-turbo-1.3.1

cmake -G "MSYS Makefiles"

mingw32-make clean
mingw32-make

cd ..

if not defined NOPAUSE pause
