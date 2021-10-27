# [`redis`](https://github.com/pascaliske/helm-charts/tree/master/charts/redis)

> A Helm chart for Redis

[![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/redis)[![Version: 0.0.2](https://img.shields.io/badge/Version-0.0.2-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/redis)[![AppVersion: 6.2.6](https://img.shields.io/badge/AppVersion-6.2.6-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/redis)

* <https://github.com/pascaliske/helm-charts>
* <https://github.com/docker-library/redis>
* <https://redis.io>

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
helm install redis pascaliske/redis
```

To uninstall this chart simply run the following command:

```sh
helm delete redis
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
| extraArgs | list | `[]` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"redis"` |  |
| image.tag | string | `"6.2.6"` |  |
| nameOverride | string | `""` |  |
| persistentVolumeClaim.annotations | object | `{}` |  |
| persistentVolumeClaim.create | bool | `false` |  |
| persistentVolumeClaim.existingPersistentVolumeClaim | string | `""` |  |
| persistentVolumeClaim.labels | object | `{}` |  |
| persistentVolumeClaim.mountPath | string | `"/data"` |  |
| ports.http.enabled | bool | `true` |  |
| ports.http.nodePort | string | `nil` |  |
| ports.http.port | int | `6379` |  |
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
