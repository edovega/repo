# Executive summary: why mobile security belongs on the leadership agenda

A mobile application is not merely an interface. It extends the business into identities, data, payments, decisions, and customer trust beyond the traditional perimeter. Failure may surface as fraud, information exposure, disruption, contractual or regulatory consequences, response costs, and reputational damage.

This lab uses a deliberately vulnerable application to demonstrate a management principle: **risk does not reside only in the code visible on the phone**. It also exists in application programming interfaces, the backend, configuration, libraries, third-party services, identity, the development process, and the evidence used to demonstrate due care.

## Decisions leadership should own

1. **Risk appetite.** Decide which information and transactions may be offered through mobile channels, under what authentication, and with what tolerance for fraud, downtime, or data loss.
2. **Accountability.** A business owner accepts risk; Technology builds and operates; Security defines controls and verifies; Legal and Privacy interpret obligations; Audit evaluates independence and traceability.
3. **Release gates.** No critical app should be published or updated without requirements, architecture review, security testing, and formal exception treatment.
4. **Third parties.** Development or assessment may be outsourced, but accountability remains with the organization. Contracts must turn security expectations into verifiable obligations.
5. **Measurement.** Boards and executives need trends in exposure, remediation time, application coverage, expired exceptions, and supplier concentration—not an isolated vulnerability list.

## Minimum controls by dimension

| Dimension | Expected decision or control |
|---|---|
| Technical | Inventory, threat modeling, strong authentication, server-side authorization, encryption, secure storage, secret management, static and dynamic testing, monitoring, and response. |
| Legal and privacy | Lawful basis, minimization, retention, transfers, incident notification, intellectual property, audit rights, and sector obligations validated by qualified counsel. |
| Governance | Owner, classification, criticality, risk acceptance, separation of duties, evidence, and periodic review. |
| Financial | Expected loss, control cost, outage cost, fraud, reserves, insurance, and supplier exit cost. |
| Third parties | Due diligence, contractual requirements, software composition, vulnerability handling, remediation deadlines, incident cooperation, subcontractors, and exit planning. |
| Scalability | Reusable delivery-pipeline controls, risk-tiered standards, automated tests, and human review for critical paths. |
| Employee-used apps | Approved catalog, device management, data separation, corporate identity, conditional access, revocation, and an exception process. |

## Core message

Mobile assurance should not be purchased as a one-time test. It should operate as an **assurance cycle**: know the inventory, classify risk, set requirements, verify before release, observe production, respond, and improve. OWASP provides a mobile-specific standard; the NIST Cybersecurity Framework 2.0 connects those practices with enterprise governance and supply-chain risk.

Execution may be internal, outsourced, or hybrid. The right model depends on criticality, required independence, internal capability, speed, and total cost. In every model, the organization retains risk decisions, supplier oversight, and closure verification.

## Recommended reading

- [Full management walkthrough](MANAGEMENT_WALKTHROUGH.en.md)
- [Methodology and traceability](METHODOLOGY.en.md)
- [Laboratory bill of materials](BOM.en.md)

