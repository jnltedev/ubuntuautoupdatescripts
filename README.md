# Ubuntu Auto Update Scripts

Eine kleine Sammlung von Bash-Skripten, um ein Ubuntu-System automatisch zu aktualisieren.

## Verwendung

1. Repository klonen:
   ```bash
   git clone https://github.com/<dein-username>/ubuntuautoupdatescripts.git
   cd ubuntuautoupdatescripts
   ```

2. Ausführungsrechte vergeben:
   ```bash
   chmod +x *.sh
   ```

3. Das Hauptskript starten:
   ```bash
   ./update.sh
   ```

Das Skript führt automatisch alle `.sh`-Dateien im Verzeichnis aus (außer `update.sh`) und zeigt für jedes Skript an, ob die Ausführung erfolgreich war.

## Ausgabe

- ✅ Successfully – Skript erfolgreich ausgeführt.
- ❌ Error – Fehler beim Ausführen des Skripts.

Nach Abschluss aller Skripte erscheint:

```text
🎉 All updates has been installed.
```

## Lizenz

MIT License