# Security Policy

## Supported Versions

Pre-release. No version is supported for production use yet; every listed
version is unreleased and security fixes land on `main`.

| Version | Supported         |
| ------- | ----------------- |
| 0.0.x   | No (pre-release)  |

## Reporting a Vulnerability

Report security vulnerabilities privately through a
[GitHub Security Advisory](https://github.com/mixu-app/.github/security/advisories/new).

Do **not** report security vulnerabilities via public GitHub issues, pull
requests, discussions, or chat channels.

When reporting, please include:

- The affected repository, component, and commit or version
- A minimal reproduction using synthetic text (never a copyrighted book or private notes)
- The impact (data exposure, narrative horizon/spoiler leak, billing idempotency, denial of service)
- Whether reader notes, book content, tokens, or account credentials are involved
- The assessed severity and any known workarounds

Do not attach EPUB files, real book excerpts, or personal notes. If a specific
structural property is required to reproduce a defect, describe the structural
property and the maintainers will supply a rights-cleared synthetic fixture.

## What Counts as a Security Issue Here

- **Knowledge Horizon Violation:** A reader can see narrative information beyond
  the current knowledge horizon (a spoiler leak is treated as a correctness and trust
  defect, not a cosmetic bug).
- **Cross-Account Leakage:** Another account's books, notes, overlays, or uploaded assets
  are readable or modifiable.
- **Credential Exposure:** A presigned URL, bearer token, API key, or cloud credential
  leaks through logs, telemetry, an exported settings file, or a client bundle.
- **Parser Escape / Denial of Service:** A malicious EPUB escapes the parser sandbox,
  exhausts device storage or memory, or triggers unrequested network fetches.
- **Billing / Metering Invariant Breach:** A billable extraction action runs without an
  approved credit estimate maximum, or token settlement is not idempotent.

## Disclosure Policy and Response Expectations

- Reports are acknowledged promptly and triaged by maintainers.
- Accepted reports are investigated, patched, and coordinated with the reporter
  before any public disclosure.
- Credit is given to reporters in release notes unless anonymity is requested.
- The project follows coordinated vulnerability disclosure: vulnerability details are
  published only after a verified fix or mitigation is available.
- While no commercial SLA is promised during this pre-release phase, critical vulnerabilities
  receive prioritized attention.
