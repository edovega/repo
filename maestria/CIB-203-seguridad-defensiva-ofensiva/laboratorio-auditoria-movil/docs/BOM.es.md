# BOM del laboratorio

Versiones observadas en la ejecución documentada el 22–23 de agosto de 2026.

| Cantidad | Componente | Versión/configuración validada | Ubicación |
|---:|---|---|---|
| 1 | Equipo físico | Pop!_OS 24.04 LTS; CPU x86_64 con virtualización | Host |
| 1 | Hipervisor | QEMU/KVM + libvirt; red NAT | Host |
| 1 | Máquina virtual | Kali Linux 2026.3 | KVM/QEMU |
| 1 | Android Studio | Koala Feature Drop 2024.1.2 Patch 1 | Kali |
| 1 | Android SDK | Platform y Platform Tools API 28 | Kali |
| 1 | Android Emulator | Android 9; API 28; AOSP x86 | Kali |
| 1 | Docker Engine | 28.5.2 | Kali |
| 1 | Backend | Python 2.7.18; Flask 1.1.4; SQLAlchemy 1.3.24 | Contenedor |
| 1 | Aplicación | InsecureBankv2; APK fijado localmente por SHA-256 | Emulador |

## Herramientas auxiliares

ADB/Platform Tools, JADX, apktool, curl, Git, SQLite, Wireshark/TShark, OpenSSL y utilidades GNU `find`, `sort` y `sha256sum`.

Las versiones deben volver a capturarse con `scripts/05_generar_bom_runtime.sh`, porque los paquetes disponibles pueden cambiar.

## Lectura ejecutiva del BOM

El BOM también funciona como un registro de riesgos del laboratorio: identifica dependencias sin soporte, límites de confianza, responsables operativos y requisitos de reconstrucción. En seguridad móvil empresarial, la misma disciplina apoya el gobierno de proveedores, la administración de activos de software, la respuesta a vulnerabilidades y la recuperación ante desastres.
