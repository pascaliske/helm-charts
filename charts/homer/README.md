# [`homer`](https://charts.pascaliske.dev/charts/homer/)

> A Helm chart for Homer

[![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ](https://charts.pascaliske.dev/charts/homer/)[![Version: 2.2.0](https://img.shields.io/badge/Version-2.2.0-informational?style=flat-square) ](https://charts.pascaliske.dev/charts/homer/)[![AppVersion: v25.05.2](https://img.shields.io/badge/AppVersion-v25.05.2-informational?style=flat-square) ](https://charts.pascaliske.dev/charts/homer/)

* <https://github.com/pascaliske/helm-charts>
* <https://github.com/bastienwirtz/homer>

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
helm install homer pascaliske/homer
```

To uninstall this chart simply run the following command:

```sh
helm delete homer
```

## Values

The following values can be used to adjust the helm chart.

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| additionalContainers | object | `{}` | Specify any additional containers here as dictionary items - each should have it's own key. |
| affinity | object | `{}` | Pod-level affinity. More info [here](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#scheduling). |
| certificate.annotations | object | `{}` | Additional annotations for the certificate object. |
| certificate.create | bool | `false` | Create an Certificate object for the exposed chart. |
| certificate.dnsNames | list | `[]` | List of subject alternative names for the certificate. |
| certificate.issuerRef.kind | string | `"ClusterIssuer"` | Type of the referenced certificate issuer. Can be "Issuer" or "ClusterIssuer". |
| certificate.issuerRef.name | string | `""` | Name of the referenced certificate issuer. |
| certificate.labels | object | `{}` | Additional labels for the certificate object. |
| certificate.secretName | string | `""` | Name of the secret in which the certificate will be stored. Defaults to the first item in dnsNames. |
| configMap.annotations | object | `{}` | Additional annotations for the config map object. |
| configMap.config | string | `"title: Dashboard\nservices: {}\n"` | String containing the [configuration of homer](https://github.com/bastienwirtz/homer/blob/main/docs/configuration.md). |
| configMap.create | bool | `true` | Create a new config map object. |
| configMap.existingConfigMap | string | `""` | Use an existing config map object. |
| configMap.key | string | `"config.yml"` | Specify a different key inside config map object. |
| configMap.labels | object | `{}` | Additional labels for the config map object. |
| configMap.mountPath | string | `"/www/assets"` | Mount path of the config map object. |
| controller.annotations | object | `{}` | Additional annotations for the controller object. |
| controller.enabled | bool | `true` | Create a workload for this chart. |
| controller.kind | string | `"Deployment"` | Type of the workload object. |
| controller.labels | object | `{}` | Additional labels for the controller object. |
| controller.replicas | int | `1` | The number of replicas. |
| controller.updateStrategy | object | `{}` | The controller update strategy. Currently only applies to controllers of kind `Deployment`. |
| env[0] | object | `{"name":"TZ","value":"UTC"}` | Timezone for the container. |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` | The pull policy for the controller. |
| image.registry | string | `"ghcr.io"` | The registry to pull the image from. |
| image.repository | string | `"bastienwirtz/homer"` | The repository to pull the image from. |
| image.tag | string | `.Chart.AppVersion` | The docker tag, if left empty chart's appVersion will be used. |
| ingressRoute.annotations | object | `{}` | Additional annotations for the ingress route object. |
| ingressRoute.create | bool | `false` | Create an IngressRoute object for exposing this chart. |
| ingressRoute.entryPoints | list | `[]` | List of [entry points](https://doc.traefik.io/traefik/routing/routers/#entrypoints) on which the ingress route will be available. |
| ingressRoute.labels | object | `{}` | Additional labels for the ingress route object. |
| ingressRoute.middlewares | list | `[]` | List of [middleware objects](https://doc.traefik.io/traefik/routing/providers/kubernetes-crd/#kind-middleware) for the ingress route. |
| ingressRoute.rule | string | `""` | [Matching rule](https://doc.traefik.io/traefik/routing/routers/#rule) for the underlying router. |
| ingressRoute.tlsSecretName | string | `""` | Use an existing secret containing the TLS certificate. |
| nameOverride | string | `""` |  |
| ports.http.enabled | bool | `true` | Enable the port inside the `controller` and `Service` objects. |
| ports.http.nodePort | string | `nil` | The external port used if `.service.type` == `NodePort`. |
| ports.http.port | int | `8080` | The port used as internal port and cluster-wide port if `.service.type` == `ClusterIP`. |
| ports.http.protocol | string | `"TCP"` | The protocol used for the service. |
| resources | object | `{}` | Compute resources used by the container. More info [here](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/). |
| securityContext | object | `{"runAsGroup":1000,"runAsNonRoot":true,"runAsUser":1000}` | Pod-level security attributes. More info [here](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#security-context). |
| securityContext.runAsGroup | int | `1000` | Specify the group ID the application will run as |
| securityContext.runAsNonRoot | bool | `true` | Enable validation that the container must run as non-root user |
| securityContext.runAsUser | int | `1000` | Specify the user ID the application will run as |
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

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| pascaliske | <info@pascaliske.dev> | <https://pascaliske.dev> |

## License

[MIT](../LICENSE.md) – © 2025 [Pascal Iske](https://pascaliske.dev)
