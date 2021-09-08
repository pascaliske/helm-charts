# [`cloudflared`](https://github.com/pascaliske/helm-charts)

> A Helm chart for cloudflared DNS over HTTPS tunnel.

[![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts)[![Version: 0.0.7](https://img.shields.io/badge/Version-0.0.7-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts)[![AppVersion: 2021.8.7](https://img.shields.io/badge/AppVersion-2021.8.7-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts)

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
| env[0].name | string | `"TZ"` |  |
| env[0].value | string | `"UTC"` |  |
| env[1].name | string | `"TUNNEL_DNS_UPSTREAM"` |  |
| env[1].value | string | `"https://1.1.1.1/dns-query,https://1.0.0.1/dns-query"` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"crazymax/cloudflared"` |  |
| image.tag | string | `"2021.8.7"` |  |
| nameOverride | string | `""` |  |
| ports.dns.enabled | bool | `true` |  |
| ports.dns.nodePort | string | `nil` |  |
| ports.dns.port | int | `5053` |  |
| ports.dns.protocol | string | `"UDP"` |  |
| ports.metrics.enabled | bool | `false` |  |
| ports.metrics.nodePort | string | `nil` |  |
| ports.metrics.port | int | `49312` |  |
| ports.metrics.protocol | string | `"TCP"` |  |
| resources | object | `{}` |  |
| service.annotations | object | `{}` |  |
| service.enabled | bool | `true` |  |
| service.labels | object | `{}` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.name | string | `""` |  |

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| pascaliske | info@pascaliske.dev | https://pascaliske.dev |

## License

[MIT](LICENSE.md) – © 2021 [Pascal Iske](https://pascaliske.dev)
