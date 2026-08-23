[Read in English](README.en.md) · [Volver al portal](README.md)

# La pregunta que la junta debe hacer antes del diagrama de arquitectura

> **Propósito:** mostrar, con dos casos ficticios, por qué la revisión de protección de datos tiene que ocurrir antes de aprobar un diseño técnico, no después.
>
> **Audiencia:** juntas directivas, asesoría legal corporativa, oficiales de cumplimiento y direcciones de tecnología que evalúan proyectos que tratan datos personales.
>
> **Por qué importa:** las dos fallas más costosas de este análisis no fueron técnicas. Fueron decisiones de gobierno que nadie cuestionó a tiempo: no dar de baja un acceso, y no preguntar si una arquitectura era compatible con la ley antes de construirla.

## Argumento central

Dos escenarios, uno reactivo y uno propuesto, muestran el mismo patrón: la arquitectura técnica se decide primero y la revisión legal llega después, cuando ya es cara o imposible de corregir. En el primero, una empresa sufre una brecha por un acceso que nunca se desactivó y decide no informar "para no asustar a los clientes". En el segundo, un equipo de tecnología propone subir los títulos universitarios completos —con cédula y notas— a una blockchain pública, razonando que la inmutabilidad "evita que nadie los falsifique". Ambos casos comparten una falla de gobierno idéntica: nadie preguntó, antes de construir, si el diseño era compatible con la ley de protección de datos.

## Evidencia y contexto

**Caso 1 — La brecha que se pudo prevenir con una baja de acceso.** Una comercializadora ficticia mantiene una base de 80.000 registros de personas, con un puntaje socioeconómico calculado internamente que el titular nunca conoció, y la vende a comercios sin haberla inscrito ante el regulador de protección de datos. Un atacante entra con la contraseña de un ex-empleado —nunca desactivada— y publica la base. La empresa decide no informar. El análisis normativo identifica seis infracciones administrativas independientes y acumulables (tres de ellas de la categoría más grave), y responsabilidad penal diferenciada para el atacante, el ex-empleado y los directivos según su grado de participación. El plan de respuesta que debió activarse en cinco días hábiles es simple de enunciar: revocar credenciales de ex-empleados, notificar al regulador, notificar a los titulares, documentar cada paso — y ninguno de esos pasos depende de tecnología compleja.

**Caso 2 — El proyecto de blockchain que un diagrama de arquitectura no puede arreglar.** Una universidad ficticia quiere que sus títulos sean verificables internacionalmente y su equipo de TI propone subir el documento completo, con datos personales, a una blockchain pública. La propuesta original viola al menos cuatro principios de la ley de protección de datos, y uno de ellos no es un error de configuración corregible: el derecho de un titular a que se elimine o corrija su información es técnicamente incompatible con una cadena de bloques inmutable. El rediseño correcto separa lo que va en la cadena (un hash firmado, un identificador del emisor, el estado de revocación) de lo que permanece bajo control del titular en una billetera digital (el documento completo, con revelación selectiva). Un dato clave sostiene ese rediseño: un hash aislado no es un dato personal, pero un hash vinculado al identificador de una persona sí lo es — la diferencia determina si el diseño cumple la ley o no.

## Análisis

El patrón común es una secuencia de decisiones invertida. En el Caso 1, la decisión de negocio (vender datos, no dar de baja accesos) se tomó sin que nadie preguntara "¿qué obligación legal tenemos sobre esto?" hasta que ya había un atacante adentro. En el Caso 2, la decisión de arquitectura (blockchain pública) se tomó antes de preguntar "¿qué exige la ley sobre el derecho a borrar o corregir un dato?" — y para cuando alguien lo preguntó, la respuesta correcta ya no era "ajustar la configuración", era "rediseñar el sistema completo". La lección no es que la tecnología sea el problema: es que ninguna arquitectura, por bien diseñada que esté técnicamente, puede resolver después una pregunta legal que debió resolverse antes.

## Implicación para negocio y liderazgo

El costo de invertir el orden no es solo la multa. En el Caso 1, la omisión de notificar —no la brecha en sí— es lo que agrava las sanciones y abre la puerta a responsabilidad penal por dolo. En el Caso 2, aprobar el proyecto tal como lo propuso TI habría comprometido a la institución a un compromiso técnicamente irreversible: no hay manera de "corregir" un dato personal mal publicado en una cadena de bloques pública una vez que está ahí. En ambos casos, la pregunta que faltó no era compleja ni cara de responder a tiempo; se volvió compleja y cara solo porque se hizo tarde.

## Recomendaciones

- Exigir una revisión de protección de datos antes de aprobar cualquier arquitectura que trate datos personales, no como paso de auditoría posterior sino como condición de aprobación del proyecto.
- Para cualquier proyecto que involucre una tecnología inmutable (blockchain, WORM, ledgers distribuidos), preguntar explícitamente: "¿qué pasa cuando alguien pida que se corrija o elimine su dato?" — si la respuesta es "no se puede", el dato personal no debe ir ahí.
- Mantener un proceso de baja de accesos verificable y auditable para todo empleado que se retira; la falta de ese proceso fue, en el caso real, la causa raíz de la brecha, no una vulnerabilidad técnica sofisticada.
- Definir de antemano, con asesoría legal, el plazo y el contenido de la notificación de un incidente — decidirlo en el momento de la crisis casi siempre produce la peor decisión posible ("no decir nada").

## Límites

Los dos casos son ficticios y construidos con fines ilustrativos; los montos, nombres y cifras no corresponden a hechos reales. El análisis se basa en la normativa costarricense de protección de datos y el Código Penal vigentes al momento de escribir este artículo, y no constituye asesoría legal para un caso concreto.

## Fuentes

Ley N.° 8968 de Costa Rica, Protección de la Persona frente al Tratamiento de sus Datos Personales, y su reglamento. Código Penal, Ley N.° 4573. Ley N.° 8454, Ley de Certificados, Firmas Digitales y Documentos Electrónicos. Marco de identidad autosoberana (SSI) y credenciales verificables (W3C Verifiable Credentials).

## Contenido relacionado

- [¿Quién responde cuando el CISO calla?](../ciso-personal-liability/README.es.md) — Governance & Risk
- [Qué debe aprobar una junta antes de firmar un SGSI](../isms-board-approval/README.es.md) — Governance & Risk

---

**Autoría y transparencia:** este artículo es autoría de Eduardo J. Vega Arguedas, a partir de casos propios desarrollados durante su Maestría en Ciberseguridad. Herramientas de inteligencia artificial (Claude, de Anthropic) se usaron como apoyo para organizar el análisis y adaptar el registro académico original a un formato ejecutivo. El diseño de los casos, el análisis jurídico-técnico y las conclusiones son producción propia del autor. Es una adaptación sanitizada de un trabajo académico más extenso.
