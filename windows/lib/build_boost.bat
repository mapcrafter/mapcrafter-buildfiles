cd boost_1_54_0

if not exist b2.exe call bootstrap.bat mingw

b2.exe clean
b2.exe --with-thread --with-filesystem --with-iostreams -sZLIB_SOURCE=%CD%/../zlib-1.2.8 --with-program_options --with-system --with-test --with-thread toolset=gcc cxxflags=-fPIC

cd ..

if not defined NOPAUSE pause
