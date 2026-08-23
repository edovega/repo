[Read in English](README.en.md) · [Volver al portal](README.md)

# ¿Quién responde cuando el CISO calla?

> **Propósito:** dar a juntas directivas, direcciones generales y responsables de seguridad una lectura clara de la exposición legal personal que asume un CISO cuando un incidente se gestiona mal o se oculta.
>
> **Audiencia:** juntas directivas y comités de riesgo, direcciones generales, responsables de seguridad de la información en ejercicio o candidatos al cargo, y asesoría legal corporativa.
>
> **Por qué importa:** la ausencia de responsabilidades claras no protege a una organización, la expone más. Costa Rica ya vivió dos incidentes nacionales sin que nadie respondiera individualmente; la tendencia internacional se mueve en dirección contraria.

## Argumento central

Cuando un incidente de ciberseguridad se gestiona mal, la primera pregunta que se hace una junta directiva es cuánto cuesta y a quién afecta. La segunda pregunta —quién responde personalmente, con su propio patrimonio, por la decisión de callar— casi nunca se hace antes de que ocurra. En Costa Rica esa pregunta no tiene todavía una respuesta clara: el país cuenta con normativa de protección de datos, un código penal reformado y ha ratificado el Convenio de Budapest, pero ningún funcionario fue objeto de un proceso formal tras los ataques a Hacienda (2022) o a la CCSS (2022), pese a daños de decenas de millones de dólares y a la caída de servicios públicos esenciales. Al mismo tiempo, la tendencia internacional avanza en dirección contraria: Estados Unidos condenó penalmente al CISO de Uber por ocultar una brecha, y la SEC demandó personalmente al CISO de SolarWinds por engañar a inversionistas.

El escenario que toda junta debería poder responder es simple de plantear y difícil de resolver sin preparación previa: el responsable de seguridad detecta un ransomware o una fuga de datos, lo reporta a la dirección general, y la dirección general decide no notificar a las autoridades, a los reguladores ni a los afectados para proteger la reputación de la empresa. El responsable de seguridad obedece y guarda silencio. ¿Quién responde?

La respuesta depende de dos variables que casi ninguna organización deja resueltas por escrito antes de que ocurra el incidente: si existe una obligación legal de reportar (en Costa Rica solo es clara para el sector financiero regulado y para las brechas de datos personales, con un plazo de cinco días hábiles), y si el responsable de seguridad fue formalmente designado ante el regulador de protección de datos. En el sector público, la Ley General de la Administración Pública es explícita: una orden superior manifiestamente ilegal no exime de responsabilidad a quien la obedece, y quien calla puede quedar como corresponsable solidario del CEO. En el sector privado, si el responsable de seguridad tiene esa designación formal, responde ante el regulador de datos personales y puede ser codemandado civilmente; si no la tiene, su exposición personal es menor, pero no desaparece.

## Evidencia y contexto

Costa Rica tiene una arquitectura normativa real, no inexistente, pero fragmentada: la Ley 8968 de protección de datos personales, el Código Penal reformado en 2012, la Ley General de Control Interno para el sector público, y el Convenio de Budapest —vigente desde 2017, con su Segundo Protocolo ratificado en 2026—. Sobre esa base coexisten dos regímenes muy distintos: el sector público está sujeto a la fiscalización de la Contraloría General de la República y puede llegar hasta la responsabilidad civil patrimonial personal del funcionario; el sector privado carece de una obligación general de reportar incidentes y no tiene un tipo penal equivalente al de "obstrucción a la justicia" que en Estados Unidos condenó al CISO de Uber.

