# refer to https://trac.ffmpeg.org/wiki/CompilationGuide/MSVC
# this script shoule be ran in VisualStudio Dos Prompt => msys.bat
mv /bin/link.exe /bin/link_bak.exe
cp ./msvc/inttypes.h ./inttypes.h
cp ./msvc/stdint.h ./stdint.h

cp ./msvc/zlib.h   "/c/Program Files (x86)/Microsoft Visual Studio 10.0/VC/INCLUDE/zlib.h"
cp ./msvc/zconf.h   "/c/Program Files (x86)/Microsoft Visual Studio 10.0/VC/INCLUDE/zconf.h"
cp ./msvc/zlib.lib   "/c/Program Files (x86)/Microsoft Visual Studio 10.0/VC/LIB/zlib.lib"


./configure --toolchain=msvc --disable-shared --disable-yasm --disable-encoders --prefix=./out/windows

#./configure --toolchain=msvc --disable-shared --enable-libvpx --enable-libvorbis --disable-yasm --disable-encoders --prefix=./out/windows 

make
make install



rm -f ./inttypes.h
rm -f ./stdint.h
rm -f "/c/Program Files (x86)/Microsoft Visual Studio 10.0/VC/INCLUDE/zlib.h"
rm -f "/c/Program Files (x86)/Microsoft Visual Studio 10.0/VC/INCLUDE/zconf.h"
rm -f "/c/Program Files (x86)/Microsoft Visual Studio 10.0/VC/LIB/zlib.lib"


mv /bin/link_bak.exe /bin/link.exe



