# Walkthrough gerencial de seguridad móvil

> Transparencia: consulte la [declaración de uso de inteligencia artificial](USO_IA_Y_TRANSPARENCIA.es.md) y los [avisos de código abierto](AVISOS_CODIGO_ABIERTO.es.md).

## 1. Empiece por el negocio, no por la herramienta

La primera pregunta no es “¿qué escáner vamos a usar?”, sino “¿qué proceso habilita esta aplicación y qué ocurriría si alguien actuara como otro usuario, alterara una transacción, extrajera información o interrumpiera el servicio?”. Una aplicación de mercadeo, una billetera, una herramienta interna y una aplicación clínica no requieren la misma profundidad.

Clasifique cada aplicación por datos, transacciones, usuarios, exposición, dependencia operativa, obligaciones y efecto reputacional. Esa clasificación define el nivel de pruebas, la frecuencia, la independencia y quién puede aceptar una excepción.

## 2. Convierta riesgo técnico en lenguaje de decisión

Un hallazgo útil para dirección conecta cinco elementos:

1. condición observada;
2. escenario de abuso razonable;
3. proceso y datos afectados;
4. impacto financiero, operativo, legal o reputacional;
5. decisión, responsable y fecha.

“Una actividad está exportada” es una observación técnica. “Una aplicación externa puede abrir una función sin pasar por el flujo local de autenticación; el servidor debe verificar nuevamente identidad y autorización” es una explicación orientada al riesgo. La auditoría no debe exagerar: abrir una pantalla no demuestra por sí solo que una transacción pueda completarse.

## 3. Establezca un modelo de gobierno

