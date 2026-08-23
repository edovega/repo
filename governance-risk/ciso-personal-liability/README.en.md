[Leer en español](README.es.md) · [Back to portal](README.md)

# Who Answers When the CISO Stays Silent?

> **Purpose:** give boards, executives, and security leaders a clear view of the personal legal exposure a CISO carries when an incident is mishandled or hidden.
>
> **Audience:** boards and risk committees, chief executives, current or prospective CISOs, and corporate counsel.
>
> **Why it matters:** the absence of clear accountability does not protect an organization — it exposes it further. Costa Rica already lived through two national incidents without anyone being held individually accountable; the international trend is moving the other way.

## Core argument

When a cybersecurity incident is mishandled, the first question a board asks is how much it costs and who it affects. The second question — who answers personally, with their own assets, for the decision to stay silent — is almost never asked before it happens. In Costa Rica, that question still has no clear answer: the country has data-protection law, a reformed criminal code, and has ratified the Budapest Convention, yet no official faced a formal process after the 2022 attacks on the Ministry of Finance or the national health service, despite tens of millions of dollars in damage and the collapse of essential public services. At the same time, the international trend is moving the opposite way: the United States criminally convicted Uber's CISO for concealing a breach, and the SEC personally sued SolarWinds' CISO for misleading investors.

The scenario every board should be able to answer is simple to state and hard to resolve without preparation: the security officer detects a ransomware attack or a data leak, reports it to the chief executive, and the chief executive decides not to notify authorities, regulators, or affected individuals in order to protect the company's reputation. The security officer complies and stays silent. Who answers?

The answer depends on two variables almost no organization resolves in writing before an incident occurs: whether a legal duty to report exists (in Costa Rica this is only clear for regulated financial entities and for personal-data breaches, with a five-business-day window), and whether the security officer was formally designated to the data-protection regulator. In the public sector, the General Law of Public Administration is explicit: a manifestly unlawful order from a superior does not exempt the person who obeys it, and staying silent can make the officer jointly liable with the CEO. In the private sector, if the security officer holds that formal designation, they answer to the data-protection regulator and can be named in a civil suit; if not, personal exposure is lower — but it does not disappear.

## Evidence and context

Costa Rica has a real, if fragmented, regulatory architecture: Law 8968 on personal data protection, the criminal code as reformed in 2012, the General Law of Internal Control for the public sector, and the Budapest Convention — in force since 2017, with its Second Protocol ratified in 2026. On that base, two very different regimes coexist: the public sector is subject to oversight by the Comptroller General and can reach the officer's personal civil liability; the private sector has no general duty to report incidents and has no criminal offense equivalent to the "obstruction of justice" charge that convicted Uber's CISO in the United States.

| Case | What happened | Why it matters here |
|---|---|---|
| Uber / Sullivan (US, 2022–2023) | The CISO paid the attackers disguised as a bug-bounty reward and concealed the incident from the regulator actively investigating the company. He was personally convicted of obstruction of justice. | It was not the breach that convicted him — it was disguising the payment and hiding it from an active regulator. Costa Rica has no equivalent private-sector offense today, but that is a gap, not a guarantee. |
| SolarWinds / Brown (US, 2023) | The SEC personally sued the CISO for misleading investors about the company's security posture, before and after a supply-chain attack. | It opened a new path of personal exposure — not criminal, but investor fraud. A Costa Rican company that states a security posture it cannot support with evidence takes on an analogous risk. |
| Ministry of Finance / Conti (Costa Rica, 2022) | Extraction of 672 GB of tax and customs data; no security officer with formally defined functions; no official faced disciplinary process. | Demonstrates the gap: the absence of a formally designated officer did not protect the institution — it left unresolved who should have acted. |
| CCSS / Hive (Costa Rica, 2022) | Over 800 servers shut down, roughly 30,000 medical appointments affected; structural control weaknesses documented after the attack; no individual sanctions. | Shows that even the reinforced public-sector regime — the Comptroller, the internal-control law — was not enough on its own to assign accountability when the incident occurred. |

## Analysis

