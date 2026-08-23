[Leer en español](README.es.md) · [Back to portal](README.md)

# The Board Question That Should Come Before the Architecture Diagram

> **Purpose:** show, through two fictional cases, why privacy and data-protection review has to happen before a technical design is approved, not after.
>
> **Audience:** boards, corporate counsel, compliance officers, and technology leaders evaluating projects that handle personal data.
>
> **Why it matters:** the two costliest failures in this analysis were not technical. They were governance decisions no one questioned in time: not deactivating an access credential, and not asking whether an architecture was legally compatible before building it.

## Core argument

Two scenarios — one reactive, one proposed — show the same pattern: the technical architecture gets decided first, and legal review arrives later, once it is expensive or impossible to fix. In the first, a company suffers a breach through an access credential that was never deactivated, and decides not to report it "so as not to alarm customers." In the second, a technology team proposes uploading complete university degrees — with national ID numbers and grades — to a public blockchain, reasoning that immutability "stops anyone from forging them." Both cases share the same governance failure: no one asked, before building, whether the design was compatible with data-protection law.

## Evidence and context

**Case 1 — The breach a deactivated credential would have prevented.** A fictional data broker holds a database of 80,000 people, including an internally calculated socioeconomic score the data subjects never knew existed, and sells it to retailers without ever registering it with the data-protection regulator. An attacker gets in using a former employee's password — never deactivated — and publishes the database. The company decides not to report it. The regulatory analysis identifies six independent, cumulative administrative violations (three at the most severe tier), and differentiated criminal liability for the attacker, the former employee, and the executives depending on their degree of involvement. The response plan that should have activated within five business days is simple to state: revoke former employees' credentials, notify the regulator, notify the data subjects, document every step — none of which depends on complex technology.

**Case 2 — The blockchain project no architecture diagram can fix.** A fictional university wants its degrees to be internationally verifiable, and its IT team proposes uploading the complete document, personal data included, to a public blockchain. The original proposal violates at least four data-protection principles, and one of them is not a configuration error you can patch: a data subject's right to have their information deleted or corrected is technically incompatible with an immutable ledger. The correct redesign separates what goes on-chain (a signed hash, an issuer identifier, a revocation status) from what stays under the subject's control in a digital wallet (the full document, with selective disclosure). One key distinction supports that redesign: a hash on its own is not personal data, but a hash linked to a person's identifier is — and that distinction determines whether the design is lawful.

## Analysis

The common pattern is a reversed decision sequence. In Case 1, the business decision (sell the data, skip access deprovisioning) was made without anyone asking "what legal obligation do we have here?" until an attacker was already inside. In Case 2, the architecture decision (public blockchain) was made before anyone asked "what does the law require regarding the right to erase or correct data?" — and by the time someone asked, the right answer was no longer "adjust the configuration," it was "redesign the entire system." The lesson is not that the technology is the problem: it is that no architecture, however well engineered technically, can retroactively answer a legal question that should have been answered first.

## Leadership and business implication

The cost of reversing that order is not only the fine. In Case 1, the failure to notify — not the breach itself — is what aggravates the sanctions and opens the door to criminal liability for intent. In Case 2, approving the project as IT originally proposed it would have committed the institution to a technically irreversible compromise: there is no way to "correct" a personal data point once it is wrongly published on a public blockchain. In both cases, the missing question was neither complex nor expensive to answer in time; it only became complex and expensive because it was asked late.

## Recommendations

- Require a data-protection review before approving any architecture that handles personal data — as a condition for project approval, not as a downstream audit step.
- For any project involving immutable technology (blockchain, WORM storage, distributed ledgers), ask explicitly: "what happens when someone asks to correct or delete their data?" If the answer is "it can't be done," that data does not belong there.
- Maintain a verifiable, auditable access-deprovisioning process for every departing employee; in the real-world pattern this case draws on, the missing process — not a sophisticated technical vulnerability — was the root cause of the breach.
- Decide, in advance and with legal counsel, the timeline and content of incident notification; deciding it in the moment of crisis almost always produces the worst possible call ("say nothing").

## Limits

Both cases are fictional and built for illustration; amounts, names, and figures do not correspond to real events. The analysis is based on Costa Rican data-protection law and criminal code in force at the time of writing, and does not constitute legal advice for any specific case.

## Sources

Costa Rica's Law No. 8968, Protection of Individuals with Regard to the Processing of Their Personal Data, and its regulations. Criminal Code, Law No. 4573. Law No. 8454, Law on Certificates, Digital Signatures, and Electronic Documents. Self-sovereign identity (SSI) framework and W3C Verifiable Credentials.

## Related work

- [Who Answers When the CISO Stays Silent?](../ciso-personal-liability/README.en.md) — Governance & Risk
- [What a Board Must Approve Before Signing Off an ISMS](../isms-board-approval/README.en.md) — Governance & Risk

---

**Authorship and transparency:** this article is authored by Eduardo J. Vega Arguedas, based on his own cases developed during his Master's in Cybersecurity. AI tools (Claude, by Anthropic) were used to help organize the analysis and adapt the original academic register into an executive format. The case design, the legal-technical analysis, and the conclusions are the author's own work. This is a sanitized adaptation of a longer academic paper.
