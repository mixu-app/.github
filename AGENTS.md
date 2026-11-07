# .github agent guide

## Scope and authority

- Governs only this repository (the organization profile). Workspace rules in
  `../AGENTS.md` apply; the roster is `../workspace.toml`.
- Public, but not a code repository: it holds the org landing page, the trademark
  policy, and later issue/PR templates.
- Copy rules follow the public-content policy: Chinese for the profile page,
  English for policy text that another repository may quote.

## Contents

| Path | Purpose |
|---|---|
| `profile/README.md` | What visitors see on the organization page (Chinese) |
| `TRADEMARKS.md` | Brand policy: what a fork may and may not call itself |
| `README.md` | Maintenance notes for this repository |

## Rules

1. **No unshipped claims.** The product is documentation-first; the profile says
   so plainly. A feature may be described as a design goal, never as shipped.
2. **Roster accuracy.** The repository table matches `workspace.toml` and the
   real visibility on GitHub. Update it in the same change that adds, renames or
   makes a repository private.
3. **Licence accuracy.** The table stays consistent with
   `mixu-docs/docs/open-source-strategy.md`; a licence change updates both.
4. **Trademark policy is not marketing.** It states what is permitted and what
   needs permission; do not weaken it to make a fork "feel welcome".
5. **No private detail.** No account ids, no unreleased commercial terms, no live
   infrastructure, no customer information.

## Gates

```sh
just check     # markdownlint
```

## CarryCtx

- `cd` here before `carryctx` or Git; branches `ctx-XXXX/<type>-<slug>`.
- No commit, push or release without authorization.

## Review checklist

1. Does the roster still match reality?
2. Does any sentence imply a capability that does not exist yet?
3. Is the licence statement consistent with the strategy document?
4. Would a visitor know what is open, what is private, and where to start?
