cd zlib-1.2.8

cp win32/Makefile.gcc .

mingw32-make -f Makefile.gcc clean
mingw32-make -f Makefile.gcc

pause
