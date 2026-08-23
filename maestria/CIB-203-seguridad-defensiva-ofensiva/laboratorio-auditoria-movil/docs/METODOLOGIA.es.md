# Metodología y trazabilidad

## Regla de evidencia

Cada conclusión debe enlazar cuatro elementos:

1. fragmento de código o configuración relevante;
2. ejecución controlada y reproducible;
3. salida conservada sin edición;
4. interpretación con límites explícitos.

## Dominios

| Dominio | Pregunta principal | Controles esperados |
|---|---|---|
| Autenticación | ¿Se puede entrar, enumerar usuarios o repetir intentos sin control? | Comparar casos válidos e inválidos. |
| Criptografía | ¿El material local puede recuperarse o se repite determinísticamente? | Revisar clave, IV, modo, almacenamiento y recuperación. |
| Almacenamiento | ¿Datos privados salen del sandbox o quedan expuestos? | Inspeccionar preferencias, SQLite, archivos y backup. |
| Exposición | ¿HTTP, IPC o componentes exportados revelan datos o funciones? | Correlacionar manifiesto, tráfico y ejecución externa. |
| Entradas/autorización | ¿El servidor valida tipo, rango, saldo, propiedad y sesión? | Medir estado antes/después y restaurar mutaciones. |

## Convención de evidencia

La letra `E` significa **Evidencia**. El número identifica un conjunto estable de archivos; no representa una calificación ni el estado del resultado. Una carpeta puede cerrar como evidencia confirmada, resultado negativo reproducible, resultado no demostrado o reprueba complementaria (`R`).

```text
evidencias/
├── E-00-linea-base/
├── E-01-autenticacion/
├── E-02-criptografia/
└── ...
```

Cada directorio debe incluir la salida original, una conclusión breve y `SHA256SUMS.txt`. Los valores reales del entorno se mantienen localmente.

| Identificador | Cobertura general |
|---|---|
| E-00 | Línea base: identidad del activo, versiones y arquitectura. |
| E-01–E-02B | Autenticación, enumeración, intentos repetidos y acceso directo. |
| E-03–E-04 | Criptografía y recuperación controlada de datos ficticios. |
| E-05–E-06 | Almacenamiento local, WebView y copia de respaldo Android. |
| E-07–E-08R | Tráfico, componentes exportados y reprueba de actividades. |
| E-09–E-11 | Validación, autorización, SQL injection y ContentProvider. |

## Qué demuestra SHA-256

La igualdad de huellas demuestra que dos secuencias de bytes coinciden. Una diferencia demuestra que el contenido cambió. No acredita identidad del operador, hora cierta ni corrección analítica; para eso se conservan comandos, fecha, contexto y procedimiento.

En este flujo, SHA-256 se usa para fijar la identidad del APK y del código evaluado, cerrar cada carpeta de evidencia, comprobar que una base de datos restaurada coincide con su respaldo, comparar estados antes y después de una prueba y verificar que los paquetes reproducibles no cambiaron durante su transferencia.

## Catálogo de scripts

Todos se encuentran en `laboratorio-auditoria-movil/scripts/` y deben revisarse antes de ejecutarlos.

| Script | Propósito | ¿Modifica el entorno? |
|---|---|---|
| `00_inventario_host.sh` | Registra sistema operativo, virtualización, memoria, procesador y herramientas disponibles. | No. |
| `01_preparar_kali.sh` | Comprueba o instala las herramientas del laboratorio en Kali Linux. | Solo con `--apply`. |
| `02_preparar_backend.sh` | Construye y crea el backend aislado mediante Docker. | Solo con `--apply`. |
| `03_iniciar_laboratorio.sh` | Inicia el contenedor y comprueba el emulador Android. | Inicia servicios existentes. |
| `04_verificar_laboratorio.sh` | Valida dispositivo, aplicación, backend y credenciales ficticias suministradas localmente. | No cambia datos deliberadamente. |
| `05_generar_bom_runtime.sh` | Genera la lista de materiales y versiones observadas durante la ejecución. | Solo crea el reporte indicado. |
| `06_sellar_evidencias.sh` | Calcula y verifica el manifiesto `SHA256SUMS.txt` de una carpeta. | Crea o reemplaza ese manifiesto. |
| `07_auditar_publicacion.sh` | Lista archivos publicables y busca patrones de información sensible antes de GitHub. | No. |

## Del hallazgo a la decisión

Para cada resultado debe responderse: qué propiedad falló, qué evidencia lo sustenta, qué no se demostró, qué proceso de negocio puede verse afectado, quién debe remediarlo y qué riesgo residual permanece.

> **Perspectiva gerencial:** la cobertura no es la cantidad de herramientas utilizadas. Es la cantidad de rutas de ataque relevantes examinadas con controles adecuados. Un conjunto pequeño y trazable aporta más valor que un reporte voluminoso de un escáner sin identidad del activo, reproducibilidad ni contexto de decisión.
