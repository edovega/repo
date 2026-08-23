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

## Inventario de herramientas y uso en la auditoría

| Herramienta | URL oficial | Propósito fácilmente verificable | Uso realizado | Parte de la auditoría |
|---|---|---|---|---|
| ADB / Platform Tools | [Android Developers](https://developer.android.com/tools/adb) | Comunicarse con el dispositivo Android | Consultó propiedades, instaló y abrió componentes, y capturó estado | Configuración, pruebas dinámicas y evidencia E-01–E-08R y E-11 |
| JADX | [GitHub](https://github.com/skylot/jadx) | Descompilar APK para revisión legible | Revisó clases, componentes, cifrado y llamadas de red | Análisis estático y evidencias E-01–E-08 y E-11 |
| Apktool | [Sitio oficial](https://apktool.org/) | Decodificar recursos y manifiesto | Verificó permisos, componentes exportados y configuración | Superficie de ataque y E-08R |
| curl | [Sitio oficial](https://curl.se/) | Enviar solicitudes HTTP reproducibles | Ejecutó controles del backend con datos ficticios | E-01, E-09 y E-10 |
| SQLite | [Sitio oficial](https://www.sqlite.org/) | Consultar y validar bases SQLite | Comparó saldos, contraseñas e integridad antes y después | E-09 y controles de restauración |
| Wireshark / TShark | [Sitio oficial](https://www.wireshark.org/) | Observar tráfico de red autorizado | Contrastó transporte HTTP y comportamiento de red | Exposición de información, E-07 |
| Git | [Sitio oficial](https://git-scm.com/) | Fijar versiones y controlar cambios | Registró el estado del tutorial y su publicación | Reproducibilidad y control de versiones |
| `sha256sum` | [GNU Coreutils](https://www.gnu.org/software/coreutils/) | Calcular huellas SHA-256 | Selló archivos y verificó restauraciones y ausencia de cambios | Todos los directorios E-01–E-11 |

Las versiones deben volver a capturarse con `scripts/05_generar_bom_runtime.sh`, porque los paquetes disponibles pueden cambiar.

Las licencias y condiciones de reutilización se documentan en [AVISOS_CODIGO_ABIERTO.es.md](AVISOS_CODIGO_ABIERTO.es.md).

## Lectura ejecutiva del BOM

El BOM también funciona como un registro de riesgos del laboratorio: identifica dependencias sin soporte, límites de confianza, responsables operativos y requisitos de reconstrucción. En seguridad móvil empresarial, la misma disciplina apoya el gobierno de proveedores, la administración de activos de software, la respuesta a vulnerabilidades y la recuperación ante desastres.
