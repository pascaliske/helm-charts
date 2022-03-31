# [`gitlab`](https://github.com/pascaliske/helm-charts/tree/master/charts/gitlab)

> A Helm chart for GitLab Omnibus

[![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/gitlab)[![Version: 0.2.4](https://img.shields.io/badge/Version-0.2.4-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/gitlab)[![AppVersion: 14.9.1-ce.0](https://img.shields.io/badge/AppVersion-14.9.1--ce.0-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/gitlab)

* <https://github.com/pascaliske/helm-charts>
* <https://docs.gitlab.com>

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
helm install gitlab pascaliske/gitlab
```

To uninstall this chart simply run the following command:

```sh
helm delete gitlab
```

## Values

The following values can be used to adjust the helm chart.

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| backups.cronJob.annotations | object | `{}` |  |
| backups.cronJob.enabled | bool | `false` |  |
| backups.cronJob.failedJobsHistoryLimit | int | `1` |  |
| backups.cronJob.labels | object | `{}` |  |
| backups.cronJob.schedule | string | `"0 3 * * 1"` |  |
| backups.cronJob.successfulJobsHistoryLimit | int | `3` |  |
| backups.cronJob.suspend | bool | `false` |  |
| backups.enabled | bool | `true` |  |
| backups.hostPath | string | `""` |  |
| backups.mountPath | string | `"/backups"` |  |
| configMap.annotations | object | `{}` |  |
| configMap.config | string | `"# external_url 'https://gitlab.example.com'\n"` |  |
| configMap.create | bool | `true` |  |
| configMap.existingConfigMap | string | `""` |  |
| configMap.key | string | `"gitlab.rb"` |  |
| configMap.labels | object | `{}` |  |
| deployment.annotations | object | `{}` |  |
| deployment.enabled | bool | `true` |  |
| deployment.kind | string | `"Deployment"` |  |
| deployment.labels | object | `{}` |  |
| deployment.replicas | int | `1` |  |
| deployment.strategy.rollingUpdate.maxSurge | int | `0` |  |
| deployment.strategy.rollingUpdate.maxUnavailable | int | `1` |  |
| deployment.strategy.type | string | `"RollingUpdate"` |  |
| env[0].name | string | `"TZ"` |  |
| env[0].value | string | `"UTC"` |  |
| fullnameOverride | string | `""` |  |
| healthCheck.enabled | bool | `true` |  |
| healthCheck.whitelist[0] | string | `"127.0.0.1"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"gitlab/gitlab-ce"` |  |
| image.tag | string | `"14.9.1-ce.0"` |  |
| nameOverride | string | `""` |  |
| persistentVolumeClaims[0].annotations | object | `{}` |  |
| persistentVolumeClaims[0].create | bool | `true` |  |
| persistentVolumeClaims[0].existingPersistentVolumeClaim | string | `""` |  |
| persistentVolumeClaims[0].labels | object | `{}` |  |
| persistentVolumeClaims[0].mountPath | string | `"/etc/gitlab"` |  |
| persistentVolumeClaims[0].name | string | `"secrets"` |  |
| persistentVolumeClaims[0].size | string | `"128Mi"` |  |
| persistentVolumeClaims[1].annotations | object | `{}` |  |
| persistentVolumeClaims[1].create | bool | `true` |  |
| persistentVolumeClaims[1].existingPersistentVolumeClaim | string | `""` |  |
| persistentVolumeClaims[1].labels | object | `{}` |  |
| persistentVolumeClaims[1].mountPath | string | `"/var/opt/gitlab"` |  |
| persistentVolumeClaims[1].name | string | `"storage"` |  |
| persistentVolumeClaims[1].size | string | `"30Gi"` |  |
| ports.http.enabled | bool | `true` |  |
| ports.http.nodePort | string | `nil` |  |
| ports.http.port | int | `80` |  |
| ports.http.protocol | string | `"TCP"` |  |
| rbac.annotations | object | `{}` |  |
| rbac.create | bool | `true` |  |
| rbac.labels | object | `{}` |  |
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

[MIT](../LICENSE.md) – © 2022 [Pascal Iske](https://pascaliske.dev)
