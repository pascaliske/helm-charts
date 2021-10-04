# [`snapdrop`](https://github.com/pascaliske/helm-charts/tree/master/charts/snapdrop)

> A Helm chart for snapdrop

[![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/snapdrop)[![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/snapdrop)[![AppVersion: version-78a8b167](https://img.shields.io/badge/AppVersion-version--78a8b167-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/snapdrop)

* <https://github.com/pascaliske/helm-charts>
* <https://github.com/linuxserver/docker-snapdrop>
* <https://github.com/RobinLinus/snapdrop>

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
helm install snapdrop pascaliske/snapdrop
```

To uninstall this chart simply run the following command:

```sh
helm delete snapdrop
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
| env[1].name | string | `"PUID"` |  |
| env[1].value | int | `1000` |  |
| env[2].name | string | `"PGID"` |  |
| env[2].value | int | `1000` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"linuxserver/snapdrop"` |  |
| image.tag | string | `"version-78a8b167"` |  |
| nameOverride | string | `""` |  |
| ports.http.enabled | bool | `true` |  |
| ports.http.nodePort | string | `nil` |  |
| ports.http.port | int | `80` |  |
| ports.http.protocol | string | `"TCP"` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
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
