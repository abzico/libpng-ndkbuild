# libpng-ndkbuild
Android.mk build script for libpng

Tested with libpng 1.6.36

# How

* Download `Android.mk` file of this project to your downloaded libpng source code at root directory
* Comment out `pngpriv.h` file `//#  error ZLIB_VERNUM != PNG_ZLIB_VERNUM \` to be able to pass the build process by avoid checking mismatch version

# License
[MIT](https://github.com/abzico/libpng-ndkbuild/blob/master/LICENSE), Angry Baozi ([https://abzi.co](https://abzi.co))
