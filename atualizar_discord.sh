#!/bin/bash

# URL para baixar o pacote mais recente
URL="https://discord.com/api/download?platform=linux&format=deb"

# Diretório temporário para armazenar o pacote
TEMP_DIR="/tmp/discord_update"
DEB_FILE="$TEMP_DIR/discord.deb"

# Cria o diretório temporário
mkdir -p "$TEMP_DIR"

# Faz o download do pacote mais recente
echo "Baixando o Discord..."
wget -O "$DEB_FILE" "$URL"

# Instala o pacote usando dpkg
echo "Instalando o Discord..."
sudo dpkg -i "$DEB_FILE"


# Remove o arquivo temporário
echo "Limpando arquivos temporários..."
rm -rf "$TEMP_DIR"

echo "Discord atualizado com sucesso!"
