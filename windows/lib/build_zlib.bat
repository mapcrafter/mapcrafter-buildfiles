cd zlib-1.2.8

cp win32/Makefile.gcc .

if not defined CC set CC=gcc.exe

mingw32-make -f Makefile.gcc clean CC=%CC%
mingw32-make -f Makefile.gcc all CC=%CC%

cd ..

if not defined NOPAUSE pause
