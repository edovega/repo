# How to Audit an Android App: From an Isolated Lab to Defensible Evidence

[Español](README.es.md) · [BOM](docs/BOM.en.md) · [Methodology](docs/METHODOLOGY.en.md) · [Transparency](docs/AI_USE_AND_TRANSPARENCY.en.md) · [Open-source notices](docs/OPEN_SOURCE_NOTICES.en.md)

**Author:** [Eduardo J. Vega Arguedas (Ed)](https://www.linkedin.com/in/eduardovegaa/)

An Android security audit is not a collection of scanner screenshots. It connects architecture, code, runtime behavior, business risk, and evidence. This tutorial explains how I built an isolated laboratory around **InsecureBankv2**, an intentionally vulnerable educational application by Dinesh Shetty, and how the same reasoning can improve a professional mobile security program.

> Use this material only in an authorized environment. Never expose the vulnerable backend to the Internet or test third-party applications without permission.

![InsecureBankv2 profile](docs/images/perfil-aplicacion.png)

## What you will learn

- Design a layered Android assessment environment.
- Understand why Kali, an emulator, Docker, NAT, and loopback solve different problems.
- Test authentication, cryptography, storage, exposure, and input validation.
- Preserve evidence with before/after controls and SHA-256 manifests.
- Translate technical observations into decisions a CISO or cybersecurity director can act on.

## The lab as a system

```text
Linux workstation
└── KVM/QEMU + libvirt
    └── Kali Linux virtual machine
        ├── Android Studio + SDK + ADB
        │   └── Android 9 / API 28 / x86 emulator
        │       └── InsecureBankv2 Android client
        ├── Docker Engine
        │   └── Python 2.7.18 AndroLabServer on 127.0.0.1:8888
        └── JADX, apktool, Wireshark/TShark, SQLite, curl and OpenSSL
```

The emulator reaches Kali's loopback through `10.0.2.2:8888`. `10.0.2.2` is an Android Emulator special-purpose address, not the author's personal IP address.

![Executed architecture](docs/images/arquitectura-laboratorio.png)

> **Management note — Architecture is a control.** Isolation reduces accidental exposure, enables recovery to a known state, and makes results easier to defend during governance, audit, or incident review.

## Why these components

| Component | Technical purpose | Leadership perspective |
|---|---|---|
| Linux + KVM/QEMU | Host an isolated VM and snapshots | Separates experimental risk from the business workstation. |
| Kali Linux | Centralize Android, network and evidence tools | Reduces tool sprawl and makes the workflow repeatable. |
| Android 9/API 28 x86 emulator | Run and inspect the legacy client | Makes device state observable and replaceable. |
| Docker | Contain the Python 2 backend | Keeps obsolete dependencies away from the analyst OS and documents technical debt. |
| NAT + loopback | Limit network reachability | Turns isolation into an enforceable architecture decision. |

![Environment decision](docs/images/decision-ambiente.png)

See the complete [Bill of Materials](docs/BOM.en.md).

## 1. Build the safe foundation

1. Create a Kali VM using NAT, not a bridged adapter.
2. Allocate at least 4 vCPU, 8 GB RAM, and 60 GB disk.
3. Confirm nested KVM is available for the Android emulator.
4. Create a clean snapshot before installing the lab.
5. Run `scripts/00_inventario_host.sh` and preserve the output locally.

> **Management note — Recovery time matters.** A clean snapshot defines a practical recovery-time objective. A control that cannot be restored and verified is incomplete.

## 2. Prepare Kali

Review before applying:

```bash
./scripts/01_preparar_kali.sh
./scripts/01_preparar_kali.sh --apply
```

The script installs ADB, apktool, JADX, Docker, SQLite, TShark/Wireshark, curl, Git, and libvirt clients. Android Studio, SDK Platform 28, and the AVD remain explicit installation steps because graphical installers and available packages can change.

## 3. Obtain and pin the target

```bash
mkdir -p "$HOME/CIB203"
git clone https://github.com/dineshshetty/Android-InsecureBankv2.git \
  "$HOME/CIB203/Android-InsecureBankv2"
git -C "$HOME/CIB203/Android-InsecureBankv2" rev-parse HEAD
```

Record the commit and calculate the APK's SHA-256. A version label alone does not prove that two analysts tested the same bytes.

> **Management note — Asset identity precedes risk acceptance.** A vulnerability decision attached to an unverified build can be technically correct and operationally useless.

## 4. Create the Android device

Install Android SDK Platform 28 and create an AOSP x86 Android 9/API 28 AVD. Verify:

```bash
adb devices -l
adb shell getprop ro.build.version.release
adb shell getprop ro.build.version.sdk
adb shell getprop ro.product.cpu.abi
```

Expected values include Android `9`, API `28`, and ABI `x86`.

## 5. Contain the legacy backend

```bash
export CIB203_REPO="$HOME/CIB203/Android-InsecureBankv2"
./scripts/02_preparar_backend.sh
./scripts/02_preparar_backend.sh --apply
```

The Dockerfile pins Python 2.7.18 and required libraries. Port 8888 is published only on `127.0.0.1`. Do not replace that binding with `0.0.0.0` on a shared or Internet-connected network.

> **Management note — Containers do not erase legacy risk.** Docker makes the dependency tree reproducible and easier to contain; it does not make Python 2 supported or safe. The correct interpretation is “controlled technical debt,” not “remediated technical debt.”

## 6. Keep credentials local

```bash
cp .env.example .env
chmod 600 .env
```

Populate `.env` with the public fictional credentials for the lab version. The file is ignored by Git. Even educational passwords are loaded through environment variables to reinforce a safe engineering habit.

## 7. Start and verify

```bash
./scripts/03_iniciar_laboratorio.sh
set -a; source .env; set +a
./scripts/04_verificar_laboratorio.sh
```

Configure the app to use server `10.0.2.2`, port `8888`.

## 8. Audit by security property

Follow the detailed [methodology](docs/METHODOLOGY.en.md):

1. **Authentication:** valid/invalid controls, enumeration, throttling, and exported activities.
2. **Cryptography:** algorithms, key/IV lifecycle, determinism, and external recovery.
3. **Storage:** preferences, SQLite, external files, WebView behavior, and backups.
4. **Exposure:** cleartext HTTP, IPC, exported components, and logged information.
5. **Input validation and authorization:** type, range, balance, ownership, session, and state change.

For every state-changing test: back up, hash, execute, compare, restore, check database integrity, and repeat a known-good control.

> **Management note — Negative results have value.** A bounded “not demonstrated” result prevents teams from spending remediation budget on an unproven claim and identifies where more assurance is needed.

## 9. Seal the evidence

```bash
./scripts/06_sellar_evidencias.sh ./evidence/E-01
```

![SHA-256 evidence chain](docs/images/cadena-integridad-sha256.png)

SHA-256 proves byte equality or change relative to a recorded value. It does not prove who created the file, that the timestamp is authoritative, or that the analyst's conclusion is correct. Evidence becomes defensible when hash, command, context, control, and interpretation agree.

## 10. Communicate to two audiences

A useful finding has two layers:

- **Technical:** condition, reproduction, affected component, evidence, limit, and remediation.
- **Executive:** business scenario, likelihood, impact, decision owner, target date, and residual risk.

Avoid severity without context. A hard-coded key or missing authorization check becomes actionable when the report explains which business process it affects and what decision is required.

## Privacy boundary

This public tutorial intentionally excludes raw screenshots, packet captures, Android backups, databases, personal paths, private IP observations, real credentials, and academic documents containing other people's information. Sanitization is part of the audit workflow, not an afterthought.

## Reuse

This tutorial and its original scripts are released under [The Unlicense](../../../LICENSE). Use, translate, adapt, or teach with them. Attribution is welcome but not required.

If this helps someone build a better security practice, that is enough. **Pura vida!**
