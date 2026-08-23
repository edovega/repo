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

```text
evidencias/
├── E-00-linea-base/
├── E-01-autenticacion/
├── E-02-criptografia/
└── ...
```

Cada directorio debe incluir la salida original, una conclusión breve y `SHA256SUMS.txt`. Los valores reales del entorno se mantienen localmente.

## Qué demuestra SHA-256

La igualdad de huellas demuestra que dos secuencias de bytes coinciden. Una diferencia demuestra que el contenido cambió. No acredita identidad del operador, hora cierta ni corrección analítica; para eso se conservan comandos, fecha, contexto y procedimiento.

## Del hallazgo a la decisión

Para cada resultado debe responderse: qué propiedad falló, qué evidencia lo sustenta, qué no se demostró, qué proceso de negocio puede verse afectado, quién debe remediarlo y qué riesgo residual permanece.

> **Perspectiva gerencial:** la cobertura no es la cantidad de herramientas utilizadas. Es la cantidad de rutas de ataque relevantes examinadas con controles adecuados. Un conjunto pequeño y trazable aporta más valor que un reporte voluminoso de un escáner sin identidad del activo, reproducibilidad ni contexto de decisión.
