# Methodology and Traceability

## Evidence rule

Every conclusion must connect: relevant code or configuration; controlled execution; preserved original output; and an interpretation with explicit limits.

## Assessment domains

| Domain | Core question | Minimum controls |
|---|---|---|
| Authentication | Can a user enter, enumerate accounts, or repeat attempts without control? | Compare valid and invalid cases. |
| Cryptography | Can local material be recovered or reproduced deterministically? | Review key, IV, mode, storage, and external recovery. |
| Storage | Can private data leave the sandbox or remain exposed? | Inspect preferences, SQLite, files, and backup behavior. |
| Exposure | Do HTTP, IPC, or exported components reveal data or functions? | Correlate manifest, traffic, code, and external invocation. |
| Input/authorization | Does the service validate type, range, balance, ownership, and session? | Measure before/after state and restore mutations. |

## Evidence convention

`E` means **Evidence**. The number identifies a stable file set; it is neither a grade nor a result status. A folder may close as confirmed evidence, a reproducible negative result, a not-demonstrated result, or a complementary retest (`R`).

```text
evidence/
├── E-00-baseline/
├── E-01-authentication/
├── E-02-cryptography/
└── ...
```

Each folder should contain original output, a concise conclusion, and `SHA256SUMS.txt`. Real environment values remain local.

| Identifier | General coverage |
|---|---|
| E-00 | Baseline: asset identity, versions, and architecture. |
| E-01–E-02B | Authentication, enumeration, repeated attempts, and direct access. |
| E-03–E-04 | Cryptography and controlled recovery of fictitious data. |
| E-05–E-06 | Local storage, WebView, and Android backup. |
| E-07–E-08R | Traffic, exported components, and activity retesting. |
| E-09–E-11 | Validation, authorization, SQL injection, and ContentProvider. |

## What SHA-256 demonstrates

Matching hashes demonstrate byte-for-byte equality; different hashes demonstrate that content changed. A hash alone does not prove operator identity, authoritative time, or analytical correctness. In this workflow SHA-256 pins the APK and reviewed code, closes each evidence folder, verifies database restoration, compares pre-test and post-test state, and checks reproducible packages after transfer.

## Script catalog

All scripts are under `laboratorio-auditoria-movil/scripts/` and should be reviewed before execution.

| Script | Purpose | Changes the environment? |
|---|---|---|
| `00_inventario_host.sh` | Records the operating system, virtualization, memory, processor, and available tools. | No. |
| `01_preparar_kali.sh` | Checks or installs the Kali Linux laboratory toolset. | Only with `--apply`. |
| `02_preparar_backend.sh` | Builds and creates the isolated backend with Docker. | Only with `--apply`. |
| `03_iniciar_laboratorio.sh` | Starts the container and checks the Android Emulator. | Starts existing services. |
| `04_verificar_laboratorio.sh` | Validates the device, application, backend, and locally supplied fictitious credentials. | No deliberate data change. |
| `05_generar_bom_runtime.sh` | Generates the runtime bill of materials and observed versions. | Creates only the requested report. |
| `06_sellar_evidencias.sh` | Calculates and verifies a folder's `SHA256SUMS.txt` manifest. | Creates or replaces that manifest. |
| `07_auditar_publicacion.sh` | Lists publishable files and searches for sensitive-information patterns before GitHub. | No. |

## From finding to decision

For each result, ask what property failed, what evidence supports it, what was not demonstrated, what business process is affected, who owns remediation, and what residual risk remains.

> **Management perspective:** Coverage is not the number of tools used. Coverage is the number of relevant attack paths examined with adequate controls. A smaller, traceable test set is more valuable than a large scanner report without asset identity, reproducibility, or decision context.
