# [`cloudflared`](https://github.com/pascaliske/helm-charts/tree/master/charts/cloudflared)

> A Helm chart for cloudflared DNS over HTTPS tunnel.

[![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/cloudflared)[![Version: 1.2.2](https://img.shields.io/badge/Version-1.2.2-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/cloudflared)[![AppVersion: 2022.5.0](https://img.shields.io/badge/AppVersion-2022.5.0-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/cloudflared)

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
| deployment.annotations | object | `{}` | Additional annotations for the deployment object. |
| deployment.enabled | bool | `true` | Create a workload for this chart. |
| deployment.kind | string | `"Deployment"` | Type of the workload object. |
| deployment.labels | object | `{}` | Additional labels for the deployment object. |
| deployment.replicas | int | `1` | The number of replicas. |
| deployment.strategy.rollingUpdate.maxSurge | int | `1` | Specifies the maximum number of Pods that can be created over the desired number of Pods. |
| deployment.strategy.rollingUpdate.maxUnavailable | int | `0` | Specifies the maximum number of Pods that can be unavailable during the update process. |
| deployment.strategy.type | string | `"RollingUpdate"` | Strategy used to replace old pods. |
| env[0] | object | `{"name":"TZ","value":"UTC"}` | Timezone for the container. |
| env[1] | object | `{"name":"TUNNEL_DNS_UPSTREAM","value":"https://1.1.1.1/dns-query,https://1.0.0.1/dns-query"}` | Upstream DNS provider used for the DNS-over-HTTPS tunnel. |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` | The pull policy for the deployment. |
| image.repository | string | `"ghcr.io/crazy-max/cloudflared"` | The repository to pull the image from. |
| image.tag | string | `"2022.3.4"` | The docker tag, if left empty chart's appVersion will be used. |
| nameOverride | string | `""` |  |
| resources | object | `{}` | Compute resources used by the container. More info [here](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/). |
| service.dns.annotations | object | `{}` | Additional annotations for the service object. |
| service.dns.enabled | bool | `true` | Create a service for DNS endpoints. |
| service.dns.labels | object | `{}` | Additional labels for the service object. |
| service.dns.nodePort | string | `nil` | If the service is NodePort, specify a node port value here. |
| service.dns.port | int | `5053` | The service port used. |
| service.dns.type | string | `"ClusterIP"` | The service type used. |
| service.metrics.annotations | object | `{}` | Additional annotations for the service object. |
| service.metrics.enabled | bool | `false` | Create a service for the metrics endpoint. |
| service.metrics.labels | object | `{}` | Additional labels for the service object. |
| service.metrics.nodePort | string | `nil` | If the service is NodePort, specify a node port value here. |
| service.metrics.port | int | `49312` | The service port used. |
| service.metrics.type | string | `"ClusterIP"` | The service type used. |
| serviceAccount.name | string | `""` | Specify the service account used for the deployment. |
| tolerations | object | `{}` | Pod-level tolerations. More info [here](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#scheduling). |

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| pascaliske | <info@pascaliske.dev> | <https://pascaliske.dev> |

## License

[MIT](../LICENSE.md) – © 2022 [Pascal Iske](https://pascaliske.dev)
