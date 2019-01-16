ndk-build doesn't work

use this instead:

**** ARM ****

1. Create standalone toolchain

/home/fcatrin/devel/android-ndk-r10e/build/tools/make-standalone-toolchain.sh \
  --arch=arm --platform=android-15 --install-dir=/tmp/ndk-arm
  
export PATH=/tmp/ndk-arm/bin/:$PATH

2. Build

make OSD="retro" verbose=1 RETRO=1 NOWERROR=1 NOASM="1" \
  gcc="android-arm" OS="linux" TARGETOS="android-arm" \
  CONFIG=libretro NO_USE_MIDI="1" TARGET=mame  platform="android" -j4


**** x86 ****

1. Create standalone toolchain

/home/fcatrin/devel/android-ndk-r10e/build/tools/make-standalone-toolchain.sh \
  --arch=x86 --platform=android-15 --install-dir=/tmp/ndk-x86

export PATH=/tmp/ndk-x86/bin/:$PATH

2. Build

make OSD="retro" verbose=1 RETRO=1 NOWERROR=1 NOASM="1" \
  gcc="android-x86" OS="linux" TARGETOS="android-x86" \
  CONFIG=libretro NO_USE_MIDI="1" TARGET=mame  platform="android-x86" -j4



( More info at https://github.com/libretro/mame/blob/master/src/osd/libretro/libretro-internal/README.MD )
