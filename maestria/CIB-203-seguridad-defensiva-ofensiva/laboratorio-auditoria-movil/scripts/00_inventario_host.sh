#!/usr/bin/env bash
set -euo pipefail

printf '%s\n' '=== HOST ==='
date --iso-8601=seconds
uname -srmo
printf '%s\n' '=== CPU Y MEMORIA ==='
nproc
free -h
printf '%s\n' '=== KVM Y LIBVIRT ==='
test -e /dev/kvm && printf '%s\n' '/dev/kvm disponible' || printf '%s\n' '/dev/kvm no disponible'
virsh -c qemu:///system list --all 2>&1 || true

