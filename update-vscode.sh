#!/bin/bash

set -e

echo "Entferne alte VSCode-Version..."
sudo apt remove code -y || true

echo "Lade aktuelle VSCode .deb herunter..."
TMP_DEB="/tmp/vscode.deb"

wget -O "$TMP_DEB" "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"

echo "Installiere VSCode..."
sudo apt install "$TMP_DEB" -y

echo "Bereinige temporäre Dateien..."
rm -f "$TMP_DEB"

echo "VSCode wurde erfolgreich aktualisiert."