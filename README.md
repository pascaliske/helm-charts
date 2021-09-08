# [`helm`-charts](https://charts.pascaliske.dev)

> Another repository with lightweight Helm Charts.

[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/pascaliske&style=flat-square)](https://artifacthub.io/packages/search?repo=pascaliske) [![Build Status](https://img.shields.io/github/workflow/status/pascaliske/helm-charts/Release%20Charts/master?label=build&style=flat-square)](https://github.com/pascaliske/helm-charts/actions) ![GitHub Last Release](https://img.shields.io/github/release-date/pascaliske/helm-charts?label=last%20release&style=flat-square) [![GitHub Last Commit](https://img.shields.io/github/last-commit/pascaliske/helm-charts?style=flat-square)](https://github.com/pascaliske/helm-charts) [![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=flat-square)](https://opensource.org/licenses/MIT) [![Awesome Badges](https://img.shields.io/badge/badges-awesome-green.svg?color=blue&style=flat-square)](https://github.com/Naereen/badges)

## Usage

[Helm](https://helm.sh) must be installed to use the charts. Please refer to Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

```sh
helm repo add pascaliske https://charts.pascaliske.dev
```

If you had already added this repo earlier, run `helm repo update` to retrieve the latest versions of the packages.
You can then run `helm search repo pascaliske` to see the charts.

To install a chart:

```sh
helm install <chart> pascaliske/<chart>
```

To uninstall the chart:

```sh
helm delete <chart>
```

## License

[MIT](LICENSE.md) – © 2021 [Pascal Iske](https://pascaliske.dev)
