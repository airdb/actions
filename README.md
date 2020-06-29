# Airdb Container Action

To get started, click the `Use this template` button on this repository [which will create a new repository based on this template](https://github.blog/2019-06-06-generate-new-repositories-with-repository-templates/).

For info on how to build your first Container action, see the [toolkit docs folder](https://github.com/actions/toolkit/blob/master/docs/container-action.md).



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

      - name: Show new comments
        id: hello
        uses: airdb/actions@master
        with:
          myInput: ${{ toJson(github) }}
```
