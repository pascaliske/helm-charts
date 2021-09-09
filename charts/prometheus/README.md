# [`prometheus`](https://github.com/pascaliske/helm-charts)

> A Helm chart for prometheus

[![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts)[![Version: 1.0.2](https://img.shields.io/badge/Version-1.0.2-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts)[![AppVersion: v2.29.2](https://img.shields.io/badge/AppVersion-v2.29.2-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts)

* <https://github.com/pascaliske/helm-charts>
* <https://github.com/prometheus/prometheus>
* <https://prometheus.io>

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
helm install prometheus pascaliske/prometheus
```

To uninstall this chart simply run the following command:

```sh
helm delete prometheus
```

## Values

The following values can be used to adjust the helm chart.

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| configMap.annotations | object | `{}` |  |
| configMap.create | bool | `true` |  |
| configMap.existingConfigMap | string | `""` |  |
| configMap.files | object | `{}` |  |
| configMap.labels | object | `{}` |  |
| configMap.mountPath | string | `"/etc/config"` |  |
| deployment.annotations | object | `{}` |  |
| deployment.enabled | bool | `true` |  |
| deployment.kind | string | `"Deployment"` |  |
| deployment.labels | object | `{}` |  |
| deployment.replicas | int | `1` |  |
| env[0].name | string | `"TZ"` |  |
| env[0].value | string | `"UTC"` |  |
| extraArgs | list | `[]` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"prom/prometheus"` |  |
| image.tag | string | `"v2.29.2"` |  |
| nameOverride | string | `""` |  |
| persistentVolumeClaim.annotations | object | `{}` |  |
| persistentVolumeClaim.create | bool | `true` |  |
| persistentVolumeClaim.existingPersistentVolumeClaim | string | `""` |  |
| persistentVolumeClaim.labels | object | `{}` |  |
| persistentVolumeClaim.mountPath | string | `"/prometheus"` |  |
| ports.http.enabled | bool | `true` |  |
| ports.http.port | int | `9090` |  |
| rbac.annotations | object | `{}` |  |
| rbac.create | bool | `true` |  |
| rbac.labels | object | `{}` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| service.annotations | object | `{}` |  |
| service.enabled | bool | `true` |  |
| service.labels | object | `{}` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.labels | object | `{}` |  |
| serviceAccount.name | string | `""` |  |

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| pascaliske | info@pascaliske.dev | https://pascaliske.dev |

## License

[MIT](LICENSE.md) – © 2021 [Pascal Iske](https://pascaliske.dev)
