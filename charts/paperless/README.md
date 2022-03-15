# [`paperless`](https://github.com/pascaliske/helm-charts/tree/master/charts/paperless)

> A Helm chart for paperless-ngx

[![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/paperless)[![Version: 0.1.1](https://img.shields.io/badge/Version-0.1.1-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/paperless)[![AppVersion: 1.6.0](https://img.shields.io/badge/AppVersion-1.6.0-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/paperless)

* <https://github.com/pascaliske/helm-charts>
* <https://github.com/paperless-ngx/paperless-ngx>

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
helm install paperless pascaliske/paperless
```

To uninstall this chart simply run the following command:

```sh
helm delete paperless
```

## Values

The following values can be used to adjust the helm chart.

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| consumption.enabled | bool | `true` |  |
| consumption.hostPath | string | `""` |  |
| consumption.mountPath | string | `"/consumption"` |  |
| deployment.annotations | object | `{}` |  |
| deployment.enabled | bool | `true` |  |
| deployment.kind | string | `"Deployment"` |  |
| deployment.labels | object | `{}` |  |
| deployment.replicas | int | `1` |  |
| env[0].name | string | `"TZ"` |  |
| env[0].value | string | `"UTC"` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"ghcr.io/paperless-ngx/paperless-ngx"` |  |
| image.tag | string | `"1.6.0"` |  |
| nameOverride | string | `""` |  |
| persistentVolumeClaim.annotations | object | `{}` |  |
| persistentVolumeClaim.create | bool | `true` |  |
| persistentVolumeClaim.existingPersistentVolumeClaim | string | `""` |  |
| persistentVolumeClaim.labels | object | `{}` |  |
| persistentVolumeClaim.mountPath | string | `"/usr/src/paperless"` |  |
| ports.http.enabled | bool | `true` |  |
| ports.http.nodePort | string | `nil` |  |
| ports.http.port | int | `8000` |  |
| ports.http.protocol | string | `"TCP"` |  |
| resources | object | `{}` |  |
| secret.annotations | object | `{}` |  |
| secret.create | bool | `true` |  |
| secret.existingSecret | string | `""` |  |
| secret.labels | object | `{}` |  |
| secret.secretKey | string | `""` |  |
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