| Caso | Qué pasó | Por qué importa aquí |
|---|---|---|
| Uber / Sullivan (EE. UU., 2022-2023) | El CISO pagó a los atacantes disfrazando el pago como recompensa por hallazgo de vulnerabilidades y ocultó el incidente al regulador que investigaba a la empresa. Fue condenado personalmente por obstrucción a la justicia. | No fue el incidente lo que lo condenó: fue disfrazar el pago y ocultarlo al regulador activo. Costa Rica no tiene hoy un tipo penal equivalente para el sector privado, pero eso es una laguna, no una garantía. |
| SolarWinds / Brown (EE. UU., 2023) | La SEC demandó personalmente al CISO por engañar a inversionistas sobre la postura de seguridad de la empresa, antes y después de un ataque a su cadena de suministro. | Abrió una vía nueva de exposición personal: no penal, sino por fraude a inversionistas. Una empresa costarricense que declara una postura de seguridad que no sostiene con evidencia asume un riesgo análogo. |
| Hacienda / Conti (Costa Rica, 2022) | Extracción de 672 GB de información tributaria y aduanera; sin un responsable de seguridad con funciones formalmente definidas; ningún funcionario fue objeto de proceso disciplinario. | Demuestra el vacío: la ausencia de un responsable formalmente designado no protegió a la institución, dejó sin resolver quién debía responder. |
| CCSS / Hive (Costa Rica, 2022) | Más de 800 servidores apagados, cerca de 30.000 citas médicas afectadas; debilidades estructurales de control documentadas después del ataque; sin sanciones individuales. | Muestra que incluso el régimen reforzado del sector público —Contraloría, Ley de Control Interno— no bastó por sí solo para atribuir responsabilidad cuando ocurrió el incidente. |

## Análisis

Tres conclusiones se sostienen con la evidencia anterior. Primera: el ordenamiento costarricense fue diseñado para sancionar al atacante externo, no al responsable interno que gestiona mal —o encubre— un incidente; los artículos del Código Penal más cercanos exigen una interpretación extensiva que hoy no existe en la práctica. Segunda: la obediencia a una instrucción superior no protege a quien la ejecuta cuando esa instrucción es manifiestamente ilegal; en el sector público esto ya es ley expresa, y en el sector privado la responsabilidad civil puede alcanzar igualmente a quien actuó con negligencia documentada. Tercera: la presión regulatoria internacional —la directiva europea NIS2, la condena de Sullivan, la demanda contra SolarWinds, y la Convención de Hanói que Costa Rica firmó en 2025 y aún no ha ratificado— avanza hacia la responsabilidad personal del oficial de seguridad, no en dirección contraria. Una organización que hoy asuma que "en Costa Rica esto no pasa" está leyendo mal la tendencia, no el presente.

## Implicación para negocio y liderazgo

El patrimonio personal del responsable de seguridad puede verse comprometido por tres vías distintas, y ninguna depende de que exista primero una condena penal: la responsabilidad civil derivada de un delito, una demanda civil independiente si se demuestra culpa, o medidas cautelares sobre bienes propios mientras avanza un proceso. El contrato laboral protege parcialmente, pero deja de hacerlo si hubo dolo o si el contrato —como es la norma— no cubre conductas delictivas.

Para la organización, la implicación es doble: la ausencia de responsabilidades claras no la protege, la expone más, porque nadie puede demostrar quién debía actuar y cuándo; y la decisión de no invertir en la definición formal del rol, en el reporte oportuno y en la documentación de las decisiones de escalamiento no es una decisión neutra — es la decisión de asumir el riesgo sin haberlo medido.

## Recomendaciones

**A nivel de organización:**
- Designar formalmente al responsable de seguridad ante el regulador de datos personales cuando corresponda, y dejar por escrito el alcance exacto de esa designación.
- Adoptar un estándar reconocido (ISO/IEC 27001 o el NIST Cybersecurity Framework) como parámetro de diligencia debida, con efecto documentado en la gestión de riesgo, no solo como certificación de vitrina.
- Reducir el plazo interno de reporte de incidentes a 72 horas, incluso donde la ley aún no lo exige, siguiendo el estándar que ya rige en la Unión Europea.
- Contratar cobertura de responsabilidad de directores y funcionarios (D&O) que incluya explícitamente, por nombre, al responsable de seguridad como persona física.
- Exigir que toda decisión de gestión de un incidente —a quién se escaló, cuándo y qué respuesta se recibió— quede registrada; ese registro es, en la práctica, la diferencia entre responsabilidad personal y organizacional.

