# [`paperless`](https://github.com/pascaliske/helm-charts/tree/master/charts/paperless)

> A Helm chart for paperless-ngx

[![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/paperless)[![Version: 1.0.1](https://img.shields.io/badge/Version-1.0.1-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/paperless)[![AppVersion: 1.8.0](https://img.shields.io/badge/AppVersion-1.8.0-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/paperless)

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
| affinity | object | `{}` | Pod-level affinity. More info [here](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#scheduling). |
| certificate.annotations | object | `{}` | Additional annotations for the certificate object. |
| certificate.create | bool | `false` | Create an Certificate object for the exposed chart. |
| certificate.dnsNames | list | `[]` | List of subject alternative names for the certificate. |
| certificate.issuerRef.kind | string | `"ClusterIssuer"` | Type of the referenced certificate issuer. Can be "Issuer" or "ClusterIssuer". |
| certificate.issuerRef.name | string | `""` | Name of the referenced certificate issuer. |
| certificate.labels | object | `{}` | Additional labels for the certificate object. |
| certificate.secretName | string | `""` | Name of the secret in which the certificate will be stored. Defaults to the first item in dnsNames. |
| consumption.enabled | bool | `true` | Enable the volume mount of a [consumption directory](https://paperless-ngx.readthedocs.io/en/latest/configuration.html#paths-and-folders). |
| consumption.hostPath | string | `""` | Host path of the consumption directory outside the container. |
| consumption.mountPath | string | `"/consumption"` | Mount path of the consumption directory inside the container. |
| deployment.annotations | object | `{}` | Additional annotations for the deployment object. |
| deployment.enabled | bool | `true` | Create a workload for this chart. |
| deployment.kind | string | `"Deployment"` | Type of the workload object. |
| deployment.labels | object | `{}` | Additional labels for the deployment object. |
| deployment.replicas | int | `1` | The number of replicas. |
| env[0] | object | `{"name":"TZ","value":"UTC"}` | Timezone for the container. |
| export.cronJob.annotations | object | `{}` | Additional annotations for the cronjob object. |
| export.cronJob.enabled | bool | `false` | Create a `CronJob` object for [automated exports](https://paperless-ngx.readthedocs.io/en/latest/administration.html#making-backups). |
| export.cronJob.failedJobsHistoryLimit | int | `1` | The number of failed finished jobs to retain. |
| export.cronJob.labels | object | `{}` | Additional labels for the cronjob object. |
| export.cronJob.schedule | string | `"0 4 * * 1"` | Schedule for automated exports. |
| export.cronJob.successfulJobsHistoryLimit | int | `3` | The number of successful finished jobs to retain. |
| export.cronJob.suspend | bool | `false` | Enable/disable the cron job schedule quickly. |
| export.enabled | bool | `true` | Enable the volume mount of an export directory for [backups](https://paperless-ngx.readthedocs.io/en/latest/administration.html#making-backups) using the [document exporter](https://paperless-ngx.readthedocs.io/en/latest/administration.html#utilities-exporter). |
| export.hostPath | string | `""` | Host path of the export directory outside the container. |
| export.mountPath | string | `"/export"` | Mount path of the export directory inside the container. |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` | The pull policy for the deployment. |
| image.repository | string | `"ghcr.io/paperless-ngx/paperless-ngx"` | The repository to pull the image from. |
| image.tag | string | `"1.9.2"` | The docker tag, if left empty chart's appVersion will be used. |
| ingressRoute.annotations | object | `{}` | Additional annotations for the ingress route object. |
| ingressRoute.create | bool | `false` | Create an IngressRoute object for exposing this chart. |
| ingressRoute.entryPoints | list | `[]` | List of [entry points](https://doc.traefik.io/traefik/routing/routers/#entrypoints) on which the ingress route will be available. |
| ingressRoute.labels | object | `{}` | Additional labels for the ingress route object. |
| ingressRoute.middlewares | list | `[]` | List of [middleware objects](https://doc.traefik.io/traefik/routing/providers/kubernetes-crd/#kind-middleware) for the ingress route. |
| ingressRoute.rule | string | `""` | [Matching rule](https://doc.traefik.io/traefik/routing/routers/#rule) for the underlying router. |
| ingressRoute.tlsSecretName | string | `""` | Use an existing secret containing the TLS certificate. |
| nameOverride | string | `""` |  |
| persistentVolumeClaim.annotations | object | `{}` | Additional annotations for the persistent volume claim object. |
| persistentVolumeClaim.create | bool | `true` | Create a new persistent volume claim object. |
| persistentVolumeClaim.existingPersistentVolumeClaim | string | `""` | Use an existing persistent volume claim object. |
| persistentVolumeClaim.labels | object | `{}` | Additional labels for the persistent volume claim object. |
| persistentVolumeClaim.mountPath | string | `"/usr/src/paperless"` | Mount path of the persistent volume claim object. |
| persistentVolumeClaim.storageClassName | string | `""` | Storage class name for the persistent volume claim object. |
| ports.http.enabled | bool | `true` | Enable the port inside the `Deployment` and `Service` objects. |
| ports.http.nodePort | string | `nil` | The external port used if `.service.type` == `NodePort`. |
| ports.http.port | int | `8000` | The port used as internal port and cluster-wide port if `.service.type` == `ClusterIP`. |
| ports.http.protocol | string | `"TCP"` | The protocol used for the service. |
| rbac.annotations | object | `{}` | Additional annotations for the role and role binding objects. |
| rbac.create | bool | `true` | Create `Role` and `RoleBinding` objects. |
| rbac.labels | object | `{}` | Additional labels for the role and role binding objects. |
| resources | object | `{}` | Compute resources used by the container. More info [here](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/). |
| secret.annotations | object | `{}` | Additional annotations for the secret object. |
| secret.create | bool | `true` | Create a new secret containing the [secret key](https://paperless-ngx.readthedocs.io/en/latest/configuration.html#hosting-security). |
| secret.existingSecret | string | `""` | Use an existing secret to store the [secret key](https://paperless-ngx.readthedocs.io/en/latest/configuration.html#hosting-security). |
| secret.labels | object | `{}` | Additional labels for the secret object. |
| secret.secretKey | string | `""` | [Secret key](https://paperless-ngx.readthedocs.io/en/latest/configuration.html#hosting-security) used when not using an existing secret. |
| securityContext | object | `{}` | Pod-level security attributes. More info [here](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#security-context). |
| service.annotations | object | `{}` | Additional annotations for the service object. |
| service.enabled | bool | `true` | Create a service for exposing this chart. |
| service.labels | object | `{}` | Additional labels for the service object. |
| service.type | string | `"ClusterIP"` | The service type used. |
| serviceAccount.name | string | `""` | Specify the service account used for the deployment. |
| tolerations | object | `{}` | Pod-level tolerations. More info [here](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#scheduling). |
| trash.enabled | bool | `false` | Enable the volume mount of a [trash directory](https://paperless-ngx.readthedocs.io/en/latest/configuration.html#paths-and-folders). |
| trash.hostPath | string | `""` | Host path of the trash directory outside the container. |
| trash.mountPath | string | `"/trash"` | Mount path of the trash directory inside the container. |

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| pascaliske | <info@pascaliske.dev> | <https://pascaliske.dev> |

## License

[MIT](../LICENSE.md) – © 2022 [Pascal Iske](https://pascaliske.dev)
