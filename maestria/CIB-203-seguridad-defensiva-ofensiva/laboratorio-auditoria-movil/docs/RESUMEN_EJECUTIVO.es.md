# Resumen ejecutivo: por qué la seguridad móvil es un asunto de dirección

> Transparencia: consulte la [declaración de uso de inteligencia artificial](USO_IA_Y_TRANSPARENCIA.es.md) y los [avisos de código abierto](AVISOS_CODIGO_ABIERTO.es.md).

Una aplicación móvil no es solamente una interfaz. Es una extensión del negocio que procesa identidad, datos, pagos, decisiones y confianza fuera del perímetro tradicional. Cuando falla, el impacto puede aparecer como fraude, exposición de información, interrupción, sanción contractual o regulatoria, costos de respuesta y pérdida de reputación.

Este laboratorio utiliza una aplicación deliberadamente vulnerable para mostrar una idea gerencial: **el riesgo no reside solo en el código visible en el teléfono**. También existe en las interfaces de programación, el backend, la configuración, las bibliotecas, los servicios de terceros, la identidad, el proceso de desarrollo y la evidencia con la que la organización demuestra diligencia.

## Qué debería decidir la dirección

1. **Apetito de riesgo.** Qué información y operaciones pueden ofrecerse por móvil, bajo qué autenticación y con qué tolerancia a fraude, indisponibilidad o pérdida de datos.
2. **Responsabilidad.** Un responsable de negocio acepta el riesgo; Tecnología construye y opera; Seguridad define controles y verifica; Legal y Privacidad interpretan obligaciones; Auditoría evalúa independencia y trazabilidad.
3. **Puertas de liberación.** Ninguna aplicación crítica debería publicarse o actualizarse sin requisitos, revisión de arquitectura, pruebas de seguridad y tratamiento formal de excepciones.
4. **Terceros.** El desarrollo o la evaluación pueden tercerizarse, pero la rendición de cuentas permanece en la organización. El contrato debe convertir expectativas de seguridad en obligaciones verificables.
5. **Medición.** La junta y la alta gerencia necesitan tendencias de exposición, tiempo de remediación, cobertura de aplicaciones, excepciones vencidas y concentración de proveedores; no una lista aislada de vulnerabilidades.

## Controles mínimos por dimensión

| Dimensión | Decisión o control esperado |
|---|---|
| Técnico | Inventario, modelado de amenazas, autenticación robusta, autorización del lado servidor, cifrado, almacenamiento seguro, gestión de secretos, pruebas estáticas y dinámicas, monitoreo y respuesta. |
| Legal y privacidad | Base jurídica, minimización, retención, transferencias, notificación de incidentes, propiedad intelectual, derecho de auditoría y obligaciones sectoriales, validadas por asesoría competente. |
| Gobernanza | Propietario, clasificación, nivel de criticidad, aceptación de riesgo, segregación de funciones, evidencia y revisión periódica. |
| Financiero | Pérdida esperada, costo de control, costo de interrupción, fraude, reservas, seguro y costo de salida de un proveedor. |
| Terceros | Debida diligencia, requisitos contractuales, composición del software, gestión de vulnerabilidades, plazos de remediación, cooperación en incidentes, subcontratistas y plan de salida. |
| Escalabilidad | Controles reutilizables en la línea de entrega, estándares por nivel de riesgo, pruebas automatizadas y revisión humana para rutas críticas. |
| Aplicaciones de empleados | Catálogo permitido, gestión del dispositivo, separación de datos, identidad corporativa, acceso condicional, revocación y proceso de excepción. |

## Mensaje principal

La auditoría móvil no debe comprarse como una prueba puntual. Debe operar como un **ciclo de aseguramiento**: conocer el inventario, clasificar el riesgo, establecer requisitos, verificar antes de liberar, observar en producción, responder y mejorar. OWASP ofrece un estándar específico para aplicaciones móviles; el Marco de Ciberseguridad 2.0 del NIST conecta esas prácticas con gobierno empresarial y cadena de suministro.

La ejecución puede ser interna, externa o híbrida. La opción correcta depende de criticidad, independencia requerida, capacidad interna, velocidad y costo total. En todos los modelos, la organización conserva la decisión de riesgo, la supervisión del proveedor y la verificación de cierre.

## Lectura recomendada

- [Walkthrough gerencial completo](WALKTHROUGH_GERENCIAL.es.md)
- [Metodología y trazabilidad](METODOLOGIA.es.md)
- [Lista de materiales del laboratorio](BOM.es.md)
