# [`gitlab`](https://github.com/pascaliske/helm-charts/tree/master/charts/gitlab)

> A Helm chart for GitLab Omnibus

[![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/gitlab)[![Version: 0.2.5](https://img.shields.io/badge/Version-0.2.5-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/gitlab)[![AppVersion: 14.9.2-ce.0](https://img.shields.io/badge/AppVersion-14.9.2--ce.0-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/gitlab)

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
| backups.cronJob.annotations | object | `{}` | Additional annotations for the cronjob object. |
| backups.cronJob.enabled | bool | `false` | Create a `CronJob` object for automated backups. |
| backups.cronJob.failedJobsHistoryLimit | int | `1` | The number of failed finished jobs to retain. |
| backups.cronJob.labels | object | `{}` | Additional labels for the cronjob object. |
| backups.cronJob.schedule | string | `"0 3 * * 1"` | Schedule for automated backups. |
| backups.cronJob.successfulJobsHistoryLimit | int | `3` | The number of successful finished jobs to retain. |
| backups.cronJob.suspend | bool | `false` | Enable/disable the cron job schedule quickly. |
| backups.enabled | bool | `true` | Enable backup-related volume mounts. |
| backups.hostPath | string | `""` | Host path to store the created backups to. |
| backups.mountPath | string | `"/backups"` | Mount path of backups inside the container. |
| configMap.annotations | object | `{}` | Additional annotations for the config map object. |
| configMap.config | string | `"# external_url 'https://gitlab.example.com'\n"` | String containing the [configuration of gitlab](). |
| configMap.create | bool | `true` | Create a new config map object. |
| configMap.existingConfigMap | string | `""` | Mount path of the config map object. |
| configMap.key | string | `"gitlab.rb"` | Use an existing config map object. |
| configMap.labels | object | `{}` | Additional labels for the config map object. |
| deployment.annotations | object | `{}` | Additional annotations for the deployment object. |
| deployment.enabled | bool | `true` | Create a workload for this chart. |
| deployment.kind | string | `"Deployment"` | Type of the workload object. |
| deployment.labels | object | `{}` | Additional labels for the deployment object. |
| deployment.replicas | int | `1` | The number of replicas. |
| deployment.strategy.rollingUpdate.maxSurge | int | `0` | Specifies the maximum number of Pods that can be created over the desired number of Pods. |
| deployment.strategy.rollingUpdate.maxUnavailable | int | `1` | Specifies the maximum number of Pods that can be unavailable during the update process. |
| deployment.strategy.type | string | `"RollingUpdate"` | Strategy used to replace old pods. |
| env[0] | object | `{"name":"TZ","value":"UTC"}` | Timezone for the container. |
| fullnameOverride | string | `""` |  |
| healthCheck.enabled | bool | `true` | Enable health checks for the deployment. |
| healthCheck.whitelist | list | `["127.0.0.1"]` | Configure the internal health check whitelist of gitlab. |
| image.pullPolicy | string | `"IfNotPresent"` | The pull policy for the deployment. |
| image.repository | string | `"gitlab/gitlab-ce"` | The repository to pull the image from. |
| image.tag | string | `"14.9.1-ce.0"` | The docker tag, if left empty chart's appVersion will be used. |
| nameOverride | string | `""` |  |
| persistentVolumeClaims[0].annotations | object | `{}` | Additional annotations for the secret persistent volume claim object. |
| persistentVolumeClaims[0].create | bool | `true` | Create a new secret persistent volume claim object. |
| persistentVolumeClaims[0].existingPersistentVolumeClaim | string | `""` | Use an existing secret persistent volume claim object. |
| persistentVolumeClaims[0].labels | object | `{}` | Additional labels for the secret persistent volume claim object. |
| persistentVolumeClaims[0].mountPath | string | `"/etc/gitlab"` | Mount path of the secret persistent volume claim object. |
| persistentVolumeClaims[0].name | string | `"secrets"` |  |
| persistentVolumeClaims[0].size | string | `"128Mi"` | The size of the created secret persistent volume claim object. |
| persistentVolumeClaims[1].annotations | object | `{}` | Additional annotations for the storage persistent volume claim object. |
| persistentVolumeClaims[1].create | bool | `true` | Create a new storage persistent volume claim object. |
| persistentVolumeClaims[1].existingPersistentVolumeClaim | string | `""` | Use an existing storage persistent volume claim object. |
| persistentVolumeClaims[1].labels | object | `{}` | Additional labels for the storage persistent volume claim object. |
| persistentVolumeClaims[1].mountPath | string | `"/var/opt/gitlab"` | Mount path of the storage persistent volume claim object. |
| persistentVolumeClaims[1].name | string | `"storage"` |  |
| persistentVolumeClaims[1].size | string | `"30Gi"` | The size of the created secret storage persistent volume claim object. |
| ports.http.enabled | bool | `true` | Enable the port inside the `Deployment` and `Service` objects. |
| ports.http.nodePort | string | `nil` | The external port used if `.service.type` == `NodePort`. |
| ports.http.port | int | `80` | The port used as internal port and cluster-wide port if `.service.type` == `ClusterIP`. |
| ports.http.protocol | string | `"TCP"` | The protocol used for the service. |
| rbac.annotations | object | `{}` | Additional annotations for the role and role binding objects. |
| rbac.create | bool | `true` | Create `Role` and `RoleBinding` objects. |
| rbac.labels | object | `{}` | Additional labels for the role and role binding objects. |
| resources | object | `{}` | Compute resources used by the container. More info [here](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/). |
| securityContext | object | `{}` | Pod-level security attributes. More info [here](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#security-context). |
| service.annotations | object | `{}` | Additional annotations for the service object. |
| service.enabled | bool | `true` | Create a service for exposing this chart. |
| service.labels | object | `{}` | Additional labels for the service object. |
| service.type | string | `"ClusterIP"` | The service type used. |
| serviceAccount.name | string | `""` | Specify the service account used for the deployment. |

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| pascaliske | info@pascaliske.dev | https://pascaliske.dev |

## License

[MIT](../LICENSE.md) – © 2022 [Pascal Iske](https://pascaliske.dev)
