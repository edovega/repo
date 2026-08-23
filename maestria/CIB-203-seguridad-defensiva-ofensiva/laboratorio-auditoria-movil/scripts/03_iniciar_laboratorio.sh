#!/usr/bin/env bash
set -euo pipefail

adb_bin="${ADB_BIN:?Defina ADB_BIN con la ruta local de adb}"
docker start cib203-androlab >/dev/null
printf '%s\n' 'Inicie el AVD Android 9/API 28 desde Android Studio si todavía no está activo.'
docker ps --filter name=cib203-androlab --format 'Nombre={{.Names}} Estado={{.Status}} Puertos={{.Ports}}'
"$adb_bin" devices -l

