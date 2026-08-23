#!/usr/bin/env bash
set -euo pipefail

adb_bin="${ADB_BIN:?Defina ADB_BIN con la ruta local de adb}"
user="${CIB203_USER:?Defina CIB203_USER en su archivo .env local}"
password="${CIB203_PASSWORD:?Defina CIB203_PASSWORD en su archivo .env local}"
package='com.android.insecurebankv2'

printf 'Fecha: '; date --iso-8601=seconds
"$adb_bin" devices -l
"$adb_bin" shell getprop sys.boot_completed
"$adb_bin" shell getprop ro.build.version.release
"$adb_bin" shell getprop ro.build.version.sdk
"$adb_bin" shell getprop ro.product.cpu.abi
"$adb_bin" shell pm path "$package"
docker ps --filter name=cib203-androlab --format 'Nombre={{.Names}} Estado={{.Status}} Puertos={{.Ports}}'
curl --retry 5 --retry-delay 1 --retry-all-errors -sS -i -X POST http://127.0.0.1:8888/login \
  --data-urlencode "username=$user" \
  --data-urlencode "password=$password"

