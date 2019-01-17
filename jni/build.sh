#!/bin/bash

if [ "x$1" = "x" ]; then
	echo "use $0 [arm|x86]"
	exit 1
fi

ARCH=$1
shift

export PATH=/tmp/ndk-$ARCH/bin/:$PATH

cd ..
make OSD="retro" verbose=1 RETRO=1 NOWERROR=1 NOASM="1" \
  gcc="android-$ARCH" OS="linux" TARGETOS="android-$ARCH" \
  CONFIG=libretro NO_USE_MIDI="1" TARGET=mame  platform="android-$ARCH" $*
