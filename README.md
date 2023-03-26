# Reusable Workflows

A collection of reusable workflows for Github Actions.

## Available workflows

- [`monorepo-semver-tags.yml`](./monorepo-semver-tags.yml)

This workflow creates and bumps semantic version tags on a per-project basis in a monorepo.

### Usage

```yaml
bump-and-tag:
  permissions:
    contents: write
  uses: andres-rojas/reusable-workflows/monorepo-semver-tags.yml@main
  with:
    bump: major
    filter: 's/^([A-Za-z0-9-]+)\/.*$/\1/p'
```

To trigger on pull request labels, see [this repo's implementation](./.github/workflows/bump-and-tag.yml).
