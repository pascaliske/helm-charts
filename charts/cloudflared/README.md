# [`cloudflared`](https://github.com/pascaliske/helm-charts/tree/master/charts/cloudflared)

> A Helm chart for cloudflared DNS over HTTPS tunnel.

[![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/cloudflared)[![Version: 1.2.0](https://img.shields.io/badge/Version-1.2.0-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/cloudflared)[![AppVersion: 2022.3.0](https://img.shields.io/badge/AppVersion-2022.3.0-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/cloudflared)

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
| deployment.annotations | object | `{}` |  |
| deployment.enabled | bool | `true` |  |
| deployment.kind | string | `"Deployment"` |  |
| deployment.labels | object | `{}` |  |
| deployment.replicas | int | `1` |  |
| deployment.strategy.rollingUpdate.maxSurge | int | `1` |  |
| deployment.strategy.rollingUpdate.maxUnavailable | int | `0` |  |
| deployment.strategy.type | string | `"RollingUpdate"` |  |
| env[0].name | string | `"TZ"` |  |
| env[0].value | string | `"UTC"` |  |
| env[1].name | string | `"TUNNEL_DNS_UPSTREAM"` |  |
| env[1].value | string | `"https://1.1.1.1/dns-query,https://1.0.0.1/dns-query"` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"ghcr.io/crazy-max/cloudflared"` |  |
| image.tag | string | `"2022.3.0"` |  |
| nameOverride | string | `""` |  |
| resources | object | `{}` |  |
| service.dns.annotations | object | `{}` |  |
| service.dns.enabled | bool | `true` |  |
| service.dns.labels | object | `{}` |  |
| service.dns.nodePort | string | `nil` |  |
| service.dns.port | int | `5053` |  |
| service.dns.type | string | `"ClusterIP"` |  |
| service.metrics.annotations | object | `{}` |  |
| service.metrics.enabled | bool | `false` |  |
| service.metrics.labels | object | `{}` |  |
| service.metrics.nodePort | string | `nil` |  |
| service.metrics.port | int | `49312` |  |
| service.metrics.type | string | `"ClusterIP"` |  |
| serviceAccount.name | string | `""` |  |

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| pascaliske | info@pascaliske.dev | https://pascaliske.dev |

## License

[MIT](../LICENSE.md) – © 2022 [Pascal Iske](https://pascaliske.dev)
