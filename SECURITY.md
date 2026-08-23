# Responsible Security Use | Seguridad y divulgación responsable

Use this repository only in an isolated, authorized environment. Do not test third-party applications, accounts, devices, or networks. Before publishing evidence, remove real credentials, tokens, addresses, phone numbers, financial data, private paths, keys, certificates, packet captures, databases, and `.env` files.

Report a documentation safety concern through the repository's GitHub issue tracker without including sensitive evidence.

---

Este repositorio describe pruebas realizadas únicamente en un laboratorio autorizado y aislado.

No ejecute las pruebas contra aplicaciones, cuentas, dispositivos o redes de terceros. No publique capturas, volcados, PCAP, bases de datos o registros sin revisarlos primero.

Antes de cada publicación se debe comprobar que no existan:

- credenciales o tokens reales;
- IP públicas o privadas asociadas con una persona;
- teléfonos, correos, direcciones o identificadores personales;
- datos financieros;
- rutas del directorio personal;
- llaves, certificados o archivos `.env`.

Las credenciales conocidas de la aplicación vulnerable también se reciben mediante variables de entorno para evitar acostumbrarse a incorporar secretos en scripts.
