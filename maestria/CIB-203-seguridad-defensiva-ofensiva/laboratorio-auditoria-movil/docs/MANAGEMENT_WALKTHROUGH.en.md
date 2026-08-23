# Mobile security management walkthrough

## 1. Start with the business, not the tool

The first question is not “Which scanner will we use?” It is “Which business process does this app enable, and what happens if someone acts as another user, changes a transaction, extracts information, or interrupts service?” A marketing app, wallet, internal workforce tool, and clinical app do not require the same assurance depth.

Classify each app by data, transactions, users, exposure, operational dependency, obligations, and reputational effect. Classification determines test depth, frequency, independence, and who may accept an exception.

## 2. Translate technical risk into decision language

A management-ready finding connects five elements:

1. the observed condition;
2. a reasonable abuse scenario;
3. affected process and data;
4. financial, operational, legal, or reputational impact;
5. a decision, owner, and date.

“An activity is exported” is a technical observation. “Another application can open a function without following the local login flow; the server must independently verify identity and authorization” is risk language. Do not overstate evidence: opening a screen alone does not prove that a transaction can be completed.

## 3. Establish a governance model

The [NIST Cybersecurity Framework 2.0](https://www.nist.gov/cyberframework) adds **Govern** as an explicit function and connects cybersecurity to enterprise risk. For a mobile portfolio, this means:

- an inventory of owned, contracted, and employee-approved applications;
- a business owner and technical owner;
- data classification and criticality;
- a minimum standard plus an enhanced profile for sensitive functions;
- an approval and exception-acceptance matrix;
- metrics, reviews, and escalation;
- third-party management across the entire lifecycle.

The board oversees appetite, aggregate exposure, and resilience. Executive management assigns accountability and budget. Product owners prioritize remediation. Security defines and verifies controls. Legal, Privacy, Procurement, and Risk participate according to context.

## 4. Integrate security into the product lifecycle

Use the [NIST Secure Software Development Framework](https://csrc.nist.gov/pubs/sp/800/218/final) as common language for internal development and procurement. For mobile applications, the [OWASP Mobile Application Security project](https://owasp.org/www-project-mobile-app-security/) supplies a verification standard and testing guide.

| Stage | Management control | Expected evidence |
|---|---|---|
| Idea and acquisition | Purpose, owner, data, jurisdictions, criticality, and exit alternative. | Risk record and approval. |
| Design | Threat model, architecture, identity, privacy, and dependencies. | Architecture decisions and requirements. |
| Build | Code, secrets, components, and environment separation reviews. | Control results and exceptions. |
| Test | Static, dynamic, backend, and business-logic abuse cases. | Reproducible evidence and limits. |
| Release | Exit criteria and residual-risk acceptance. | Traceable approval. |
| Operate | Telemetry, fraud, vulnerabilities, platform changes, and incidents. | Indicators and response plans. |
| Retire | Revocation, deletion, legal retention, dependencies, and data. | Closure and verification. |

## 5. Control third-party development

Outsourcing does not transfer accountability. NIST guidance calls for supply-chain requirements in contracts, due diligence, monitoring, incident response, and termination. In regulated sectors, the European Union's Digital Operational Resilience Act illustrates a broadly useful principle: an entity may contract technology services while remaining accountable for its obligations.

A development or assessment agreement should consider, with local legal review:

- measurable security and privacy requirements;
- organizational access to code, architecture, and evidence;
- software component inventory and provenance;
- vulnerability handling and severity-based deadlines;
- incident notice and cooperation;
- authorization and control of subcontractors;
- data location, retention, and deletion;
- audit rights and independent testing;
- intellectual property and knowledge continuity;
- support, end of life, portability, and exit planning;
- insurance and allocation of liability where appropriate.

Supplier assessment does not end at signature. Repeat it after material changes, incidents, new dependencies, and renewal.

## 6. Govern employee-used applications

Risk includes software the company did not build: messaging, storage, authenticators, productivity, artificial intelligence, finance, and remote-access apps. A practical model includes:

- an approved catalog and fast exception path;
- device management and, where appropriate, mobile application management;
- corporate and personal data separation;
- corporate sign-on, multifactor authentication, and conditional access;
- least privilege, revocation, and selective wipe;
- privacy, data-residency, and provider-terms review;
- proportionate monitoring and transparent workforce communication;
- a process for abandoned or compromised apps.

A ban without a usable alternative pushes risk into unauthorized technology. Controls should protect the business without unnecessarily blocking work.

## 7. Decide what to outsource

| Model | Advantage | Risk | Best use |
|---|---|---|---|
| Internal | Continuous knowledge and product proximity. | Limited capacity or independence. | Recurring controls and strategic products. |
| External | Specialization, independence, and variable capacity. | Dependency, shallow scope, or context loss. | Deep testing, demand peaks, and independent validation. |
| Hybrid | Retains context while adding specialty. | Requires coordination and a clear owner. | Medium and large portfolios. |
| Managed service | Scale and continuous operation. | Provider concentration and misaligned metrics. | Monitoring and repeatable testing with internal oversight. |

Do not select solely on day rate. Compare coverage, mobile expertise, methodology, evidence quality, data handling, reproducibility, team retention, remediation support, and exit cost.

## 8. Build the financial case

Mobile security competes for resources. Present options rather than fear:

- expected loss from fraud, exposure, or disruption;
- early remediation cost versus production correction;
- revenue or critical process protected;
- testing, automation, and workforce cost;
- effect on insurance, contracts, and customer requirements;
- supplier dependency and concentration;
- cost to retire or replace the app.

Do not promise zero risk. Explain how much risk is reduced, what remains, and which signals would trigger new investment.

## 9. Scale by risk tier

Not every app needs the same assessment. A three-tier model can assign foundational controls to all apps, enhanced controls to apps with sensitive data or authentication, and deep independent review to critical, financial, or regulated apps.

Automate inventory, software composition, secret detection, configuration, and repeatable tests. Preserve human review for architecture, authorization, business logic, fraud, privacy, and chained scenarios. OWASP notes that testing tools require interpretation because their output may include false positives and false negatives.

## 10. Measure what enables action

A useful executive dashboard may include:

- percentage of inventory classified and assigned an owner;
- assessment coverage by criticality;
- open critical findings and age;
- mean and upper-percentile remediation time;
- percentage of releases meeting security gates;
- open, expired, and properly accepted exceptions;
- unsupported apps or critical components;
- assessed critical suppliers and concentration;
- recurring root causes;
- time to revoke or contain a compromised app.

Do not turn finding count into a contest: broader testing can produce more findings even when risk management is improving.

## 11. Questions directors should ask

1. Do we know every mobile app processing organizational information?
2. Who is accountable for each one, and which risk did that person accept?
3. Is authorization independently enforced by the server?
4. What evidence shows controls work in the released version?
5. Which supplier or component creates material concentration?
6. Can we detect, contain, revoke, and recover a compromised app?
7. What would it cost to change supplier or retire the application?
8. Do exceptions have an owner, expiry, and compensating controls?
9. Does the board receive trends and decisions, or only technical detail?

## 12. A practical 90-day path

- **Days 1–30:** inventory, owners, classification, critical apps, and urgent risks.
- **Days 31–60:** minimum standard, release gates, third-party clauses, metrics, and an assessment pilot.
- **Days 61–90:** prioritized remediation, initial automation, a response exercise, and a risk-based annual plan.

## Official references

- [NIST Cybersecurity Framework 2.0](https://csrc.nist.gov/pubs/cswp/29/the-nist-cybersecurity-framework-csf-20/final)
- [NIST Cybersecurity Supply Chain Risk Management quick-start guide](https://csrc.nist.gov/pubs/sp/1305/final)
- [NIST Secure Software Development Framework](https://csrc.nist.gov/pubs/sp/800/218/final)
- [OWASP Mobile Application Security](https://owasp.org/www-project-mobile-app-security/)
- [OWASP Mobile Application Security Testing Guide](https://mas.owasp.org/MASTG/)
- [European Union Digital Operational Resilience Act — DORA](https://eur-lex.europa.eu/eli/reg/2022/2554/oj)

> This material translates governance and security practices into business decisions. It is not legal, regulatory, tax, or contractual advice for a particular jurisdiction or entity.

