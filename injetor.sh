#!/bin/bash



# ==========================================

# CONFIGURAÇÃO DE VALIDADE DO PAINEL

# ==========================================

# Coloque a data limite no formato AAAAMMDD (Ano, Mês, Dia)

DATA_VALIDADE=20260730  # Exemplo: Expira dia 30 de Julho de 2026



# Pega a data atual do celular no mesmo formato (AAAAMMDD)

DATA_ATUAL=$(date +%Y%m%d)



# Trava se a data atual for maior que a validade

if [ "$DATA_ATUAL" -gt "$DATA_VALIDADE" ]; then

    clear

    echo "=========================================="

    echo "          86 RATO - EXPIRADO             "

    echo "=========================================="

    echo " [!] Este painel expirou!"

    echo " [!] Aguarde o desenvolvedor atualizar"

    echo "     o painel para liberar o acesso."

    echo "=========================================="

    exit 1

fi



# Se estiver dentro da validade, o painel abre normalmente:

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

 
