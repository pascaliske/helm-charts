# [`uptime-kuma`](https://github.com/pascaliske/helm-charts/tree/master/charts/uptime-kuma)

> A Helm chart for Kubernetes

[![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/uptime-kuma)[![Version: 0.0.3](https://img.shields.io/badge/Version-0.0.3-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/uptime-kuma)[![AppVersion: 1.6.0](https://img.shields.io/badge/AppVersion-1.6.0-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/uptime-kuma)

* <https://github.com/pascaliske/helm-charts>
* <https://github.com/louislam/uptime-kuma>

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
helm install uptime-kuma pascaliske/uptime-kuma
```

To uninstall this chart simply run the following command:

```sh
helm delete uptime-kuma
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
| image.repository | string | `"louislam/uptime-kuma"` |  |
| image.tag | string | `"1.6.3"` |  |
| nameOverride | string | `""` |  |
| persistentVolumeClaim.annotations | object | `{}` |  |
| persistentVolumeClaim.create | bool | `true` |  |
| persistentVolumeClaim.existingPersistentVolumeClaim | string | `""` |  |
| persistentVolumeClaim.labels | object | `{}` |  |
| persistentVolumeClaim.mountPath | string | `"/app/data"` |  |
| ports.http.enabled | bool | `true` |  |
| ports.http.nodePort | string | `nil` |  |
| ports.http.port | int | `3001` |  |
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
