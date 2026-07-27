#!/bin/bash

DATA_VALIDADE=20260730
DATA_ATUAL=$(date +%Y%m%d)

if [ "$DATA_ATUAL" -gt "$DATA_VALIDADE" ]; then
    clear
    echo "=========================================="
    echo "          86 RATO - EXPIRADO             "
    echo "=========================================="
    echo " [!] Este painel expirou!"
    echo " [!] Aguarde o desenvolvedor atualizar"
    echo "=========================================="
    exit 1
fi

su -c "setenforce 0" > /dev/null 2>&1

while true; do
    clear
    echo "=========================================="
    echo "          86 RATO - TERMINAL             "
    echo "=========================================="
    echo " [1] Injetar HS Barriga"
    echo " [2] Injetar HS Saci"
    echo " [3] Injetar Regedit"
    echo " [4] Injetar Bala Magica"
    echo " [5] Injetar Holograma"
    echo " [6] Restaurar Avatar Original"
    echo " [0] Sair"
    echo "=========================================="
    read -p "Escolha uma opcao: " opcao

    DIR_AVATAR="/data/data/com.dts.freefireth/files/contentcache/Compulsory/android/gameassetbundles/avatar/"
    TARGET_AVATAR="assetindexer.~2B5oG~2FR1rI5cWwRB~2FmeruzwbS014~3D"
    DIR_FILES="/data/data/com.dts.freefireth/files/"
    TARGET_HOLOGRAM="split_asset_pack_install_time.apk.pdcache"

    case $opcao in
        1)
            echo "[+] Aplicando HS Barriga..."
            su -c "mkdir -p $DIR_AVATAR && cp -f /sdcard/Download/RatoPainel/hs_barriga $DIR_AVATAR$TARGET_AVATAR && chmod 777 $DIR_AVATAR$TARGET_AVATAR"
            echo "Sucesso!"
            ;;
        2)
            echo "[+] Aplicando HS Saci..."
            su -c "mkdir -p $DIR_AVATAR && cp -f /sdcard/Download/RatoPainel/hs_saci $DIR_AVATAR$TARGET_AVATAR && chmod 777 $DIR_AVATAR$TARGET_AVATAR"
            echo "Sucesso!"
            ;;
        3)
            echo "[+] Aplicando Regedit..."
            su -c "mkdir -p $DIR_AVATAR && cp -f /sdcard/Download/RatoPainel/regedit $DIR_AVATAR$TARGET_AVATAR && chmod 777 $DIR_AVATAR$TARGET_AVATAR"
            echo "Sucesso!"
            ;;
        4)
            echo "[+] Aplicando Bala Magica..."
            su -c "mkdir -p $DIR_AVATAR && cp -f /sdcard/Download/RatoPainel/bala_magica $DIR_AVATAR$TARGET_AVATAR && chmod 777 $DIR_AVATAR$TARGET_AVATAR"
            echo "Sucesso!"
            ;;
        5)
            echo "[+] Aplicando Holograma..."
            su -c "mkdir -p $DIR_FILES && cp -f /sdcard/Download/RatoPainel/holograma_mod $DIR_FILES$TARGET_HOLOGRAM && chmod 777 $DIR_FILES$TARGET_HOLOGRAM"
            echo "Sucesso!"
            ;;
        6)
            echo "[+] Restaurando Original..."
            su -c "cp -f /sdcard/Download/RatoPainel/avatar_original $DIR_AVATAR$TARGET_AVATAR && chmod 777 $DIR_AVATAR$TARGET_AVATAR"
            echo "Restaurado!"
            ;;
        0)
            echo "Saindo..."
            exit 0
            ;;
        *)
            echo "Opcao invalida!"
            ;;
    esac
    echo ""
    read -p "Pressione ENTER para continuar..."
done
