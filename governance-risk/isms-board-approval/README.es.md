[Read in English](README.en.md) · [Volver al portal](README.md)

# Qué debe aprobar una junta antes de firmar un SGSI

> **Propósito:** mostrar a juntas directivas y direcciones generales qué decisiones reales exige un sistema de gestión de seguridad de la información, usando un caso ficticio de comercio electrónico construido sobre ISO/IEC 27001:2022.
>
> **Audiencia:** juntas directivas, direcciones generales y responsables de seguridad que deban presentar o aprobar un SGSI.
>
> **Por qué importa:** un SGSI que se aprueba como trámite documental, sin que la dirección entienda qué está priorizando y por qué, no reduce el riesgo: solo produce evidencia de que existió un documento.

## Argumento central

Un sistema de gestión de seguridad de la información no es un cuaderno de políticas que firma la dirección una vez al año. Es un conjunto de decisiones concretas — qué riesgo se acepta, qué se controla primero, cuánto presupuesto recibe cada control, quién responde cuando algo falla — que la dirección termina tomando lo sepa o no. La pregunta útil para una junta no es "¿tenemos un SGSI?", sino "¿podemos explicar por qué priorizamos esto sobre aquello, con qué evidencia y con qué plazo?".

Para ilustrarlo sirve un caso ficticio: TiendaClick, una comercializadora electrónica costarricense de 40 empleados, 100% en la nube. Al construir su SGSI bajo ISO/IEC 27001:2022, el ejercicio de riesgo arrojó un resultado que sorprende a quien asume que un SGSI de una empresa digital trata solo de datos: los dos riesgos de mayor severidad no fueron una fuga de información, sino un incendio por sobrecarga de baterías de litio en la bodega y un accidente laboral por manejo inseguro de racks. Ambos quedaron clasificados en el nivel más alto de la jerarquía de riesgo de la organización — Vida — por encima de la fuga de datos de clientes, la indisponibilidad de la plataforma o la intercepción de pagos, que quedaron en el nivel Legal/Financiero.

## Evidencia y contexto

La matriz de riesgo del caso, construida con la fórmula estándar de ISO/IEC 27005 (Nivel de Riesgo = Probabilidad × Impacto), da diez riesgos identificados. Los dos de nivel "Alto" con el puntaje más alto son de seguridad física en la bodega, no de ciberseguridad en sentido estricto. Sobre esa base, la Declaración de Aplicabilidad prioriza dos controles del Anexo A —protección contra amenazas físicas y monitoreo de seguridad física— como "urgentes, inmediatos", por delante de controles técnicos como autenticación multifactor o cifrado, que quedan como "en progreso" o "planificados a 60-90 días".

| Riesgo | Categoría | Nivel | Tratamiento priorizado |
|---|---|---|---|
| Incendio por baterías de litio en bodega | Vida | Alto (9) | Urgente — procedimiento de manipulación, extintores, formación semestral |
| Accidente laboral en bodega | Vida | Alto (9) | Urgente — señalética, procedimientos, equipo de seguridad |
| Fuga de datos de clientes | Legal | Medio-alto (6) | 60 días — MFA, cifrado, revisión de permisos |
| Indisponibilidad de la plataforma | Financiero | Medio-alto (6) | Proveedor cloud secundario, revisión de SLA |
| Intercepción de datos de pago | Legal/Financiero | Medio-alto (6) | TLS 1.3, revisión de certificados cada 90 días |

El plan también fija objetivos medibles que la dirección puede exigir ver trimestralmente: tiempo de respuesta menor a 4 horas para incidentes que afecten vida o datos masivos, disponibilidad de plataforma de al menos 99.5% mensual, y notificación a la autoridad de protección de datos en un plazo de 72 horas cuando un incidente comprometa información personal.

## Análisis

