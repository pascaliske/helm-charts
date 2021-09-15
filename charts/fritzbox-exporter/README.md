# [`fritzbox-exporter`](https://github.com/pascaliske/helm-charts/tree/master/charts/fritzbox-exporter)

> A Helm chart for fritzbox-exporter

[![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/fritzbox-exporter)[![Version: 1.0.1](https://img.shields.io/badge/Version-1.0.1-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/fritzbox-exporter)[![AppVersion: 1.0](https://img.shields.io/badge/AppVersion-1.0-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/fritzbox-exporter)

* <https://github.com/pascaliske/helm-charts>
* <https://git.r3ktm8.de/SeaLife-Docker/fritzbox_exporter>

## Requirements

- [`helm`](https://helm.sh) - Refer to their [docs](https://helm.sh/docs) to get started.

## Usage

To use this chart add the repo as follows:

```sh
helm repo add pascaliske https://charts.pascaliske.dev
```

If you had already added this repo earlier, run `helm repo update` to retrieve the latest versions of the packages.

To install this chart simply run the following command:

```sh
helm install fritzbox-exporter pascaliske/fritzbox-exporter
```

To uninstall this chart simply run the following command:

```sh
helm delete fritzbox-exporter
```

## Values

The following values can be used to adjust the helm chart.

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| deployment.annotations | object | `{}` |  |
| deployment.enabled | bool | `true` |  |
| deployment.kind | string | `"Deployment"` |  |
| deployment.labels | object | `{}` |  |
| deployment.replicas | int | `1` |  |
| env[0].name | string | `"TZ"` |  |
| env[0].value | string | `"UTC"` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"sealife/fritzbox-exporter"` |  |
| image.tag | string | `"1.0"` |  |
| nameOverride | string | `""` |  |
| ports.metrics.enabled | bool | `true` |  |
| ports.metrics.port | int | `8765` |  |
| ports.metrics.protocol | string | `"TCP"` |  |
| resources | object | `{}` |  |
| service.annotations | object | `{}` |  |
| service.enabled | bool | `true` |  |
| service.labels | object | `{}` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.name | string | `""` |  |

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| pascaliske | info@pascaliske.dev | https://pascaliske.dev |

## License

[MIT](LICENSE.md) – © 2021 [Pascal Iske](https://pascaliske.dev)
