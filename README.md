# Available workflows

- [`monorepo-semver-tags.yml`](.github/workflows/monorepo-semver-tags.yml)

This workflow creates and bumps semantic version tags on a per-project basis in a monorepo.

## Usage

```yaml
bump-and-tag:
  permissions:
    contents: write
  uses: andres-rojas/reusable-workflows/.github/workflows/monorepo-semver-tags.yml@main
  with:
    bump: major
    filter: 's/^([A-Za-z0-9-]+)\/.*$/\1/p'
```

To trigger on pull request labels, see [this repo's implementation](./.github/workflows/bump-and-tag.yml).

# Development

[![VS Code (local)](https://img.shields.io/badge/local-VS%20Code-%235BA7EC)](https://devpod.sh/open#https%3A%2F%2Fgithub.com%2Fandres-rojas%2Freusable-workflows&workspace=reusable-workflows&provider=docker&ide=vscode)
[![GitHub Codespaces (remote)](https://img.shields.io/badge/remote-GitHub%20Codespaces-%232F353B)](https://codespaces.new/andres-rojas/reusable-workspaces)

## Dev Container

A pre-packaged development environment is provided as a [Development Container](https://containers.dev/).

The [.devcontainer.json](.devcontainer/devcontainer.json) file deploys an Ubuntu environment with:

- [GitHub CLI](https://cli.github.com/)
- all required [linters](#linting)
- all required [formatters](#formatting)
- all [pre-commit hooks](#pre-commit-hooks)

### VS Code

When used via [Visual Studio Code](https://code.visualstudio.com/docs/devcontainers/containers), the following extensions are included:

- [actionlint](https://marketplace.visualstudio.com/items?itemName=arahata.linter-actionlint)
- [GitHub Actions](https://marketplace.visualstudio.com/items?itemName=GitHub.vscode-github-actions)
- [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)

## Linting

The following linters are expected to be used and will be enforced via CI automation:

- [actionlint](https://github.com/rhysd/actionlint)

## Formatting

The following formatters are expected to be used and will be enforced via CI automation:

- [prettier](https://prettier.io/)

## Pre-Commit Hooks

Pre-commit git hooks are available via [pre-commit](https://pre-commit.com/).

To get set up, [install pre-commit](https://pre-commit.com/#install) and the hooks into a local copy of this repository:

```shell
brew install pre-commit
pre-commit install
```
