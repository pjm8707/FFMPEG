# enable demuxder & paser & util. decoder not needed but demuxer depends on decoder
# --disable-optimizations 
./configure --enable-cross-compile --target-os=freebsd --arch=arm --cross-prefix=/home/gregory/MentorGraphics/Sourcery_CodeBench_Lite_for_ARM_EABI/bin/arm-none-eabi- --prefix=./out/arm  --disable-mmx --disable-shared --disable-asm --disable-hwaccels --disable-indevs --disable-outdevs --disable-devices --disable-avdevice --disable-swresample --disable-swscale  --disable-postproc --disable-avfilter --disable-pthreads --disable-w32threads --disable-os2threads --disable-network --disable-dct --disable-dwt --disable-error-resilience --disable-lsp --disable-mdct --disable-rdft --disable-fft --disable-filters --disable-protocols --disable-muxers --disable-encoders -disable-programs

make
make install




