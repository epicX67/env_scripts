#!/bin/sh
export USE_CCACHE=1
export CCACHE_DIR=/home/DirectoryName/.ccache
prebuilts/misc/linux-x86/ccache/ccache -M 50G
. build/envsetup.sh
lunch romName_aio_otfp-userdebug
mka bacon -j32
