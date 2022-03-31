# [`code-server`](https://github.com/pascaliske/helm-charts/tree/master/charts/code-server)

> A Helm chart for Kubernetes

[![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/code-server)[![Version: 0.1.1](https://img.shields.io/badge/Version-0.1.1-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/code-server)[![AppVersion: v4.2.0](https://img.shields.io/badge/AppVersion-v4.2.0-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/code-server)

* <https://github.com/pascaliske/helm-charts>
* <https://github.com/coder/code-server>

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
helm install code-server pascaliske/code-server
```

To uninstall this chart simply run the following command:

```sh
helm delete code-server
```

## Values

The following values can be used to adjust the helm chart.

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| configMap.annotations | object | `{}` |  |
| configMap.config | object | `{}` |  |
| configMap.create | bool | `true` |  |
| configMap.existingConfigMap | string | `""` |  |
| configMap.labels | object | `{}` |  |
| configMap.mountPath | string | `"/etc/code-server"` |  |
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
| image.repository | string | `"codercom/code-server"` |  |
| image.tag | string | `"v4.2.0"` |  |
| nameOverride | string | `""` |  |
| persistentVolumeClaim.annotations | object | `{}` |  |
| persistentVolumeClaim.create | bool | `true` |  |
| persistentVolumeClaim.ensurePermissions | bool | `true` |  |
| persistentVolumeClaim.existingPersistentVolumeClaim | string | `""` |  |
| persistentVolumeClaim.labels | object | `{}` |  |
| persistentVolumeClaim.mountPath | string | `"/home/coder"` |  |
| persistentVolumeClaim.projectsPath | string | `"/home/coder/projects"` |  |
| ports.http.enabled | bool | `true` |  |
| ports.http.nodePort | string | `nil` |  |
| ports.http.port | int | `8080` |  |
| ports.http.protocol | string | `"TCP"` |  |
| repositories | list | `[]` |  |
| resources | object | `{}` |  |
| secret.annotations | object | `{}` |  |
| secret.create | bool | `true` |  |
| secret.existingSecret | string | `""` |  |
| secret.labels | object | `{}` |  |
| secret.password | string | `""` |  |
| securityContext.fsGroup | int | `1000` |  |
| securityContext.runAsGroup | int | `1000` |  |
| securityContext.runAsNonRoot | bool | `true` |  |
| securityContext.runAsUser | int | `1000` |  |
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
