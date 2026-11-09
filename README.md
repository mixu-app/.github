# .github

Organization profile and shared CI/CD governance repository for [mixu-app](https://github.com/mixu-app).

- [`profile/README.md`](profile/README.md) is what visitors see on the
  organization page. It is written in Chinese because the product is aimed at
  Chinese readers.
- Repository visibility and ownership rules live in the workspace `AGENTS.md`
  and `workspace.toml`, not here.

## Contents

| Path | Purpose |
|---|---|
| `profile/README.md` | Organization landing page (Chinese) |
| `TRADEMARKS.md` | Brand and fork naming policy |
| `workflow-templates/` | Starter workflows offered to every repository in the org |
| `ISSUE_TEMPLATE/` | Bug and feature templates, with the no-content / no-secrets confirmations |
| `PULL_REQUEST_TEMPLATE.md` | PR metadata line and boundary checklist required by the workspace rules |
| `dependabot.yml` | Weekly action and dependency updates |
| `CODEOWNERS` | Default owner for org-wide files |

## Starter workflows (`workflow-templates/`)

| Template | Target repositories | Purpose |
|---|---|---|
| `markdown-quality.yml` | All repositories | `markdownlint-cli2` gate using shared `.markdownlint-cli2.jsonc` |
| `gradle-kmp-quality.yml` | `mixu-client`, `mixu-graph`, `mixu-spoiler`, `mixu-renderer`, `mixu-server` | Submodule pin verification, `markdownlint-cli2`, and `./gradlew --no-daemon check` under JDK 25 LTS |
| `maven-central-publish.yml` | `mixu-graph`, `mixu-spoiler`, `mixu-renderer`, `mixu-contracts` | Tag-triggered (`v*.*.*`) and manual dry-run Maven Central Portal publication with in-memory GPG signing |
| `bun-site.yml` | `mixu-website` | `bun install`, `typecheck`, `test`, and `build` |

## Organization & Repository Action Secrets (CD Roadmap)

As open-source libraries and multi-platform client packages advance toward automated continuous delivery (CD), the following GitHub Actions Secrets are provisioned at the organization or repository scope (never committed to Git):

| Secret Name | Scope | Purpose |
|---|---|---|
| `MAVEN_CENTRAL_USERNAME` | Org (`mixu-graph`, `mixu-spoiler`, `mixu-renderer`, `mixu-contracts`) | Sonatype Maven Central Portal user token username |
| `MAVEN_CENTRAL_PASSWORD` | Org (`mixu-graph`, `mixu-spoiler`, `mixu-renderer`, `mixu-contracts`) | Sonatype Maven Central Portal user token password |
| `GPG_SIGNING_KEY` | Org (`mixu-graph`, `mixu-spoiler`, `mixu-renderer`, `mixu-contracts`) | ASCII-armored private GPG key for signing published Maven artifacts |
| `GPG_SIGNING_PASSWORD` | Org (`mixu-graph`, `mixu-spoiler`, `mixu-renderer`, `mixu-contracts`) | Passphrase unlocking `GPG_SIGNING_KEY` |
| `ANDROID_KEYSTORE_BASE64` | Repo (`mixu-client`) | Base64-encoded release signing keystore for signed APK/AAB distribution |
| `ANDROID_KEYSTORE_PASSWORD` | Repo (`mixu-client`) | Keystore password for Android release signing |
| `ANDROID_KEY_ALIAS` | Repo (`mixu-client`) | Signing key alias within the Android release keystore |
| `ANDROID_KEY_PASSWORD` | Repo (`mixu-client`) | Private key password for the Android signing key |

## Editing the profile

- Keep it short: what the project is, what is open, what is not, where to start.
- Never claim a feature ships when it does not.
- Update it when the repository roster changes.

```sh
just check     # markdownlint
```

## License

Markdown content: CC BY 4.0. Apache-2.0 applies to any workflow or script.
"Mixu"/"谜序" and the logo are not licensed for reuse. See `NOTICE`.
