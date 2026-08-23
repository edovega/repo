#!/usr/bin/env bash
set -euo pipefail

dir="${1:-}"
if [[ -z "$dir" || ! -d "$dir" ]]; then
  printf 'Uso: %s <directorio-de-evidencias>\n' "$0" >&2
  exit 2
fi

manifest="$dir/SHA256SUMS.txt"
if [[ -e "$manifest" ]]; then
  printf 'ABORTADO: ya existe %s\n' "$manifest" >&2
  exit 1
fi

(
  cd "$dir"
  find . -maxdepth 1 -type f ! -name 'SHA256SUMS.txt' -printf '%f\0' |
    sort -z |
    xargs -0 sha256sum > SHA256SUMS.txt
  sha256sum -c SHA256SUMS.txt
)

