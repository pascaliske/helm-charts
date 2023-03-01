# [`cloudflared`](https://charts.pascaliske.dev/charts/cloudflared/)

> A Helm chart for cloudflared DNS over HTTPS tunnel.

[![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ](https://charts.pascaliske.dev/charts/cloudflared/)[![Version: 2.0.2](https://img.shields.io/badge/Version-2.0.2-informational?style=flat-square) ](https://charts.pascaliske.dev/charts/cloudflared/)[![AppVersion: 2022.12.1](https://img.shields.io/badge/AppVersion-2022.12.1-informational?style=flat-square) ](https://charts.pascaliske.dev/charts/cloudflared/)

* <https://github.com/pascaliske/helm-charts>
* <https://github.com/crazy-max/docker-cloudflared>

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
helm install cloudflared pascaliske/cloudflared
```

To uninstall this chart simply run the following command:

```sh
helm delete cloudflared
```

## Values

The following values can be used to adjust the helm chart.

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Pod-level affinity. More info [here](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#scheduling). |
| controller.annotations | object | `{}` | Additional annotations for the controller object. |
| controller.enabled | bool | `true` | Create a workload for this chart. |
| controller.kind | string | `"Deployment"` | Type of the workload object. |
| controller.labels | object | `{}` | Additional labels for the controller object. |
| controller.replicas | int | `1` | The number of replicas. |
| controller.strategy.rollingUpdate.maxSurge | int | `1` | Specifies the maximum number of Pods that can be created over the desired number of Pods. |
| controller.strategy.rollingUpdate.maxUnavailable | int | `0` | Specifies the maximum number of Pods that can be unavailable during the update process. |
| controller.strategy.type | string | `"RollingUpdate"` | Strategy used to replace old pods. |
| env[0] | object | `{"name":"TZ","value":"UTC"}` | Timezone for the container. |
| env[1] | object | `{"name":"TUNNEL_DNS_UPSTREAM","value":"https://1.1.1.1/dns-query,https://1.0.0.1/dns-query"}` | Upstream DNS provider used for the DNS-over-HTTPS tunnel. |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` | The pull policy for the controller. |
| image.repository | string | `"ghcr.io/crazy-max/cloudflared"` | The repository to pull the image from. |
| image.tag | string | `.Chart.AppVersion` | The docker tag, if left empty chart's appVersion will be used. |
| nameOverride | string | `""` |  |
| resources | object | `{}` | Compute resources used by the container. More info [here](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/). |
| service.dns.annotations | object | `{}` | Additional annotations for the service object. |
| service.dns.enabled | bool | `true` | Create a service for DNS endpoints. |
| service.dns.labels | object | `{}` | Additional labels for the service object. |
| service.dns.nodePort | string | `nil` | If the service is NodePort, specify a node port value here. |
| service.dns.port | int | `5053` | The service port used. |
| service.dns.single | bool | `true` | Combine TCP and UDP endpoints in a single service. |
| service.dns.type | string | `"ClusterIP"` | The service type used. |
| service.metrics.annotations | object | `{}` | Additional annotations for the service object. |
| service.metrics.enabled | bool | `false` | Create a service for the metrics endpoint. |
| service.metrics.labels | object | `{}` | Additional labels for the service object. |
| service.metrics.nodePort | string | `nil` | If the service is NodePort, specify a node port value here. |
| service.metrics.port | int | `49312` | The service port used. |
| service.metrics.type | string | `"ClusterIP"` | The service type used. |
| serviceAccount.name | string | `""` | Specify the service account used for the controller. |
| serviceMonitor.annotations | object | `{}` | Additional annotations for the service monitor object. |
| serviceMonitor.enabled | bool | `false` | Create a service monitor for prometheus operator. |
| serviceMonitor.interval | string | `"30s"` | How frequently the exporter should be scraped. |
| serviceMonitor.labels | object | `{}` | Additional labels for the service monitor object. |
| serviceMonitor.timeout | string | `"10s"` | Timeout value for individual scrapes. |
| tolerations | object | `{}` | Pod-level tolerations. More info [here](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#scheduling). |

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| pascaliske | <info@pascaliske.dev> | <https://pascaliske.dev> |

## License

[MIT](../LICENSE.md) – © 2023 [Pascal Iske](https://pascaliske.dev)
