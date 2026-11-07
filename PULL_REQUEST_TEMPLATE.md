<!-- markdownlint-disable-file MD041 -->
<!-- Conventional Commit subject: <type>(<scope>): <description> -->
<!-- The metadata line must stay first: PR hygiene depends on it, and a template
     body is not a document with an H1. -->
Priority: ... | Area: ... | Labels: ... | Milestone: ... | Task: CTX-XXXX

## What changed

<!-- One paragraph. Link the issue: Closes #NNN -->

## Why

<!-- Requirement ID, ADR/OQ, or the defect this fixes. -->

## Verification & Testing

<!-- Commands run and their real output. "just check" is the minimum. -->
- [ ] `just check` passes cleanly
- [ ] Relevant unit / property tests added or updated
- [ ] Worktree verified and isolated (`.worktrees/ctx-XXXX-...`)

## Boundary check

- [ ] No credentials, account ids, bucket names or presigned URLs
- [ ] No book text, extracted in-copyright graph, or personal notes
- [ ] Public/private split respected (operational detail stays in a private repo)
- [ ] Documentation updated (or explicitly not needed)
- [ ] If this touches projection, search or retrieval: a fixture-backed test fails without the fix

## Rollback

<!-- How to revert safely. -->
