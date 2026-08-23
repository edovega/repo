# Tutorial structure, objectives, and traceability

## Purpose

This repository teaches how to design and document an authorized assessment of an intentionally vulnerable Android application. It is a sanitized, reproducible tutorial; it does not contain the complete academic submission, credentials, raw screenshots, databases, or other private data.

## Learning objectives

1. Build an isolated, recoverable, and verifiable laboratory.
2. Pin versions, artifacts, and configuration before testing.
3. Combine static review, runtime observation, and before/after controls.
4. Test authentication, cryptography, storage, exposure, and input validation/authorization using fictional data only.
5. Translate technical results into remediation, governance, and risk decisions.
6. Preserve evidence through reproducible commands, verified restorations, and SHA-256 manifests.

## Current structure

```text
laboratorio-auditoria-movil/
├── README.es.md / README.en.md    bilingual technical guide
├── docs/                          BOM, methodology, leadership, transparency, and licensing
├── docs/images/                   sanitized original diagrams
├── scripts/                       reviewable 00–07 automation
├── Dockerfile                     contained, reproducible backend
├── requirements.txt               container dependencies
└── .env.example                   local format; never contains real secrets
```

The path starts with the environment and BOM, continues through emulator and backend setup, runs controlled tests, and closes with integrity, communication, and leadership decisions. See the [BOM](BOM.en.md), [methodology](METHODOLOGY.en.md), and [management walkthrough](MANAGEMENT_WALKTHROUGH.en.md).

## One-to-one evidence map

| Evidence | Focus | Documented result |
|---|---|---|
| E-00 | Baseline | Environment, APK, backend, and tool identity. |
| E-01 / E-02 / E-02B | Authentication | Development bypass, differentiated responses, and direct activity opening. |
| E-03 / E-04 | Cryptography | Recoverable parameters and deterministic encryption. |
| E-05 / E-06 | Storage | Recoverable data, local WebView behavior, and extractable backup. |
| E-07 / E-08 / E-08R | Exposure | Cleartext HTTP, receiver, and exported activities. |
| E-09 / E-10 / E-11 | Inputs and authorization | State changes, SQL injection not demonstrated, and exposed ContentProvider. |

## Rubric status

The documentation internally covers technical aspects, rationale, five testing domains, and the report. Teacher-feedback incorporation cannot be represented as complete until a real comment, date, and implementation record exist. This preserves academic integrity: the tutorial does not claim an “Exceeds” rating for approval that has not occurred.

## Navigation

- [Technical guide in English](../README.en.md)
- [Guía técnica en español](../README.es.md)
- [BOM and tools](BOM.en.md)
- [Methodology and limits](METHODOLOGY.en.md)
- [Generative AI use](AI_USE_AND_TRANSPARENCY.en.md)
- [Open-source notices](OPEN_SOURCE_NOTICES.en.md)
