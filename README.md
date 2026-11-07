# .github

Organization profile repository for [mixu-app](https://github.com/mixu-app).

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
| `PULL_REQUEST_TEMPLATE.md` | PR metadata line required by the workspace rules |
| `dependabot.yml` | Weekly action and npm updates for this repository |
| `CODEOWNERS` | Default owner for org-wide files |

Starter workflows assume the shared `.markdownlint-cli2.jsonc` and, for the bun
template, a `package.json` with `typecheck` / `test` / `build` scripts.

## Editing the profile

- Keep it short: what the project is, what is open, what is not, where to start.
- Never claim a feature ships when it does not. The product is in a
  documentation-first phase; say so.
- Update it when the repository roster changes.

```sh
just check     # markdownlint
```

## License

Markdown content: CC BY 4.0. Apache-2.0 applies to any script added later.
"Mixu"/"谜序" and the logo are not licensed for reuse. See `NOTICE`.
