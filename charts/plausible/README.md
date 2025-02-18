# [`plausible`](https://charts.pascaliske.dev/charts/plausible/)

> A Helm chart for Plausible Community Edition

[![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ](https://charts.pascaliske.dev/charts/plausible/)[![Version: 2.0.0](https://img.shields.io/badge/Version-2.0.0-informational?style=flat-square) ](https://charts.pascaliske.dev/charts/plausible/)[![AppVersion: v2.1.5](https://img.shields.io/badge/AppVersion-v2.1.5-informational?style=flat-square) ](https://charts.pascaliske.dev/charts/plausible/)

* <https://github.com/pascaliske/helm-charts>
* <https://github.com/plausible/community-edition>
* <https://github.com/plausible/analytics>
* <https://plausible.io>

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
helm install plausible pascaliske/plausible
```

To uninstall this chart simply run the following command:

```sh
helm delete plausible
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
| controller.annotations | object | `{}` | Additional annotations for the controller object. |
| controller.enabled | bool | `true` | Create a workload for this chart. |
| controller.kind | string | `"Deployment"` | Type of the workload object. |
| controller.labels | object | `{}` | Additional labels for the controller object. |
| controller.replicas | int | `1` | The number of replicas. |
| env[0] | object | `{"name":"TZ","value":"UTC"}` | Timezone for the container. |
| fullnameOverride | string | `""` |  |
| geoip.accountId | string | `""` | Required. MaxMind account ID. |
| geoip.enabled | bool | `false` | Enable support for MaxMinds GeoLite2 database. |
| geoip.frequency | int | `168` | Optional. Database update frequency. Defaults to "168" which equals 7 days. |
| geoip.image.repository | string | `"ghcr.io/maxmind/geoipupdate"` | The repository for the geoip image. |
| geoip.image.tag | string | `"v7.1.0"` | The docker tag for the geoip image. |
| geoip.licenseKey | string | `""` | Required. Case-sensitive MaxMind license key. |
| geoip.mountPath | string | `"/geoip"` | Optional. Specify the database mount path inside the containers. |
| image.pullPolicy | string | `"IfNotPresent"` | The pull policy for the controller. |
| image.registry | string | `"ghcr.io"` | The registry to pull the image from. |
| image.repository | string | `"plausible/community-edition"` | The repository to pull the image from. |
| image.tag | string | `.Chart.AppVersion` | The docker tag, if left empty chart's appVersion will be used. |
| ingressRoute.annotations | object | `{}` | Additional annotations for the ingress route object. |
| ingressRoute.create | bool | `false` | Create an IngressRoute object for exposing this chart. |
| ingressRoute.entryPoints | list | `[]` | List of [entry points](https://doc.traefik.io/traefik/routing/routers/#entrypoints) on which the ingress route will be available. |
| ingressRoute.labels | object | `{}` | Additional labels for the ingress route object. |
| ingressRoute.middlewares | list | `[]` | List of [middleware objects](https://doc.traefik.io/traefik/routing/providers/kubernetes-crd/#kind-middleware) for the ingress route. |
| ingressRoute.rule | string | `""` | [Matching rule](https://doc.traefik.io/traefik/routing/routers/#rule) for the underlying router. |
| ingressRoute.tlsSecretName | string | `""` | Use an existing secret containing the TLS certificate. |
| nameOverride | string | `""` |  |
| ports.http.enabled | bool | `true` | Enable the port inside the `Deployment` and `Service` objects. |
| ports.http.nodePort | string | `nil` | The external port used if `.service.type` == `NodePort`. |
| ports.http.port | int | `8000` | The port used as internal port and cluster-wide port if `.service.type` == `ClusterIP`. |
| ports.http.protocol | string | `"TCP"` | The protocol used for the service. |
| resources | object | `{}` | Compute resources used by the container. More info [here](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/). |
| secret.annotations | object | `{}` | Additional annotations for the secret object. |
| secret.create | bool | `true` | Create a new secret object. |
| secret.existingSecret | string | `""` | Use an existing secret object. |
| secret.labels | object | `{}` | Additional labels for the secret object. |
| secret.values | object | `{"SECRET_KEY_BASE":"{{ randAlphaNum 42 | b64enc }}","TOTP_VAULT_KEY":"{{ randAlphaNum 32 | b64enc }}"}` | Secret values used when not using an existing secret. Helm templates are supported for values. |
| secret.values.SECRET_KEY_BASE | string | `"{{ randAlphaNum 42 | b64enc }}"` | Secret key for session tokens. |
| secret.values.TOTP_VAULT_KEY | string | `"{{ randAlphaNum 32 | b64enc }}"` | Encryption token for TOTP secrets. |
| securityContext | object | `{}` | Pod-level security attributes. More info [here](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#security-context). |
| service.annotations | object | `{}` | Additional annotations for the service object. |
| service.clusterIP | string | `""` | ClusterIP used if service type is `ClusterIP`. |
| service.enabled | bool | `true` | Create a service for exposing this chart. |
| service.labels | object | `{}` | Additional labels for the service object. |
| service.loadBalancerIP | string | `""` | LoadBalancerIP if service type is `LoadBalancer`. |
| service.loadBalancerSourceRanges | list | `[]` | Allowed addresses when service type is `LoadBalancer`. |
| service.type | string | `"ClusterIP"` | The service type used. |
| serviceAccount.annotations | object | `{}` | Additional annotations for the service account object. |
| serviceAccount.create | bool | `true` | Create a `ServiceAccount` object. |
| serviceAccount.labels | object | `{}` | Additional labels for the service account object. |
| serviceAccount.name | string | `""` | Specify the service account used for the controller. |
| serviceMonitor.annotations | object | `{}` | Additional annotations for the service monitor object. |
| serviceMonitor.enabled | bool | `false` | Create a service monitor for prometheus operator. |
| serviceMonitor.interval | string | `"30s"` | How frequently the exporter should be scraped. |
| serviceMonitor.labels | object | `{}` | Additional labels for the service monitor object. |
| serviceMonitor.timeout | string | `"10s"` | Timeout value for individual scrapes. |
| tolerations | list | `[]` | Pod-level tolerations. More info [here](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#scheduling). |

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| pascaliske | <info@pascaliske.dev> | <https://pascaliske.dev> |

## License

[MIT](../LICENSE.md) – © 2025 [Pascal Iske](https://pascaliske.dev)
