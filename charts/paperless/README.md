# [`paperless`](https://charts.pascaliske.dev/charts/paperless/)

> A Helm chart for paperless-ngx

[![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ](https://charts.pascaliske.dev/charts/paperless/)[![Version: 6.0.0](https://img.shields.io/badge/Version-6.0.0-informational?style=flat-square) ](https://charts.pascaliske.dev/charts/paperless/)[![AppVersion: 2.20.2](https://img.shields.io/badge/AppVersion-2.20.2-informational?style=flat-square) ](https://charts.pascaliske.dev/charts/paperless/)

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
| consumption.csi | object | `{}` | CSI storage volume for the consumption directory. Only used if type equals `csi`. |
| consumption.emptyDir | object | `{}` | Temporary emptyDir volume for the consumption directory. Only used if type equals `emptyDir` or is unknown. |
| consumption.enabled | bool | `true` | Enable the volume mount of a [consumption directory](https://docs.paperless-ngx.com/configuration/#paths-and-folders). |
| consumption.hostPath | object | `{}` | Host path volume for the consumption directory. Only used if type equals `hostPath`. |
| consumption.mountPath | string | `"/consumption"` | Mount path of the consumption directory inside the container. |
| consumption.nfs | object | `{}` | NFS storage volume for the consumption directory. Only used if type equals `nfs`. |
| consumption.persistentVolumeClaim | object | `{}` | PersistentVolumeClaim for the consumption directory. Only used if type equals `pvc`. |
| consumption.type | string | `"emptyDir"` | Type of the target volume for the consumption directory. Possible values are: `hostPath`, `pvc`, `csi`, `nfs`, `emptyDir`. |
| controller.annotations | object | `{}` | Additional annotations for the controller object. |
| controller.enabled | bool | `true` | Create a workload for this chart. |
| controller.kind | string | `"Deployment"` | Type of the workload object. |
| controller.labels | object | `{}` | Additional labels for the controller object. |
| controller.replicas | int | `1` | The number of replicas. |
| controller.updateStrategy | object | `{}` | The controller update strategy. Currently only applies to controllers of kind `Deployment`. |
| env | list | `[{"name":"TZ","value":"UTC"}]` | Allow passing in environment variables to the container - supported are both `value` and `valueFrom`. |
| env[0] | object | `{"name":"TZ","value":"UTC"}` | Timezone for the container. |
| export.cronJob.annotations | object | `{}` | Additional annotations for the cronjob object. |
| export.cronJob.enabled | bool | `false` | Create a `CronJob` object for [automated exports](https://docs.paperless-ngx.com/administration/#backup). |
| export.cronJob.failedJobsHistoryLimit | int | `1` | The number of failed finished jobs to retain. |
| export.cronJob.labels | object | `{}` | Additional labels for the cronjob object. |
| export.cronJob.schedule | string | `"0 4 * * 1"` | Schedule for automated exports. |
| export.cronJob.successfulJobsHistoryLimit | int | `3` | The number of successful finished jobs to retain. |
| export.cronJob.suspend | bool | `false` | Enable/disable the cron job schedule quickly. |
| export.csi | object | `{}` | CSI storage volume for the consumption directory. Only used if type equals `csi`. |
| export.emptyDir | object | `{}` | Temporary emptyDir volume for the consumption directory. Only used if type equals `emptyDir` or is unknown. |
| export.enabled | bool | `false` | Enable the volume mount of an export directory for [backups](https://docs.paperless-ngx.com/administration/#backup) using the [document exporter](https://docs.paperless-ngx.com/administration/#exporter). |
| export.hostPath | object | `{}` | Host path volume for the consumption directory. Only used if type equals `hostPath`. |
| export.mountPath | string | `"/export"` | Mount path of the export directory inside the container. |
| export.nfs | object | `{}` | NFS storage volume for the consumption directory. Only used if type equals `nfs`. |
| export.persistentVolumeClaim | object | `{}` | PersistentVolumeClaim for the consumption directory. Only used if type equals `pvc`. |
| export.type | string | `"emptyDir"` | Type of the target volume for the export directory. Possible values are: `hostPath`, `pvc`, `csi`, `nfs`, `emptyDir`. |
| extraContainers | object | `{}` | Specify any extra containers here as dictionary items - each should have its own key. |
| extraObjects | list | `[]` | Specify extra objects. |
| extraVolumeMounts | list | `[]` | Specify extra volume mounts for the default containers. |
| extraVolumes | list | `[]` | Specify extra volumes for the workload. |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` | The pull policy for the controller. |
| image.registry | string | `"ghcr.io"` | The registry to pull the image from. |
| image.repository | string | `"paperless-ngx/paperless-ngx"` | The repository to pull the image from. |
| image.tag | string | `.Chart.AppVersion` | The docker tag, if left empty chart's appVersion will be used. |
| ingressRoute.annotations | object | `{}` | Additional annotations for the ingress route object. |
| ingressRoute.create | bool | `false` | Create an IngressRoute object for exposing this chart. |
| ingressRoute.entryPoints | list | `[]` | List of [entry points](https://doc.traefik.io/traefik/routing/routers/#entrypoints) on which the ingress route will be available. |
| ingressRoute.labels | object | `{}` | Additional labels for the ingress route object. |
| ingressRoute.middlewares | list | `[]` | List of [middleware objects](https://doc.traefik.io/traefik/routing/providers/kubernetes-crd/#kind-middleware) for the ingress route. |
| ingressRoute.rule | string | `""` | [Matching rule](https://doc.traefik.io/traefik/routing/routers/#rule) for the underlying router. |
| ingressRoute.tlsSecretName | string | `""` | Use an existing secret containing the TLS certificate. |
| media.csi | object | `{}` | CSI storage volume for the media directory. Only used if type equals `csi`. |
| media.emptyDir | object | `{}` | Temporary emptyDir volume for the media directory. Only used if type equals `emptyDir` or is unknown. |
| media.enabled | bool | `false` | Enable the volume mount of a [media directory](https://docs.paperless-ngx.com/configuration/#paths-and-folders). |
| media.hostPath | object | `{}` | Host path volume for the media directory. Only used if type equals `hostPath`. |
| media.mountPath | string | `"/media"` | Mount path of the media directory inside the container. |
| media.nfs | object | `{}` | NFS storage volume for the media directory. Only used if type equals `nfs`. |
| media.persistentVolumeClaim | object | `{}` | PersistentVolumeClaim for the media directory. Only used if type equals `pvc`. |
| media.type | string | `"hostPath"` | Type of the target volume for the media directory. Possible values are: `hostPath`, `pvc`, `csi`, `nfs`, `emptyDir`. |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` | Pod-level node selector. More info [here](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#scheduling). |
| persistentVolumeClaim.accessMode | string | `"ReadWriteOnce"` | Access mode of the persistent volume claim object. |
| persistentVolumeClaim.annotations | object | `{}` | Additional annotations for the persistent volume claim object. |
| persistentVolumeClaim.create | bool | `true` | Create a new persistent volume claim object. |
| persistentVolumeClaim.existingPersistentVolumeClaim | string | `""` | Use an existing persistent volume claim object. |
| persistentVolumeClaim.labels | object | `{}` | Additional labels for the persistent volume claim object. |
| persistentVolumeClaim.mountPath | string | `"/usr/src/paperless"` | Mount path of the persistent volume claim object. |
| persistentVolumeClaim.size | string | `"1Gi"` | Storage request size for the persistent volume claim object. |
| persistentVolumeClaim.storageClassName | string | `""` | Storage class name for the persistent volume claim object. |
| persistentVolumeClaim.volumeMode | string | `"Filesystem"` | Volume mode of the persistent volume claim object. |
| ports.http.enabled | bool | `true` | Enable the port inside the `Deployment` and `Service` objects. |
| ports.http.nodePort | string | `nil` | The external port used if `.service.type` == `NodePort`. |
| ports.http.port | int | `8000` | The port used as internal port and cluster-wide port if `.service.type` == `ClusterIP`. |
| ports.http.protocol | string | `"TCP"` | The protocol used for the service. |
| rbac.annotations | object | `{}` | Additional annotations for the role and role binding objects. |
| rbac.create | bool | `true` | Create `Role` and `RoleBinding` objects. |
| rbac.labels | object | `{}` | Additional labels for the role and role binding objects. |
| redis | object | `{"enabled":false}` | Configure `redis` subchart under this key. More info [here](https://charts.pascaliske.dev/charts/redis/). |
| redis.enabled | bool | `false` | Enable `redis` subchart. |
| resources | object | `{}` | Compute resources used by the container. More info [here](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/). |
| secret.annotations | object | `{}` | Additional annotations for the secret object. |
| secret.create | bool | `true` | Create a new secret containing the [secret values](https://docs.paperless-ngx.com/configuration/#hosting-and-security). |
| secret.existingSecret | string | `""` | Use an existing secret to store the [secret values](https://docs.paperless-ngx.com/configuration/#hosting-and-security). Please note: keys inside the existing secret must match the keys from below and still need to be provided with non-empty values! |
| secret.labels | object | `{}` | Additional labels for the secret object. |
| secret.values | object | `{"PAPERLESS_SECRET_KEY":"{{ randAlphaNum 42 | b64enc }}"}` | Secret values used when not using an existing secret. Helm templates are supported for values. Please note: this values are still required if you use the existing secret option! |
| secret.values.PAPERLESS_SECRET_KEY | string | `"{{ randAlphaNum 42 | b64enc }}"` | Secret key for session tokens. |
| securityContext | object | `{"fsGroup":1000,"runAsGroup":1000,"runAsNonRoot":true,"runAsUser":1000}` | Pod-level security attributes. More info [here](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#security-context). |
| service.annotations | object | `{}` | Additional annotations for the service object. |
| service.clusterIP | string | `""` | ClusterIP used if service type is `ClusterIP`. |
| service.enabled | bool | `true` | Create a service for exposing this chart. |
| service.labels | object | `{}` | Additional labels for the service object. |
| service.loadBalancerIP | string | `""` | LoadBalancerIP if service type is `LoadBalancer`. |
| service.loadBalancerSourceRanges | list | `[]` | Allowed addresses when service type is `LoadBalancer`. |
| service.type | string | `"ClusterIP"` | The service type used. |
| serviceAccount.annotations | object | `{}` | Additional annotations for the role and role binding objects. |
| serviceAccount.create | bool | `true` | Create a `ServiceAccount` object. |
| serviceAccount.labels | object | `{}` | Additional labels for the role and role binding objects. |
| serviceAccount.name | string | `""` | Specify the service account used for the controller. |
| tolerations | list | `[]` | Pod-level tolerations. More info [here](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#scheduling). |
| trash.csi | object | `{}` | CSI storage volume for the consumption directory. Only used if type equals `csi`. |
| trash.emptyDir | object | `{}` | Temporary emptyDir volume for the consumption directory. Only used if type equals `emptyDir` or is unknown. |
| trash.enabled | bool | `false` | Enable the volume mount of a [trash directory](https://docs.paperless-ngx.com/configuration/#paths-and-folders). |
| trash.hostPath | object | `{}` | Host path volume for the consumption directory. Only used if type equals `hostPath`. |
| trash.mountPath | string | `"/trash"` | Mount path of the trash directory inside the container. |
| trash.nfs | object | `{}` | NFS storage volume for the consumption directory. Only used if type equals `nfs`. |
| trash.persistentVolumeClaim | object | `{}` | PersistentVolumeClaim for the consumption directory. Only used if type equals `pvc`. |
| trash.type | string | `"hostPath"` | Type of the target volume for the trash directory. Possible values are: `hostPath`, `pvc`, `csi`, `nfs`, `emptyDir`. |

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| pascaliske | <info@pascaliske.dev> | <https://pascaliske.dev> |

## License

[MIT](../LICENSE.md) – © 2025 [Pascal Iske](https://pascaliske.dev)
