# .github quality gates. Run via `just check`, never bare tool invocations.
set shell := ["bash", "-euo", "pipefail", "-c"]

check: lint-md actionlint

lint-md:
    markdownlint-cli2 --config .markdownlint-cli2.jsonc

actionlint:
    actionlint .github/workflows/*.yml

# Dry-run GitHub Actions workflows through act
act-dry:
    act -n -W .github/workflows/quality.yml