Three conclusions follow from this evidence. First, Costa Rican law was designed to punish the external attacker, not the internal officer who mishandles — or conceals — an incident; the closest criminal provisions require an extensive interpretation that does not exist in practice today. Second, obeying a superior's instruction does not shield the person who carries it out when that instruction is manifestly unlawful; in the public sector this is already explicit law, and in the private sector civil liability can equally reach someone who acted with documented negligence. Third, international regulatory pressure — the EU's NIS2 directive, the Sullivan conviction, the SolarWinds suit, and the Hanoi Convention that Costa Rica signed in 2025 but has not yet ratified — is moving toward personal liability for the security officer, not away from it. An organization that assumes "this doesn't happen here" is misreading the trend, not the present.

## Leadership and business implication

A security officer's personal assets can be put at risk through three distinct paths, none of which requires a criminal conviction first: civil liability arising from a crime, an independent civil suit if negligence is shown, or precautionary measures over personal assets while a case proceeds. An employment contract offers partial protection, but that protection disappears if there was intent, or if the contract — as is standard — does not cover criminal conduct.

For the organization, the implication cuts both ways: the absence of clear accountability does not protect it, it exposes it further, because no one can show who should have acted and when; and the decision not to invest in formally defining the role, in timely reporting, and in documenting escalation decisions is not a neutral choice — it is the choice to carry the risk without having measured it.

## Recommendations

**At the organizational level:**
- Formally designate the security officer to the data-protection regulator where applicable, and put the exact scope of that designation in writing.
- Adopt a recognized standard (ISO/IEC 27001 or the NIST Cybersecurity Framework) as the benchmark for due diligence, with documented effect on risk management — not as a certification for show.
- Shorten the internal incident-reporting window to 72 hours, even where the law does not yet require it, following the standard already in force in the European Union.
- Purchase Directors & Officers (D&O) liability coverage that explicitly names the security officer as a natural person.
- Require that every incident-management decision — who it was escalated to, when, and what response was received — be logged; in practice, that record is the difference between personal and organizational liability.

**At the individual level, for the security officer:**
- Never execute an instruction to conceal an incident, misclassify a payment, or withhold information from a regulator, regardless of what level it comes from; object in writing before acting.
- Before an incident occurs, verify that the organization's liability policy covers them as a natural person, not only the company.
- Understand that documented diligence is the only real personal defense: a policy that exists only on paper, with no evidence of enforcement, protects no one.

## Limits

This analysis does not establish that a security officer in Costa Rica would be personally convicted in a similar scenario: no Costa Rican case law yet exists on the personal liability of a security officer, and the conclusions are built through regulatory inference and comparison with other jurisdictions, not local precedent. Nor does it establish that the Hanoi Convention will be ratified, or on what timeline. The analysis is limited to Costa Rican law and a verified set of comparative cases (United States, European Union, Australia, Canada); it does not include an exhaustive survey of other Latin American jurisdictions, where the CISO role is still emerging. The Costa Rican bills mentioned are still in the legislative process and may change or be shelved before becoming law.

Organizational silence is not a mitigation strategy — it is an undocumented risk decision. The difference between a security officer who is personally exposed and one who is protected is almost never the technical quality of the controls they implemented, but whether there is a record that they objected, escalated, and documented a decision before the harm occurred.

## Sources

Law No. 8968, Protection of Individuals with Regard to the Processing of Their Personal Data, and its regulations (Executive Decree No. 37554-JP). Criminal Code, Law No. 4573, as amended by Law No. 9048 (2012). General Law of Internal Control, Law No. 8292. General Law of Public Administration, articles 107–110. Budapest Convention on Cybercrime (Law No. 9452, 2017) and its Second Additional Protocol (Law No. 10778, 2025). U.S. Department of Justice, press release on *United States v. Joseph Sullivan* (2022). U.S. Securities and Exchange Commission, press release 2023-237 on SolarWinds. Comptroller General of the Republic of Costa Rica, public reports on the CCSS/Hive incident. Directive (EU) 2022/2555 (NIS2).

## Related work

- Designing an information security management system: what a board must approve before signing off *(coming soon, Governance & Risk)*
- Digital identity and data protection: what a board must decide before approving a blockchain project *(coming soon, Governance & Risk)*

---

**Authorship and transparency:** this article is authored by Eduardo J. Vega Arguedas, based on his own regulatory and comparative research. AI tools (Claude, by Anthropic) were used to help organize sources, check internal consistency, and adapt the original academic register into an executive format. The problem framing, the analytical approach, the legal analysis, and the conclusions are the author's own work; cited regulations were checked against their current version in official sources. This is a sanitized adaptation of a longer academic paper: academic identifiers and the exhaustive citation apparatus were removed, while the analysis and conclusions were preserved.
