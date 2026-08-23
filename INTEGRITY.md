# Integrity and evidence

## Purpose

This repository preserves a historical checksum snapshot without representing it as a current, repository-wide integrity guarantee. The unmodified original snapshot is retained at [`integrity/historical/SHA256SUMS-2026-08-23.txt`](integrity/historical/SHA256SUMS-2026-08-23.txt).

## Standard for future publications

When a publication makes an integrity claim, include a scoped manifest with the artifact itself. It must state:

- what files are covered;
- the algorithm and the command or process used to generate it;
- the generation date; and
- any exclusions, including secrets, raw evidence, or material deliberately withheld.

Do not include private source material, credentials, personal data, or unreviewed artifacts merely to make a checksum list complete. The goal is defensible evidence, not the appearance of completeness.

The mobile audit lab already demonstrates this approach through its evidence-sealing workflow. This portfolio foundation keeps that work intact and makes it the reference pattern for future evidence packages.
