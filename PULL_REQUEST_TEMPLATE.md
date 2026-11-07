<!-- The metadata line must stay first: issue/PR hygiene depends on it, so the
     leading HTML comment satisfies markdownlint MD041 without moving it. -->
Priority: ... | Area: ... | Labels: ... | Milestone: ... | Task: CTX-XXXX

## What changed

<!-- One paragraph. Link the issue: Closes #NNN -->

## Why

<!-- Requirement ID, ADR/OQ, or the defect this fixes. -->

## Verification

<!-- Commands run and their real output. "just check" is the minimum. -->

## Boundary check

- [ ] No credentials, account ids, bucket names or presigned URLs
- [ ] No book text, extracted in-copyright graph, or personal notes
- [ ] Public/private split respected (operational detail stays in a private repo)
- [ ] Documentation updated (or explicitly not needed)
- [ ] If this touches projection, search or retrieval: a fixture-backed test fails without the fix

## Rollback

<!-- How to revert safely. -->
