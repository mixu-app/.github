# .github quality gates. Run via `just check`, never bare tool invocations.
set shell := ["bash", "-euo", "pipefail", "-c"]

check: lint-md actionlint check-config

lint-md:
    markdownlint-cli2 --config .markdownlint-cli2.jsonc

actionlint:
    actionlint .github/workflows/*.yml

check-config:
    test -f .github/codeql/codeql-config.yml

# Dry-run GitHub Actions workflows through act
act-dry:
    act -n -W .github/workflows/quality.yml
