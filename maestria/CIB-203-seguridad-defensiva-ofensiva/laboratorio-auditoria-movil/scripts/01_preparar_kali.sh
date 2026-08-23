#!/usr/bin/env bash
set -euo pipefail

if [[ "${1:-}" != '--apply' ]]; then
  printf '%s\n' 'Modo informativo. Revise el script y use --apply dentro de la VM Kali.'
  exit 0
fi

sudo apt-get update
sudo apt-get install -y adb apktool curl docker.io git jadx libvirt-clients sqlite3 tshark wireshark
sudo systemctl enable --now docker
printf '%s\n' 'Dependencias base instaladas. Complete Android Studio, SDK y AVD según el BOM.'

