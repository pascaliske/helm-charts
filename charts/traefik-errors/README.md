# [`traefik-errors`](https://github.com/pascaliske/helm-charts/tree/master/charts/traefik-errors)

> A Helm chart for custom traefik error pages

[![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/traefik-errors)[![Version: 2.0.0](https://img.shields.io/badge/Version-2.0.0-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/traefik-errors)[![AppVersion: 1.0.1](https://img.shields.io/badge/AppVersion-1.0.1-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/traefik-errors)

* <https://github.com/pascaliske/helm-charts>
* <https://github.com/pascaliske/docker-traefik-errors>

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
helm install traefik-errors pascaliske/traefik-errors
```

To uninstall this chart simply run the following command:

```sh
helm delete traefik-errors
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
| image.repository | string | `"ghcr.io/pascaliske/traefik-errors"` |  |
| image.tag | string | `"1.0.1"` |  |
| nameOverride | string | `""` |  |
| ports.http.enabled | bool | `true` |  |
| ports.http.port | int | `8080` |  |
| ports.http.protocol | string | `"TCP"` |  |
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

[MIT](../LICENSE.md) – © 2022 [Pascal Iske](https://pascaliske.dev)