El hallazgo central no es que la seguridad física importe — eso ya lo sabe cualquier gerente de operaciones — sino que un SGSI bien construido obliga a compararla, con la misma métrica, contra los riesgos digitales que suelen acaparar la atención y el presupuesto. Cuando la jerarquía de riesgo de una organización pone la vida por encima de lo legal, lo financiero y lo reputacional, un control de acceso físico a una bodega puede — y debe — ganarle en prioridad a un proyecto de cifrado, así ese proyecto se sienta más "de ciberseguridad". Ignorar esa comparación no es neutral: es decidir, sin decirlo, que el riesgo más visible importa más que el más grave.

La segunda lectura es sobre gestión de incidentes: el plan formal no empieza en la detección técnica, empieza en la clasificación (qué hace que un incidente sea prioridad 1) y termina en una reunión de lecciones aprendidas con plazo fijo. Sin esa clasificación previamente acordada por la dirección, cada incidente se convierte en una negociación de emergencia sobre qué tan grave es, en el peor momento posible para negociarlo.

## Implicación para negocio y liderazgo

Un SGSI que la dirección no puede explicar en sus propios términos —qué se prioriza, por qué, con qué evidencia— no es un programa maduro, es un riesgo sin dueño con apariencia de programa. La firma de la política de seguridad por parte de la Dirección General no es un trámite: es la aceptación formal de que ciertos riesgos se tratan primero y otros esperan, y esa aceptación debe poder defenderse ante una auditoría, un regulador o, en el peor caso, un tribunal.

El costo de no hacerlo bien no es solo técnico. Un control de acceso físico sin presupuesto porque "no es lo urgente" convierte una decisión de gestión de riesgo en una negligencia documentable si ocurre el incidente que el propio SGSI había identificado como el de mayor severidad.

## Recomendaciones

- Exigir que la matriz de riesgo compare explícitamente amenazas físicas, digitales, legales y financieras con la misma escala — no aceptar un análisis de riesgo que solo mire lo digital porque el proyecto se llama "de ciberseguridad".
- Pedir que cada control priorizado como "urgente" tenga responsable, plazo y evidencia de ejecución, no solo un nombre en una tabla.
- Revisar trimestralmente los indicadores del SGSI (tiempo de respuesta, disponibilidad, controles implementados, no conformidades cerradas) en el mismo comité que revisa resultados financieros, no en una reunión aparte de "asuntos de TI".
- Aprobar por escrito el criterio de aceptación de riesgo residual — qué nivel de riesgo la organización tolera sin tratamiento adicional — en vez de dejarlo implícito en las decisiones del equipo técnico.

## Límites

El caso es ficticio y construido con fines ilustrativos; los datos de riesgo, presupuesto y cronograma no provienen de una auditoría real. El análisis se limita a los controles y la metodología de ISO/IEC 27001:2022 e ISO/IEC 27005:2022; no cubre otros marcos de gestión de riesgo (COSO, COBIT) que una organización más grande podría necesitar combinar.

## Fuentes

ISO/IEC 27001:2022 — Sistemas de gestión de seguridad de la información. ISO/IEC 27005:2022 — Gestión de riesgos de seguridad de la información. NIST SP 800-61 Rev. 2 — Guía de gestión de incidentes. Ley N.° 8968 de Costa Rica, Protección de la Persona frente al Tratamiento de sus Datos Personales.

## Contenido relacionado

- [¿Quién responde cuando el CISO calla?](../ciso-personal-liability/README.es.md) — Governance & Risk
- Identidad digital y protección de datos: qué debe decidir una junta antes de aprobar un proyecto de blockchain *(próximamente, Governance & Risk)*

---

**Autoría y transparencia:** este artículo es autoría de Eduardo J. Vega Arguedas, a partir de un caso propio desarrollado durante su Maestría en Ciberseguridad. Herramientas de inteligencia artificial (Claude, de Anthropic) se usaron como apoyo para organizar la comparación de riesgos y adaptar el registro académico original a un formato ejecutivo. El diseño del caso, el análisis y las recomendaciones son producción propia del autor. Es una adaptación sanitizada de un proyecto académico más extenso.
