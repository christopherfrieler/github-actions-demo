# github-actions-demo
Sample repository to demonstrate basic functionality of [GitHub Actions](https://docs.github.com/en/actions).

## Build
The project is built using the [build.sh](build.sh) script.

### CI pipeline
The build is also automated within GitHub Actions by the [CI pipeline](.github/workflows/ci-pipeline.yml) running on every pushed commit and pull request.

## Release
To release a version of this project, i.e. tagging the current code state, there's a workflow that can be triggered manually: [Perform Release](https://github.com/christopherfrieler/github-actions-demo/actions/workflows/release-trigger.yml).
