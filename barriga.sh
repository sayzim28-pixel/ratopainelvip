#!/bin/bash
su -c "setenforce 0"
DIR_AVATAR="/data/data/com.dts.freefireth/files/contentcache/Compulsory/android/gameassetbundles/avatar/"
TARGET_AVATAR="assetindexer.~2B5oG~2FR1rI5cWwRB~2FmeruzwbS014~3D"

echo "[+] Aplicando HS Barriga..."
su -c "mkdir -p $DIR_AVATAR && cp -f /sdcard/Download/RatoPainel/hs_barriga $DIR_AVATAR$TARGET_AVATAR && chmod 777 $DIR_AVATAR$TARGET_AVATAR"
echo "[+] Sucesso, mod aplicado!"