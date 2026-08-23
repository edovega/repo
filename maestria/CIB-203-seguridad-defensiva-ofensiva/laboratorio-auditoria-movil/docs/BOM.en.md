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

## Tool inventory and audit use

| Tool | Official URL | Plain-language purpose | Actual use | Audit area |
|---|---|---|---|---|
| ADB / Platform Tools | [Android Developers](https://developer.android.com/tools/adb) | Communicate with an Android device | Queried properties, installed and opened components, and captured state | Setup, dynamic testing, and evidence E-01–E-08R and E-11 |
| JADX | [GitHub](https://github.com/skylot/jadx) | Decompile APKs for readable review | Reviewed classes, components, cryptography, and network calls | Static analysis and evidence E-01–E-08 and E-11 |
| Apktool | [Official site](https://apktool.org/) | Decode Android resources and manifests | Verified permissions, exported components, and configuration | Attack surface and E-08R |
| curl | [Official site](https://curl.se/) | Send reproducible HTTP requests | Executed backend controls with fictional data | E-01, E-09, and E-10 |
| SQLite | [Official site](https://www.sqlite.org/) | Query and validate SQLite databases | Compared balances, passwords, and integrity before and after tests | E-09 and restoration controls |
| Wireshark / TShark | [Official site](https://www.wireshark.org/) | Observe authorized network traffic | Corroborated HTTP transport and network behavior | Information exposure, E-07 |
| Git | [Official site](https://git-scm.com/) | Pin versions and control changes | Recorded tutorial state and publication history | Reproducibility and version control |
| `sha256sum` | [GNU Coreutils](https://www.gnu.org/software/coreutils/) | Calculate SHA-256 fingerprints | Sealed files and verified restorations and unchanged state | Every E-01–E-11 evidence directory |

Run `scripts/05_generar_bom_runtime.sh` for every new execution. Package availability changes; a tutorial version is not a substitute for runtime evidence.

Licensing and reuse conditions are documented in [OPEN_SOURCE_NOTICES.en.md](OPEN_SOURCE_NOTICES.en.md).

## Executive reading of the BOM

The BOM is also a risk register for the laboratory. It identifies unsupported dependencies, trust boundaries, operational owners, and rebuild prerequisites. In enterprise mobile security, the same discipline supports vendor governance, software asset management, vulnerability response, and disaster recovery.
