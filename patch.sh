#!/bin/sh
cd bionic
wget https://github.com/DNI9/patches_Mtk/raw/master/bionic.patch
patch -p1 < bionic.patch
cd .. && cd external/wpa_supplicant_8/
wget https://github.com/DNI9/patches_Mtk/raw/master/external_nvram.patch
patch -p1 < external_nvram.patch
cd .. && cd ..
cd frameworks/av
wget https://github.com/DNI9/patches_Mtk/raw/master/frameworks_av_audioflinger.patch
wget https://github.com/DNI9/patches_Mtk/raw/master/frameworks_av_camera.patch
wget https://github.com/DNI9/patches_Mtk/raw/master/frameworks_av_libmedia.patch
wget https://github.com/DNI9/patches_Mtk/raw/master/frameworks_av_mediaprofile.patch
patch -p1 < frameworks_av_audioflinger.patch
patch -p1 < frameworks_av_camera.patch
patch -p1 < frameworks_av_libmedia.patch
patch -p1 < frameworks_av_mediaprofile.patch
cd .. && cd native
wget https://github.com/DNI9/patches_Mtk/raw/master/frameworks_native_ui.patch
patch -p1 < frameworks_native_ui.patch
cd .. && cd ..
cd system/core
wget https://github.com/DNI9/patches_Mtk/raw/master/system_core.patch
patch -p1 < system_core.patch
cd .. && cd netd
wget https://github.com/DNI9/patches_Mtk/raw/master/system_netd.patch
patch -p1 < system_netd.patch
cd .. && cd ..
