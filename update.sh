#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Einmal sudo anfordern
sudo -v

# Sudo-Session aktiv halten
while true; do
    sudo -n true
    sleep 60
    kill -0 "$$" || exit
done 2>/dev/null &

for script in "$SCRIPT_DIR"/*.sh; do
    [[ "$script" == "$SCRIPT_DIR/update.sh" ]] && continue

    printf "%-30s" "$(basename "$script")"

    if bash "$script" >/dev/null 2>&1; then
        echo "✅ Erfolgreich"
    else
        echo "❌ Fehler"
    fi
done

echo
echo "🎉 Alle Updates abgeschlossen."