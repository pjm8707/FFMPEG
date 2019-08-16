chmod 755 configure
find -name '*.sh' |xargs  chmod 755
./configure --enable-cross-compile --target-os=linux --arch=arm --cross-prefix=/Tools/gcc-arm-none-linux-gnueabi/bin/arm-none-linux-gnueabi- --cc=/Tools/gcc-arm-none-linux-gnueabi/bin/arm-none-linux-gnueabi-gcc --disable-encoders --prefix=./out/armlinux --disable-armv5te --disable-armv6 --disable-mmx --disable-shared --disable-optimizations --disable-asm

make
make install




