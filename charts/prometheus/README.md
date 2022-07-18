# [`prometheus`](https://github.com/pascaliske/helm-charts/tree/master/charts/prometheus)

> A Helm chart for prometheus

[![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/prometheus)[![Version: 1.3.0](https://img.shields.io/badge/Version-1.3.0-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/prometheus)[![AppVersion: v2.34.0](https://img.shields.io/badge/AppVersion-v2.34.0-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/prometheus)

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
| certificate.annotations | object | `{}` | Additional annotations for the certificate object. |
| certificate.create | bool | `false` | Create an Certificate object for the exposed chart. |
| certificate.dnsNames | list | `[]` | List of subject alternative names for the certificate. |
| certificate.issuerRef.kind | string | `"ClusterIssuer"` | Type of the referenced certificate issuer. Can be "Issuer" or "ClusterIssuer". |
| certificate.issuerRef.name | string | `""` | Name of the referenced certificate issuer. |
| certificate.labels | object | `{}` | Additional labels for the certificate object. |
| certificate.secretName | string | `""` | Name of the secret in which the certificate will be stored. Defaults to the first item in dnsNames. |
| configMap.annotations | object | `{}` | Additional annotations for the config map object. |
| configMap.create | bool | `true` | Create a new config map object. |
| configMap.existingConfigMap | string | `""` | Use an existing config map object. |
| configMap.files | object | `{}` | Map of prometheus configuration files as strings. |
| configMap.labels | object | `{}` | Additional labels for the config map object. |
| configMap.mountPath | string | `"/etc/config"` | Mount path of the config map object. |
| configMapReload.enabled | bool | `true` | Enable automatic config map reload. |
| configMapReload.extraArgs | list | `[]` | List of extra arguments for the config map reload container. |
| configMapReload.extraConfigMapMounts | list | `[]` | List of extra config map mounts for the config map reload container. |
| configMapReload.image.pullPolicy | string | `"IfNotPresent"` | The pull policy for the config map reloader. |
| configMapReload.image.repository | string | `"jimmidyson/configmap-reload"` | Image of the config map reloader. |
| configMapReload.image.tag | string | `"v0.5.0"` | Tag of the config map reloader. |
| configMapReload.resources | object | `{}` | Compute resources used by the config map reload container. More info [here](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/). |
| deployment.annotations | object | `{}` | Additional annotations for the deployment object. |
| deployment.enabled | bool | `true` | Create a workload for this chart. |
| deployment.kind | string | `"Deployment"` | Type of the workload object. |
| deployment.labels | object | `{}` | Additional labels for the deployment object. |
| deployment.replicas | int | `1` | The number of replicas. |
| deployment.strategy.rollingUpdate.maxSurge | int | `0` | Specifies the maximum number of Pods that can be created over the desired number of Pods. |
| deployment.strategy.rollingUpdate.maxUnavailable | int | `1` | Specifies the maximum number of Pods that can be unavailable during the update process. |
| deployment.strategy.type | string | `"RollingUpdate"` | Strategy used to replace old pods. |
| env[0] | object | `{"name":"TZ","value":"UTC"}` | Timezone for the container. |
| extraArgs | list | `[]` | List of extra arguments for the container. |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` | The pull policy for the deployment. |
| image.repository | string | `"prom/prometheus"` | The repository to pull the image from. |
| image.tag | string | `"v2.34.0"` | The docker tag, if left empty chart's appVersion will be used. |
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
| persistentVolumeClaim.mountPath | string | `"/prometheus"` | Mount path of the persistent volume claim object. |
| ports.http.enabled | bool | `true` | Enable the port inside the `Deployment` and `Service` objects. |
| ports.http.port | int | `9090` | The port used as internal port and cluster-wide port if `.service.type` == `ClusterIP`. |
| rbac.annotations | object | `{}` | Additional annotations for the role and role binding objects. |
| rbac.create | bool | `true` | Create `Role` and `RoleBinding` objects. |
| rbac.labels | object | `{}` | Additional labels for the role and role binding objects. |
| resources | object | `{}` | Compute resources used by the container. More info [here](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/). |
| securityContext | object | `{}` | Pod-level security attributes. More info [here](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#security-context). |
| service.annotations | object | `{}` | Additional annotations for the service object. |
| service.enabled | bool | `true` | Create a service for exposing this chart. |
| service.labels | object | `{}` | Additional labels for the service object. |
| service.type | string | `"ClusterIP"` | The service type used. |
| serviceAccount.annotations | object | `{}` | Additional annotations for the service account object. |
| serviceAccount.create | bool | `true` | Create a service account for the deployment. |
| serviceAccount.labels | object | `{}` | Additional labels for the service account object. |
| serviceAccount.name | string | `""` | Specify the service account name used for the deployment. |

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| pascaliske | <info@pascaliske.dev> | <https://pascaliske.dev> |

## License

[MIT](../LICENSE.md) – © 2022 [Pascal Iske](https://pascaliske.dev)
