#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../../.." && pwd)"
pattern='(BEGIN (RSA|OPENSSH|EC|DSA) PRIVATE KEY|ghp_[A-Za-z0-9]+|github_pat_[A-Za-z0-9_]+|AKIA[0-9A-Z]{16}|/home/[A-Za-z0-9._-]+|192\.168\.[0-9]+\.[0-9]+|172\.(1[6-9]|2[0-9]|3[01])\.[0-9]+\.[0-9]+)'

printf '%s\n' '=== ARCHIVOS VERSIONABLES ==='
find "$root" -type f -not -path '*/.git/*' -print | sort
printf '%s\n' '=== POSIBLES DATOS SENSIBLES ==='
if grep -RInE --exclude-dir=.git --exclude='.env' "$pattern" "$root"; then
  printf '%s\n' 'REVISIÓN REQUERIDA: se encontraron coincidencias.' >&2
  exit 1
fi
printf '%s\n' 'Sin coincidencias para los patrones de alto riesgo configurados.'

