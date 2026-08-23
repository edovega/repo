#!/usr/bin/env bash
set -euo pipefail

repo="${CIB203_REPO:?Defina CIB203_REPO con la ruta local de Android-InsecureBankv2}"
root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

if [[ "${1:-}" != '--apply' ]]; then
  printf 'Repositorio: %s\nDockerfile: %s\n' "$repo" "$root/Dockerfile"
  printf '%s\n' 'Revise los valores y use --apply para construir el contenedor.'
  exit 0
fi

test -f "$repo/AndroLabServer/app.py"
docker build -t cib203-androlab:1.0 "$root"
if docker container inspect cib203-androlab >/dev/null 2>&1; then
  printf '%s\n' 'El contenedor ya existe; no se reemplaza automáticamente.'
else
  docker create --name cib203-androlab --restart unless-stopped \
    -p 127.0.0.1:8888:8888 \
    -v "$repo/AndroLabServer:/app" \
    cib203-androlab:1.0
fi

