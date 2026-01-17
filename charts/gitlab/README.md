# [`gitlab`](https://charts.pascaliske.dev/charts/gitlab/)

> A Helm chart for GitLab Omnibus

[![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ](https://charts.pascaliske.dev/charts/gitlab/)[![Version: 3.2.0](https://img.shields.io/badge/Version-3.2.0-informational?style=flat-square) ](https://charts.pascaliske.dev/charts/gitlab/)[![AppVersion: 18.7.1-ce.0](https://img.shields.io/badge/AppVersion-18.7.1--ce.0-informational?style=flat-square) ](https://charts.pascaliske.dev/charts/gitlab/)

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
| affinity | object | `{}` | Pod-level affinity. More info [here](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#scheduling). |
| backups.cronJob.annotations | object | `{}` | Additional annotations for the cronjob object. |
| backups.cronJob.enabled | bool | `false` | Create a `CronJob` object for automated backups. |
| backups.cronJob.failedJobsHistoryLimit | int | `1` | The number of failed finished jobs to retain. |
| backups.cronJob.labels | object | `{}` | Additional labels for the cronjob object. |
| backups.cronJob.resources | object | `{}` | Compute resources used by the container inside the cronjob. More info [here](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/). |
| backups.cronJob.schedule | string | `"0 3 * * 1"` | Schedule for automated backups. |
| backups.cronJob.successfulJobsHistoryLimit | int | `3` | The number of successful finished jobs to retain. |
| backups.cronJob.suspend | bool | `false` | Enable/disable the cron job schedule quickly. |
| backups.enabled | bool | `true` | Enable backup-related volume mounts. |
| backups.hostPath | string | `""` | Host path to store the created backups to. |
| backups.mountPath | string | `"/backups"` | Mount path of backups inside the container. |
| certificate.annotations | object | `{}` | Additional annotations for the certificate object. |
| certificate.create | bool | `false` | Create an Certificate object for the exposed chart. |
| certificate.dnsNames | list | `[]` | List of subject alternative names for the certificate. |
| certificate.issuerRef.kind | string | `"ClusterIssuer"` | Type of the referenced certificate issuer. Can be "Issuer" or "ClusterIssuer". |
| certificate.issuerRef.name | string | `""` | Name of the referenced certificate issuer. |
| certificate.labels | object | `{}` | Additional labels for the certificate object. |
| certificate.secretName | string | `""` | Name of the secret in which the certificate will be stored. Defaults to the first item in dnsNames. |
| configMap.annotations | object | `{}` | Additional annotations for the config map object. |
| configMap.config | string | `"# external_url 'https://gitlab.example.com'\n"` | String containing the [configuration of gitlab](). |
| configMap.create | bool | `true` | Create a new config map object. |
| configMap.existingConfigMap | string | `""` | Mount path of the config map object. |
| configMap.key | string | `"gitlab.rb"` | Use an existing config map object. |
| configMap.labels | object | `{}` | Additional labels for the config map object. |
| controller.annotations | object | `{}` | Additional annotations for the controller object. |
| controller.enabled | bool | `true` | Create a workload for this chart. |
| controller.kind | string | `"Deployment"` | Type of the workload object. |
| controller.labels | object | `{}` | Additional labels for the controller object. |
| controller.replicas | int | `1` | The number of replicas. |
| controller.strategy.rollingUpdate.maxSurge | int | `0` | Specifies the maximum number of Pods that can be created over the desired number of Pods. |
| controller.strategy.rollingUpdate.maxUnavailable | int | `1` | Specifies the maximum number of Pods that can be unavailable during the update process. |
| controller.strategy.type | string | `"RollingUpdate"` | Strategy used to replace old pods. |
| env[0] | object | `{"name":"TZ","value":"UTC"}` | Timezone for the container. |
| fullnameOverride | string | `""` |  |
| healthCheck.enabled | bool | `true` | Enable health checks for the controller. |
| healthCheck.whitelist | list | `["127.0.0.1"]` | Configure the internal health check whitelist of gitlab. |
| image.pullPolicy | string | `"IfNotPresent"` | The pull policy for the controller. |
| image.registry | string | `"docker.io"` | The registry to pull the image from. |
| image.repository | string | `"gitlab/gitlab-ce"` | The repository to pull the image from. |
| image.tag | string | `.Chart.AppVersion` | The docker tag, if left empty chart's appVersion will be used. |
| ingressRoute.annotations | object | `{}` | Additional annotations for the ingress route object. |
| ingressRoute.create | bool | `false` | Create an IngressRoute object for exposing this chart. |
| ingressRoute.entryPoints | list | `[]` | List of [entry points](https://doc.traefik.io/traefik/routing/routers/#entrypoints) on which the ingress route will be available. |
| ingressRoute.labels | object | `{}` | Additional labels for the ingress route object. |
| ingressRoute.middlewares | list | `[]` | List of [middleware objects](https://doc.traefik.io/traefik/routing/providers/kubernetes-crd/#kind-middleware) for the ingress route. |
| ingressRoute.rule | string | `""` | [Matching rule](https://doc.traefik.io/traefik/routing/routers/#rule) for the underlying router. |
| ingressRoute.tlsSecretName | string | `""` | Use an existing secret containing the TLS certificate. |
| nameOverride | string | `""` |  |
| persistentVolumeClaims.secrets.annotations | object | `{}` | Additional annotations for the secret persistent volume claim object. |
| persistentVolumeClaims.secrets.create | bool | `true` | Create a new secret persistent volume claim object. |
| persistentVolumeClaims.secrets.existingPersistentVolumeClaim | string | `""` | Use an existing secret persistent volume claim object. |
| persistentVolumeClaims.secrets.labels | object | `{}` | Additional labels for the secret persistent volume claim object. |
| persistentVolumeClaims.secrets.mountPath | string | `"/etc/gitlab"` | Mount path of the secret persistent volume claim object. |
| persistentVolumeClaims.secrets.size | string | `"128Mi"` | The size of the created secret persistent volume claim object. |
| persistentVolumeClaims.secrets.storageClassName | string | `""` | Storage class name for the persistent volume claim object. |
| persistentVolumeClaims.storage.annotations | object | `{}` | Additional annotations for the storage persistent volume claim object. |
| persistentVolumeClaims.storage.create | bool | `true` | Create a new storage persistent volume claim object. |
| persistentVolumeClaims.storage.existingPersistentVolumeClaim | string | `""` | Use an existing storage persistent volume claim object. |
| persistentVolumeClaims.storage.labels | object | `{}` | Additional labels for the storage persistent volume claim object. |
| persistentVolumeClaims.storage.mountPath | string | `"/var/opt/gitlab"` | Mount path of the storage persistent volume claim object. |
| persistentVolumeClaims.storage.size | string | `"30Gi"` | The size of the created secret storage persistent volume claim object. |
| persistentVolumeClaims.storage.storageClassName | string | `""` | Storage class name for the persistent volume claim object. |
| ports.http.enabled | bool | `true` | Enable the port inside the `controller` and `Service` objects. |
| ports.http.nodePort | string | `nil` | The external port used if `.service.type` == `NodePort`. |
| ports.http.port | int | `80` | The port used as internal port and cluster-wide port if `.service.type` == `ClusterIP`. |
| ports.http.protocol | string | `"TCP"` | The protocol used for the service. |
| ports.registry.enabled | bool | `true` | Enable the port inside the `controller` and `Service` objects. |
| ports.registry.nodePort | string | `nil` | The external port used if `.service.type` == `NodePort`. |
| ports.registry.port | int | `5005` | The port used as internal port and cluster-wide port if `.service.type` == `ClusterIP`. |
| ports.registry.protocol | string | `"TCP"` | The protocol used for the service. |
| priorityClassName | string | `""` | Optional priority class name to be used for pods. |
| rbac.annotations | object | `{}` | Additional annotations for the role and role binding objects. |
| rbac.create | bool | `true` | Create `Role` and `RoleBinding` objects. |
| rbac.labels | object | `{}` | Additional labels for the role and role binding objects. |
| registryGarbageCollection.cronJob.annotations | object | `{}` | Additional annotations for the cronjob object. |
| registryGarbageCollection.cronJob.enabled | bool | `false` | Create a `CronJob` object for automated garbage collection. |
| registryGarbageCollection.cronJob.failedJobsHistoryLimit | int | `1` | The number of failed finished jobs to retain. |
| registryGarbageCollection.cronJob.labels | object | `{}` | Additional labels for the cronjob object. |
| registryGarbageCollection.cronJob.removeUntaggedManifests | bool | `false` | Include untagged manifests and unreferenced layers if set to true. |
| registryGarbageCollection.cronJob.resources | object | `{}` | Compute resources used by the container inside the cronjob. More info [here](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/). |
| registryGarbageCollection.cronJob.schedule | string | `"0 3 * * 1"` | Schedule for automated garbage collections. |
| registryGarbageCollection.cronJob.successfulJobsHistoryLimit | int | `3` | The number of successful finished jobs to retain. |
| registryGarbageCollection.cronJob.suspend | bool | `false` | Enable/disable the cron job schedule quickly. |
| resources | object | `{}` | Compute resources used by the container. More info [here](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/). |
| securityContext | object | `{}` | Pod-level security attributes. More info [here](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#security-context). |
| service.annotations | object | `{}` | Additional annotations for the service object. |
| service.enabled | bool | `true` | Create a service for exposing this chart. |
| service.labels | object | `{}` | Additional labels for the service object. |
| service.type | string | `"ClusterIP"` | The service type used. |
| serviceAccount.name | string | `""` | Specify the service account used for the controller. |
| tolerations | list | `[]` | Pod-level tolerations. More info [here](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#scheduling). |

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| pascaliske | <info@pascaliske.dev> | <https://pascaliske.dev> |

## License

[MIT](../LICENSE.md) – © 2026 [Pascal Iske](https://pascaliske.dev)
