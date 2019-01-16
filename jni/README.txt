ndk-build doesn't work

use this instead:

/home/fcatrin/devel/android-ndk-r10e/build/tools/make-standalone-toolchain.sh --arch=arm --platform=android-15 --install-dir=/tmp/ndk-arm
export PATH=/tmp/ndk-arm/bin/:$PATH
make OSD="retro" verbose=1 RETRO=1 NOWERROR=1 NOASM="1" gcc="android-arm" OS="linux" TARGETOS="android-arm" CONFIG=libretro NO_USE_MIDI="1" TARGET=mame  platform="android" -j4

( More info at https://github.com/libretro/mame/blob/master/src/osd/libretro/libretro-internal/README.MD )
