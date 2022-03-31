# [`digitalocean-dyndns`](https://github.com/pascaliske/helm-charts/tree/master/charts/digitalocean-dyndns)

> A Helm chart for a CronJob based DigitalOcean DynDNS client.

[![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/digitalocean-dyndns)[![Version: 0.2.0](https://img.shields.io/badge/Version-0.2.0-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/digitalocean-dyndns)[![AppVersion: 0.0.2](https://img.shields.io/badge/AppVersion-0.0.2-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/digitalocean-dyndns)

* <https://github.com/pascaliske/helm-charts>
* <https://github.com/pascaliske/docker-digitalocean-dyndns>

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
helm install digitalocean-dyndns pascaliske/digitalocean-dyndns
```

To uninstall this chart simply run the following command:

```sh
helm delete digitalocean-dyndns
```

## Values

The following values can be used to adjust the helm chart.

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| cronJob.annotations | object | `{}` |  |
| cronJob.enabled | bool | `true` |  |
| cronJob.failedJobsHistoryLimit | int | `1` |  |
| cronJob.labels | object | `{}` |  |
| cronJob.schedule | string | `"30 * * * *"` |  |
| cronJob.successfulJobsHistoryLimit | int | `3` |  |
| cronJob.suspend | bool | `false` |  |
| env[0].name | string | `"TZ"` |  |
| env[0].value | string | `"UTC"` |  |
| env[1].name | string | `"IP_SERVICE"` |  |
| env[1].value | string | `"ifconfig.co"` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"ghcr.io/pascaliske/digitalocean-dyndns"` |  |
| image.tag | string | `"0.0.2"` |  |
| nameOverride | string | `""` |  |
| resources | object | `{}` |  |
| secret.annotations | object | `{}` |  |
| secret.create | bool | `true` |  |
| secret.existingSecret | string | `""` |  |
| secret.labels | object | `{}` |  |
| secret.token | string | `""` |  |

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| pascaliske | info@pascaliske.dev | https://pascaliske.dev |

## License

[MIT](../LICENSE.md) – © 2022 [Pascal Iske](https://pascaliske.dev)
