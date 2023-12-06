# Airdb Container Action

To get started, click the `Use this template` button on this repository [which will create a new repository based on this template](https://github.blog/2019-06-06-generate-new-repositories-with-repository-templates/).

For info on how to build your first Container action, see the [toolkit docs folder](https://github.com/actions/toolkit/blob/master/docs/container-action.md).

For advanced options, see the[Creating a Docker container action](https://docs.github.com/en/actions/creating-actions/creating-a-docker-container-action)



## Usage

```bash
name: "test env"
on:
  issues:
    types: [opened,edited,reopened]
  issue_comment:
    types: [created,edited,deleted]


jobs:
  test:
    runs-on: ubuntu-latest
    steps:

      - name: airdb actions
        id: actionID
        uses: airdb/actions@master
        env:
           GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

## Reference: 
- https://github.com/Homebrew/actions

