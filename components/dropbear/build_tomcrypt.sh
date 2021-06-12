CFLAGS="-I../ -I../../ -DLOCALOPTIONS_H_EXISTS -DLTC_EASY -mlongcalls"
make -C dropbear/libtomcrypt CC=xtensa-esp32-elf-gcc RANLIB=xtensa-esp32-elf-ranlib AR=xtensa-esp32-elf-ar CFLAGS="$CFLAGS" clean libtomcrypt.a
make -C dropbear/libtommath CC=xtensa-esp32-elf-gcc RANLIB=xtensa-esp32-elf-ranlib AR=xtensa-esp32-elf-ar CFLAGS="$CFLAGS"  clean libtommath.a
