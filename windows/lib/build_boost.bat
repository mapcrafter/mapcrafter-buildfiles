cd boost_1_55_0

bootstrap.bat mingw

tools\build\v2\engine\bin.ntx86\b2.exe clean
tools\build\v2\engine\bin.ntx86\b2.exe --with-thread --with-filesystem --with-iostreams -sZLIB_SOURCE=%CD%/../zlib-1.2.8 --with-program_options --with-system --with-test --with-thread toolset=gcc cxxflags=-fPIC

pause
