# Estructura, objetivos y trazabilidad del tutorial

## Propósito

Este repositorio enseña cómo diseñar y documentar una auditoría autorizada de una aplicación Android deliberadamente vulnerable. Es un tutorial sanitario y reproducible; no contiene la entrega académica completa, credenciales, capturas crudas, bases de datos ni otros datos privados.

## Objetivos de aprendizaje

1. Construir un laboratorio aislado, recuperable y verificable.
2. Fijar versiones, artefactos y configuración antes de probar.
3. Combinar análisis estático, observación dinámica y controles antes/después.
4. Probar autenticación, criptografía, almacenamiento, exposición y validación/autorización únicamente con datos ficticios.
5. Convertir resultados técnicos en decisiones de remediación, gobierno y riesgo.
6. Preservar evidencia mediante comandos reproducibles, restauraciones verificadas y manifiestos SHA-256.

## Estructura actual

```text
laboratorio-auditoria-movil/
├── README.es.md / README.en.md    guía técnica bilingüe
├── docs/                          BOM, metodología, liderazgo, transparencia y licencias
├── docs/images/                   diagramas originales sanitizados
├── scripts/                       automatización revisable 00–07
├── Dockerfile                     backend contenido y reproducible
├── requirements.txt               dependencias del contenedor
└── .env.example                   formato local; nunca contiene secretos reales
```

La ruta comienza por el entorno y el BOM, continúa por la configuración del emulador y backend, ejecuta pruebas controladas y cierra con integridad, comunicación y decisiones gerenciales. Consulte [BOM.es.md](BOM.es.md), [METODOLOGIA.es.md](METODOLOGIA.es.md) y el [walkthrough gerencial](WALKTHROUGH_GERENCIAL.es.md).

## Mapa uno a uno de las evidencias

| Evidencia | Enfoque | Resultado documentado |
|---|---|---|
| E-00 | Línea base | Identidad del entorno, APK, backend y herramientas. |
| E-01 / E-02 / E-02B | Autenticación | Bypass de desarrollo, respuestas diferenciadas y apertura directa. |
| E-03 / E-04 | Criptografía | Parámetros recuperables y cifrado determinista. |
| E-05 / E-06 | Almacenamiento | Datos recuperables, WebView local y respaldo extraíble. |
| E-07 / E-08 / E-08R | Exposición | HTTP legible, receiver y actividades exportadas. |
| E-09 / E-10 / E-11 | Entradas y autorización | Cambios de estado, SQL injection no demostrada y ContentProvider expuesto. |

## Estado frente a la rúbrica

La documentación cubre internamente los aspectos técnicos, fundamentación, cinco dominios de prueba e informe. La incorporación de retroalimentación docente no puede declararse completada hasta que exista una observación real, fecha y evidencia de incorporación. Esa distinción protege la integridad académica: no se marca “Excede” por una aprobación que aún no ocurrió.

## Cómo navegar

- [Guía técnica en español](../README.es.md)
- [Technical guide in English](../README.en.md)
- [BOM y herramientas](BOM.es.md)
- [Metodología y límites](METODOLOGIA.es.md)
- [Uso de inteligencia artificial](USO_IA_Y_TRANSPARENCIA.es.md)
- [Avisos de código abierto](AVISOS_CODIGO_ABIERTO.es.md)
