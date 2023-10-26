# [`code-server`](https://charts.pascaliske.dev/charts/code-server/)

> A Helm chart for Kubernetes

[![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ](https://charts.pascaliske.dev/charts/code-server/)[![Version: 2.0.0](https://img.shields.io/badge/Version-2.0.0-informational?style=flat-square) ](https://charts.pascaliske.dev/charts/code-server/)[![AppVersion: 4.18.0](https://img.shields.io/badge/AppVersion-4.18.0-informational?style=flat-square) ](https://charts.pascaliske.dev/charts/code-server/)

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
| affinity | object | `{}` | Pod-level affinity. More info [here](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#scheduling). |
| certificate.annotations | object | `{}` | Additional annotations for the certificate object. |
| certificate.create | bool | `false` | Create an Certificate object for the exposed chart. |
| certificate.dnsNames | list | `[]` | List of subject alternative names for the certificate. |
| certificate.issuerRef.kind | string | `"ClusterIssuer"` | Type of the referenced certificate issuer. Can be "Issuer" or "ClusterIssuer". |
| certificate.issuerRef.name | string | `""` | Name of the referenced certificate issuer. |
| certificate.labels | object | `{}` | Additional labels for the certificate object. |
| certificate.secretName | string | `""` | Name of the secret in which the certificate will be stored. Defaults to the first item in dnsNames. |
| configMap.annotations | object | `{}` | Additional annotations for the config map object. |
| configMap.config | object | `{}` | Map containing the [configuration of code-server](https://coder.com/docs/code-server/latest/guide). |
| configMap.create | bool | `true` | Create a new config map object. |
| configMap.existingConfigMap | string | `""` | Use an existing config map object. |
| configMap.labels | object | `{}` | Additional labels for the config map object. |
| configMap.mountPath | string | `"/etc/code-server"` | Mount path of the config map object. |
| controller.annotations | object | `{}` | Additional annotations for the controller object. |
| controller.enabled | bool | `true` | Create a workload for this chart. |
| controller.kind | string | `"Deployment"` | Type of the workload object. |
| controller.labels | object | `{}` | Additional labels for the controller object. |
| controller.replicas | int | `1` | The number of replicas. |
| cronJob.annotations | object | `{}` | Additional annotations for the cronjob object. |
| cronJob.enabled | bool | `true` | Create a cron job to auto update repositories. |
| cronJob.failedJobsHistoryLimit | int | `1` | The number of failed finished jobs to retain. |
| cronJob.labels | object | `{}` | Additional labels for the cronjob object. |
| cronJob.schedule | string | `"0 */4 * * *"` | Update schedule for the cron job. |
| cronJob.successfulJobsHistoryLimit | int | `3` | The number of successful finished jobs to retain. |
| cronJob.suspend | bool | `false` | Enable/disable the cron job schedule quickly. |
| dnsConfig | object | `{}` | Pod-level dns config. More info [here](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#hostname-and-name-resolution). |
| env[0] | object | `{"name":"TZ","value":"UTC"}` | Timezone for the container. |
| extraArgs | list | `[]` | List of extra arguments for the container. |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` | The pull policy for the controller. |
| image.repository | string | `"ghcr.io/coder/code-server"` | The repository to pull the image from. |
| image.tag | string | `.Chart.AppVersion` | The docker tag, if left empty chart's appVersion will be used. |
| ingressRoute.annotations | object | `{}` | Additional annotations for the ingress route object. |
| ingressRoute.create | bool | `false` | Create an IngressRoute object for exposing this chart. |
| ingressRoute.entryPoints | list | `[]` | List of [entry points](https://doc.traefik.io/traefik/routing/routers/#entrypoints) on which the ingress route will be available. |
| ingressRoute.labels | object | `{}` | Additional labels for the ingress route object. |
| ingressRoute.middlewares | list | `[]` | List of [middleware objects](https://doc.traefik.io/traefik/routing/providers/kubernetes-crd/#kind-middleware) for the ingress route. |
| ingressRoute.rule | string | `""` | [Matching rule](https://doc.traefik.io/traefik/routing/routers/#rule) for the underlying router. |
| ingressRoute.tlsSecretName | string | `""` | Use an existing secret containing the TLS certificate. |
| nameOverride | string | `""` |  |
| persistentVolumeClaim.accessMode | string | `"ReadWriteOnce"` | Access mode of the persistent volume claim object. |
| persistentVolumeClaim.annotations | object | `{}` | Additional annotations for the persistent volume claim object. |
| persistentVolumeClaim.create | bool | `true` | Create a new persistent volume claim object. |
| persistentVolumeClaim.ensurePermissions | bool | `true` | Manage permissions automatically. |
| persistentVolumeClaim.existingPersistentVolumeClaim | string | `""` | Use an existing persistent volume claim object. |
| persistentVolumeClaim.labels | object | `{}` | Additional labels for the persistent volume claim object. |
| persistentVolumeClaim.mountPath | string | `"/home/coder"` | Mount path of the persistent volume claim object. |
| persistentVolumeClaim.projectsPath | string | `"/home/coder/projects"` | Project folder inside the persistent volume claim object. |
| persistentVolumeClaim.size | string | `"1Gi"` | Storage request size for the persistent volume claim object. |
| persistentVolumeClaim.storageClassName | string | `""` | Storage class name for the persistent volume claim object. |
| persistentVolumeClaim.volumeMode | string | `"Filesystem"` | Volume mode of the persistent volume claim object. |
| ports.http.enabled | bool | `true` | Enable the port inside the `controller` and `Service` objects. |
| ports.http.nodePort | string | `nil` | The external port used if `.service.type` == `NodePort`. |
| ports.http.port | int | `8080` | The port used as internal port and cluster-wide port if `.service.type` == `ClusterIP`. |
| ports.http.protocol | string | `"TCP"` | The protocol used for the service. |
| repositories | list | `[]` | List of repositories to be cloned / updated automatically. |
| resources | object | `{}` | Compute resources used by the container. More info [here](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/). |
| secret.annotations | object | `{}` | Additional annotations for the secret object. |
| secret.create | bool | `true` | Create a new secret containing the password. |
| secret.existingSecret | string | `""` | Use an existing secret to store the password. |
| secret.labels | object | `{}` | Additional labels for the secret object. |
| secret.password | string | `""` | Password used when not using an existing secret. |
| securityContext | object | `{"fsGroup":1000,"runAsGroup":1000,"runAsNonRoot":true,"runAsUser":1000}` | Pod-level security attributes. More info [here](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#security-context). |
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

[MIT](../LICENSE.md) – © 2023 [Pascal Iske](https://pascaliske.dev)