El [Marco de Ciberseguridad 2.0 del NIST](https://www.nist.gov/cyberframework) incorpora **Gobernar** como función y conecta ciberseguridad con riesgo empresarial. Para el portafolio móvil, esto se traduce en:

- inventario de aplicaciones propias, contratadas y permitidas para empleados;
- propietario empresarial y propietario técnico;
- clasificación de datos y criticidad;
- estándar mínimo y perfil reforzado para funciones sensibles;
- matriz de aprobación y aceptación de excepciones;
- métricas, revisiones y escalamiento;
- gestión de terceros durante todo el ciclo de vida.

La junta supervisa apetito, exposición agregada y resiliencia. La gerencia ejecutiva asigna responsables y presupuesto. Los dueños de producto priorizan correcciones. Seguridad establece requisitos y verifica. Legal, Privacidad, Compras y Riesgo participan según el contexto.

## 4. Integre seguridad al ciclo de producto

Use el [NIST Secure Software Development Framework](https://csrc.nist.gov/pubs/sp/800/218/final) como lenguaje común para desarrollo propio y adquisiciones. Para móviles, el [proyecto OWASP Mobile Application Security](https://owasp.org/www-project-mobile-app-security/) aporta el estándar de verificación y la guía de pruebas.

| Etapa | Control gerencial | Evidencia esperada |
|---|---|---|
| Idea y adquisición | Propósito, dueño, datos, jurisdicciones, criticidad y alternativa de salida. | Ficha de riesgo y aprobación. |
| Diseño | Modelo de amenazas, arquitectura, identidad, privacidad y dependencias. | Decisiones de arquitectura y requisitos. |
| Construcción | Revisión de código, secretos, componentes y separación de ambientes. | Resultados de controles y excepciones. |
| Prueba | Casos estáticos, dinámicos, backend y abuso de lógica de negocio. | Evidencia reproducible y límites. |
| Liberación | Criterio de salida y aceptación del riesgo residual. | Aprobación trazable. |
| Operación | Telemetría, fraude, vulnerabilidades, cambios de plataforma e incidentes. | Indicadores y planes de respuesta. |
| Retiro | Revocación, eliminación, conservación legal, dependencias y datos. | Cierre y verificación. |

## 5. Controle lo que desarrollan terceros

Tercerizar no significa transferir responsabilidad. El NIST recomienda integrar requisitos de cadena de suministro en contratos, debida diligencia, monitoreo, respuesta y terminación. En sectores regulados, reglas como DORA en la Unión Europea ilustran un principio útil: una entidad puede contratar servicios tecnológicos, pero conserva responsabilidad sobre sus obligaciones.

Un contrato de desarrollo o evaluación debería considerar, con revisión jurídica local:

- requisitos de seguridad y privacidad medibles;
- acceso de la organización a código, arquitectura y evidencia;
- lista de componentes y procedencia del software;
- tratamiento de vulnerabilidades y tiempos por severidad;
- notificación y cooperación en incidentes;
- uso y autorización de subcontratistas;
- ubicación, retención y eliminación de datos;
- derecho de auditoría y pruebas independientes;
- propiedad intelectual y continuidad del conocimiento;
- soporte, fin de vida, portabilidad y plan de salida;
- seguro y asignación de responsabilidades cuando corresponda.

La evaluación de proveedor no termina con la firma. Debe repetirse ante cambios relevantes, incidentes, nuevas dependencias o renovación.

## 6. Gobierne aplicaciones usadas por empleados

El riesgo incluye aplicaciones que la empresa no desarrolló: mensajería, almacenamiento, autenticadores, productividad, inteligencia artificial, finanzas y acceso remoto. Un modelo práctico contiene:

- catálogo permitido y proceso rápido de excepción;
- gestión de dispositivos y, cuando sea apropiado, gestión de aplicaciones móviles;
- separación de datos corporativos y personales;
- inicio de sesión corporativo, autenticación multifactor y acceso condicional;
- permisos mínimos, revocación y borrado selectivo;
- evaluación de privacidad, residencia de datos y términos del proveedor;
- monitoreo proporcional y comunicación transparente al empleado;
- proceso para aplicaciones abandonadas o comprometidas.

Una prohibición sin alternativa utilizable empuja el riesgo hacia tecnología no autorizada. El control debe proteger sin bloquear innecesariamente el trabajo.

## 7. Decida qué tercerizar

| Modelo | Ventaja | Riesgo | Mejor uso |
|---|---|---|---|
| Interno | Conocimiento continuo y cercanía al producto. | Capacidad limitada o falta de independencia. | Controles recurrentes y productos estratégicos. |
| Externo | Especialización, independencia y capacidad variable. | Dependencia, alcance superficial o pérdida de contexto. | Pruebas profundas, picos de demanda y validación independiente. |
| Híbrido | Retiene contexto y obtiene especialidad. | Requiere coordinación y un dueño claro. | Portafolios medianos o grandes. |
| Servicio administrado | Escala y operación continua. | Concentración de proveedor y métricas mal alineadas. | Monitoreo y pruebas repetibles con supervisión interna. |

La selección no debe basarse solo en tarifa. Compare cobertura, experiencia móvil, metodología, calidad de evidencia, manejo de datos, capacidad de reproducir resultados, retención del equipo, plazos de remediación y costo de salida.

## 8. Construya un caso financiero

La seguridad móvil compite por recursos. Presente opciones, no temor:

- pérdida esperada por fraude, exposición o interrupción;
- costo de remediar temprano frente a corregir en producción;
- ingreso o proceso crítico protegido;
- costo de pruebas, automatización y personal;
- efecto en seguro, contratos y requisitos de clientes;
- dependencia y concentración de proveedor;
- costo de retirar o reemplazar una aplicación.

No prometa eliminar el riesgo. Muestre cuánto riesgo se reduce, cuál permanece y qué señales activarían una nueva inversión.

## 9. Escale por niveles de riesgo

No todas las aplicaciones necesitan la misma evaluación. Un modelo de tres niveles puede asignar controles básicos a todas, controles reforzados a aplicaciones con datos sensibles o autenticación, y revisión independiente profunda a aplicaciones críticas, financieras o reguladas.

Automatice inventario, composición de software, secretos, configuración y pruebas repetibles. Conserve revisión humana para arquitectura, autorización, lógica de negocio, fraude, privacidad y escenarios encadenados. OWASP advierte que las herramientas ayudan a ejecutar pruebas, pero su salida requiere interpretación porque puede contener falsos positivos y negativos.

## 10. Mida lo que permite actuar

Un tablero ejecutivo útil puede incluir:

- porcentaje del inventario clasificado y con propietario;
- cobertura de evaluación por nivel de criticidad;
- hallazgos críticos abiertos y antigüedad;
- tiempo medio y percentil alto de remediación;
- porcentaje de liberaciones que cumplen puertas de seguridad;
- excepciones abiertas, vencidas y aceptadas por nivel correcto;
- aplicaciones sin soporte o con componentes críticos;
- proveedores críticos evaluados y concentración;
- reincidencia de causas raíz;
- tiempo de revocación o contención ante incidente.

Evite convertir el número de hallazgos en una competencia: más pruebas pueden producir más hallazgos sin implicar que el riesgo empeoró.

## 11. Preguntas que debería formular una dirección

1. ¿Conocemos todas las aplicaciones móviles que procesan información de la organización?
2. ¿Quién responde por cada una y qué riesgo aceptó?
3. ¿La autorización se controla nuevamente en el servidor?
4. ¿Qué evidencia tenemos de que los controles funcionan en la versión liberada?
5. ¿Qué proveedor o componente representa una concentración material?
6. ¿Podemos detectar, contener, revocar y recuperar una aplicación comprometida?
7. ¿Cuánto costaría cambiar de proveedor o retirar la aplicación?
8. ¿Las excepciones tienen dueño, vencimiento y compensaciones?
9. ¿La junta recibe tendencias y decisiones, o solo detalles técnicos?

## 12. Ruta práctica de 90 días

- **Días 1–30:** inventario, propietarios, clasificación, aplicaciones críticas y riesgos urgentes.
- **Días 31–60:** estándar mínimo, puertas de liberación, cláusulas de terceros, métricas y piloto de evaluación.
- **Días 61–90:** remediación priorizada, automatización inicial, ejercicio de respuesta y plan anual basado en riesgo.

## Referencias oficiales

- [NIST Cybersecurity Framework 2.0](https://csrc.nist.gov/pubs/cswp/29/the-nist-cybersecurity-framework-csf-20/final)
- [NIST: guía rápida de riesgo de cadena de suministro](https://csrc.nist.gov/pubs/sp/1305/final)
- [NIST Secure Software Development Framework](https://csrc.nist.gov/pubs/sp/800/218/final)
- [OWASP Mobile Application Security](https://owasp.org/www-project-mobile-app-security/)
- [OWASP Mobile Application Security Testing Guide](https://mas.owasp.org/MASTG/)
- [Reglamento europeo de resiliencia operativa digital — DORA](https://eur-lex.europa.eu/eli/reg/2022/2554/oj)

> Este material traduce prácticas de gobierno y seguridad a decisiones empresariales. No sustituye asesoría legal, regulatoria, fiscal o contractual para una jurisdicción o entidad concreta.
