#!/bin/bash

set -e

echo "Removing old Discord version..."
sudo apt remove discord -y || true

echo "Downloading latest Discord .deb..."
TMP_DEB="/tmp/discord_latest.deb"

wget -O "$TMP_DEB" "https://discord.com/api/download?platform=linux&format=deb"

echo "Installing Discord..."
sudo apt install "$TMP_DEB" -y

echo "Cleaning up temporary files..."
rm -f "$TMP_DEB"

echo "Discord has been successfully updated."