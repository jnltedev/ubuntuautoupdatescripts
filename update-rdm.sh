#!/bin/bash

set -euo pipefail

DOWNLOAD_PAGE="https://devolutions.net/remote-desktop-manager/download/"
TMP_DIR="$(mktemp -d)"
TMP_DEB="$TMP_DIR/remotedesktopmanager.deb"

cleanup() {
    rm -rf "$TMP_DIR"
}

trap cleanup EXIT

echo "Fetching latest RDM download link..."
DOWNLOAD_URL="$(
    wget -qO- "$DOWNLOAD_PAGE" \
        | grep -oE 'https://cdn\.devolutions\.net/download/Linux/RDM/[0-9.]+/RemoteDesktopManager_[0-9.]+_amd64\.deb' \
        | head -n1
)"

if [[ -z "${DOWNLOAD_URL:-}" ]]; then
    echo "Could not determine the latest RDM .deb download URL."
    exit 1
fi

VERSION="$(printf '%s' "$DOWNLOAD_URL" | sed -E 's#.*/RDM/([0-9.]+)/RemoteDesktopManager_.*#\1#')"

echo "Latest RDM version: $VERSION"
echo "Downloading RDM .deb..."
wget -O "$TMP_DEB" "$DOWNLOAD_URL"

echo "Installing RDM..."
sudo apt install "$TMP_DEB" -y

echo "Remote Desktop Manager has been successfully updated."
