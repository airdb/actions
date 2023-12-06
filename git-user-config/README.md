# Git user config Github Action

An action that globally configures git for specified GitHub user.

## Usage

```yaml
- name: Configure git
  uses: airdb/actions/git-user-config@main
  with:
    # Defaults to $GITHUB_ACTOR if not specified
    username: BrewTestBot
```
