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

```text
evidence/
├── E-00-baseline/
├── E-01-authentication/
├── E-02-cryptography/
└── ...
```

Each folder should contain original output, a concise conclusion, and `SHA256SUMS.txt`. Real environment values remain local.

## From finding to decision

For each result, ask what property failed, what evidence supports it, what was not demonstrated, what business process is affected, who owns remediation, and what residual risk remains.

> **Management perspective:** Coverage is not the number of tools used. Coverage is the number of relevant attack paths examined with adequate controls. A smaller, traceable test set is more valuable than a large scanner report without asset identity, reproducibility, or decision context.

