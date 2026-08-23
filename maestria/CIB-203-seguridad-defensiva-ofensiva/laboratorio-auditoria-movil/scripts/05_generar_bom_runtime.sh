#!/usr/bin/env bash
set -euo pipefail

adb_bin="${ADB_BIN:?Defina ADB_BIN con la ruta local de adb}"
printf 'Fecha: '; date --iso-8601=seconds
printf '%s\n' '=== KALI ==='
uname -srmo
nproc
free -h
printf '%s\n' '=== HERRAMIENTAS ==='
"$adb_bin" version 2>&1 || true
apktool --version 2>&1 || true
jadx --version 2>&1 || true
tshark --version 2>&1 | head -n 2 || true
docker version 2>&1 || true
git --version
python3 --version
sqlite3 --version
printf '%s\n' '=== AVD/ANDROID ==='
"$adb_bin" shell getprop 2>&1 | grep -E '\[(ro.build.version.release|ro.build.version.sdk|ro.product.cpu.abi|ro.product.model)\]' || true
printf '%s\n' '=== CONTENEDOR ==='
docker inspect cib203-androlab --format 'Imagen={{.Config.Image}} Red={{.HostConfig.NetworkMode}} Puertos={{json .HostConfig.PortBindings}}' 2>&1 || true

