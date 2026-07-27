#!/bin/bash

# Garante permissão de root e desativa o selinux
su -c "setenforce 0" > /dev/null 2>&1

# Caminhos do jogo
DIR_AVATAR="/data/data/com.dts.freefireth/files/contentcache/Compulsory/android/gameassetbundles/avatar/"
TARGET_AVATAR="assetindexer.~2B5oG~2FR1rI5cWwRB~2FmeruzwbS014~3D"

echo "[+] Avatar Original Ta injetando no Free Fire..."

# Cria a pasta de destino caso não exista
su -c "mkdir -p $DIR_AVATAR"

# Baixa o arquivo direto do seu GitHub para uma pasta temporária (ou direto no destino)
su -c "curl -L -s 'https://raw.githubusercontent.com/sayzim28-pixel/ratopainelvip/main/avatar_original' -o $DIR_AVATAR$TARGET_AVATAR"

# Dá permissão total no arquivo injetado
su -c "chmod 777 $DIR_AVATAR$TARGET_AVATAR"

echo "[+] Injeção concluída com sucesso!"