**A nivel del responsable de seguridad como individuo:**
- Nunca ejecutar una instrucción de encubrimiento, clasificación falsa de un pago o desvío de información a un regulador, sin importar de qué nivel jerárquico provenga; objetar por escrito antes de actuar.
- Verificar, antes de que ocurra un incidente, que la póliza de responsabilidad de la organización lo cubra como persona física, no solo a la empresa.
- Entender que la diligencia documentada es la única defensa personal real: la política que existe solo en papel, sin evidencia de aplicación, no protege a nadie.

## Límites

Este análisis no establece que un responsable de seguridad en Costa Rica vaya a ser condenado personalmente en un escenario semejante: no existe todavía jurisprudencia costarricense sobre responsabilidad personal de un oficial de seguridad, y las conclusiones se construyen por inferencia normativa y por comparación con otras jurisdicciones, no por precedente local. Tampoco establece que la Convención de Hanói vaya a ratificarse, ni en qué plazo. El análisis se limita al ordenamiento costarricense y a un conjunto verificado de casos comparados (Estados Unidos, Unión Europea, Australia, Canadá); no incluye un relevamiento exhaustivo de otras jurisdicciones latinoamericanas, donde la figura del CISO es todavía incipiente. Los proyectos de ley costarricenses mencionados están en trámite legislativo y pueden modificarse o archivarse antes de convertirse en norma.

El silencio organizacional no es una estrategia de mitigación, es una decisión de riesgo sin documentar. La diferencia entre un responsable de seguridad expuesto personalmente y uno protegido casi nunca está en la calidad técnica de los controles que implementó, sino en si existe un registro de que objetó, escaló y documentó una decisión antes de que el daño ocurriera.

## Fuentes

Ley N.° 8968, Protección de la Persona frente al Tratamiento de sus Datos Personales, y su reglamento (Decreto Ejecutivo N.° 37554-JP). Código Penal, Ley N.° 4573, con las reformas introducidas por la Ley N.° 9048 (2012). Ley General de Control Interno, Ley N.° 8292. Ley General de la Administración Pública, artículos 107 a 110. Convenio de Budapest sobre Ciberdelincuencia (Ley N.° 9452, 2017) y su Segundo Protocolo (Ley N.° 10778, 2025). United States Department of Justice, comunicado de prensa sobre *United States v. Joseph Sullivan* (2022). U.S. Securities and Exchange Commission, comunicado de prensa 2023-237 sobre SolarWinds. Contraloría General de la República de Costa Rica, informes públicos sobre el incidente CCSS/Hive. Directiva (UE) 2022/2555 (NIS2).

## Contenido relacionado

- [Qué debe aprobar una junta antes de firmar un SGSI](../isms-board-approval/README.es.md) — Governance & Risk
- [La pregunta que la junta debe hacer antes del diagrama de arquitectura](../privacy-before-architecture/README.es.md) — Governance & Risk

---

**Autoría y transparencia:** este artículo es autoría de Eduardo J. Vega Arguedas, a partir de una investigación normativa y comparada propia. Herramientas de inteligencia artificial (Claude, de Anthropic) se usaron como apoyo para organizar fuentes, verificar consistencia interna y adaptar el registro académico original a un formato ejecutivo. El planteamiento del problema, la selección del enfoque, el análisis jurídico y las conclusiones son producción propia del autor; la normativa citada fue contrastada contra su versión vigente en fuentes oficiales. Es una adaptación sanitizada de un trabajo académico más extenso: se excluyeron datos de identificación académica y el aparato de citas exhaustivo, conservando el análisis y las conclusiones.
