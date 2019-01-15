ndk-build doesn't work

use this instead:

make OSD="retro" verbose=1 RETRO=1 NOWERROR=1 NOASM="1" gcc="android-arm" OS="linux" TARGETOS="android-arm" CONFIG=libretro NO_USE_MIDI="1" TARGET=mame -j4

( More info at https://github.com/libretro/mame/blob/master/src/osd/libretro/libretro-internal/README.MD )
