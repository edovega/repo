# Bill of Materials (BOM)

Validated environment for the documented execution on August 22–23, 2026.

| Qty. | Component | Validated version/configuration | Runs on |
|---:|---|---|---|
| 1 | Physical workstation | Pop!_OS 24.04 LTS; x86_64 CPU with virtualization | Host |
| 1 | Hypervisor | QEMU/KVM + libvirt; NAT network | Host |
| 1 | Virtual machine | Kali Linux 2026.3 | KVM/QEMU |
| 1 | Android Studio | Koala Feature Drop 2024.1.2 Patch 1 | Kali |
| 1 | Android SDK | API 28 Platform and Platform Tools | Kali |
| 1 | Android Emulator | Android 9; API 28; AOSP x86 | Kali |
| 1 | Docker Engine | 28.5.2 | Kali |
| 1 | Backend | Python 2.7.18; Flask 1.1.4; SQLAlchemy 1.3.24 | Container |
| 1 | Target application | InsecureBankv2; APK pinned locally with SHA-256 | Emulator |

## Supporting tools

ADB/Platform Tools, JADX, apktool, curl, Git, SQLite, Wireshark/TShark, OpenSSL, and GNU `find`, `sort`, and `sha256sum`.

Run `scripts/05_generar_bom_runtime.sh` for every new execution. Package availability changes; a tutorial version is not a substitute for runtime evidence.

## Executive reading of the BOM

The BOM is also a risk register for the laboratory. It identifies unsupported dependencies, trust boundaries, operational owners, and rebuild prerequisites. In enterprise mobile security, the same discipline supports vendor governance, software asset management, vulnerability response, and disaster recovery.

