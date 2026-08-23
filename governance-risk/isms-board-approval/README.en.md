[Leer en español](README.es.md) · [Back to portal](README.md)

# What a Board Must Approve Before Signing Off an ISMS

> **Purpose:** show boards and executives what an information security management system actually asks them to decide, using a fictional e-commerce case built on ISO/IEC 27001:2022.
>
> **Audience:** boards, chief executives, and security leaders who must present or approve an ISMS.
>
> **Why it matters:** an ISMS approved as a paperwork exercise, without leadership understanding what it is prioritizing and why, does not reduce risk — it only produces evidence that a document existed.

## Core argument

An information security management system is not a binder of policies the board signs once a year. It is a set of concrete decisions — which risk to accept, what gets controlled first, how much budget each control receives, who answers when something fails — that leadership ends up making whether it realizes it or not. The useful question for a board is not "do we have an ISMS?" but "can we explain why we prioritized this over that, with what evidence, and by when?"

A fictional case illustrates this well: TiendaClick, a 40-employee Costa Rican e-commerce company operating entirely in the cloud. When it built its ISMS under ISO/IEC 27001:2022, the risk exercise produced a result that surprises anyone who assumes a digital company's ISMS is only about data: the two highest-severity risks were not a data leak, but a fire from lithium-battery overload in the warehouse and a workplace accident from unsafe rack handling. Both were classified at the organization's highest risk tier — Life — above customer data leakage, platform unavailability, or payment interception, which fell under the Legal/Financial tier.

## Evidence and context

The case's risk matrix, built with the standard ISO/IEC 27005 formula (Risk Level = Probability × Impact), yields ten identified risks. The two "High" risks with the top score are physical warehouse-safety risks, not cybersecurity risks in the strict sense. On that basis, the Statement of Applicability prioritizes two Annex A controls — protection against physical threats and physical security monitoring — as "urgent, immediate," ahead of technical controls such as multi-factor authentication or encryption, which remain "in progress" or "planned within 60–90 days."

| Risk | Category | Level | Prioritized treatment |
|---|---|---|---|
| Lithium-battery warehouse fire | Life | High (9) | Urgent — handling procedure, extinguishers, semiannual training |
| Workplace accident in the warehouse | Life | High (9) | Urgent — signage, procedures, safety equipment |
| Customer data leak | Legal | Medium-high (6) | 60 days — MFA, encryption, permission review |
| Platform unavailability | Financial | Medium-high (6) | Secondary cloud provider, SLA review |
| Payment data interception | Legal/Financial | Medium-high (6) | TLS 1.3, certificate review every 90 days |

The plan also sets measurable targets a board can demand to see quarterly: response time under 4 hours for incidents affecting life or mass data, platform availability of at least 99.5% monthly, and notification to the data-protection authority within 72 hours when an incident compromises personal information.

## Analysis

The central finding is not that physical security matters — any operations manager already knows that — but that a well-built ISMS forces leadership to compare it, on the same scale, against the digital risks that usually absorb attention and budget. When an organization's risk hierarchy places life above legal, financial, and reputational harm, a physical access control for a warehouse can — and should — outrank an encryption project, even if that project feels more "cybersecurity." Skipping that comparison is not neutral: it is deciding, without saying so, that the most visible risk matters more than the most severe one.

The second reading concerns incident management: the formal plan does not start with technical detection — it starts with classification (what makes an incident priority one) and ends with a lessons-learned meeting on a fixed deadline. Without that classification agreed on beforehand by leadership, every incident becomes an emergency negotiation over how serious it is, at the worst possible moment to negotiate it.

## Leadership and business implication

An ISMS that leadership cannot explain in its own terms — what gets prioritized, why, with what evidence — is not a mature program; it is an unowned risk wearing the appearance of one. The chief executive's signature on the security policy is not a formality: it is formal acceptance that certain risks are treated first and others wait, and that acceptance must be defensible before an auditor, a regulator, or, in the worst case, a court.

The cost of getting this wrong is not only technical. A physical access control left unfunded because "it isn't the urgent one" turns a risk-management decision into documentable negligence if the incident the ISMS itself flagged as most severe actually occurs.

## Recommendations

- Require the risk matrix to explicitly compare physical, digital, legal, and financial threats on the same scale — do not accept a risk analysis that only looks at the digital side because the project is labeled "cybersecurity."
- Require that every control prioritized as "urgent" have an owner, a deadline, and evidence of execution — not just a name in a table.
- Review ISMS indicators (response time, availability, controls implemented, closed non-conformities) quarterly in the same committee that reviews financial results, not in a separate "IT matters" meeting.
- Approve in writing the residual-risk acceptance criterion — what level of risk the organization tolerates without further treatment — instead of leaving it implicit in the technical team's decisions.

## Limits

The case is fictional and built for illustration; the risk, budget, and timeline data do not come from a real audit. The analysis is limited to the controls and methodology of ISO/IEC 27001:2022 and ISO/IEC 27005:2022; it does not cover other risk-management frameworks (COSO, COBIT) that a larger organization might need to combine.

## Sources

ISO/IEC 27001:2022 — Information security management systems. ISO/IEC 27005:2022 — Information security risk management. NIST SP 800-61 Rev. 2 — Computer security incident handling guide. Costa Rica's Law No. 8968, Protection of Individuals with Regard to the Processing of Their Personal Data.

## Related work

- [Who Answers When the CISO Stays Silent?](../ciso-personal-liability/README.en.md) — Governance & Risk
- Digital identity and data protection: what a board must decide before approving a blockchain project *(coming soon, Governance & Risk)*

---

**Authorship and transparency:** this article is authored by Eduardo J. Vega Arguedas, based on his own case developed during his Master's in Cybersecurity. AI tools (Claude, by Anthropic) were used to help organize the risk comparison and adapt the original academic register into an executive format. The case design, analysis, and recommendations are the author's own work. This is a sanitized adaptation of a longer academic project.
