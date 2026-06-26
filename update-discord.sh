#!/bin/bash

set -e

echo "Entferne alte Discord-Version..."
sudo apt remove discord -y || true

echo "Lade aktuelle Discord .deb herunter..."
TMP_DEB="/tmp/discord_latest.deb"

wget -O "$TMP_DEB" "https://discord.com/api/download?platform=linux&format=deb"

echo "Installiere Discord..."
sudo apt install "$TMP_DEB" -y

echo "Bereinige temporäre Dateien..."
rm -f "$TMP_DEB"

echo "Discord wurde erfolgreich aktualisiert."