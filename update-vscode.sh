#!/bin/bash

set -e

echo "Remove old VSCode version..."
sudo apt remove code -y || true

echo "Downloading latest VSCode .deb..."
TMP_DEB="/tmp/vscode.deb"

wget -O "$TMP_DEB" "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"

echo "Installing VSCode..."
sudo apt install "$TMP_DEB" -y

echo "Cleaning up temporary files..."
rm -f "$TMP_DEB"

echo "VSCode has been successfully updated."