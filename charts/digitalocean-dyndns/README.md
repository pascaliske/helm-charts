# [`digitalocean-dyndns`](https://github.com/pascaliske/helm-charts/tree/master/charts/digitalocean-dyndns)

> A Helm chart for a CronJob based DigitalOcean DynDNS client.

[![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/digitalocean-dyndns)[![Version: 0.2.2](https://img.shields.io/badge/Version-0.2.2-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/digitalocean-dyndns)[![AppVersion: 0.0.3](https://img.shields.io/badge/AppVersion-0.0.3-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/digitalocean-dyndns)

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
| cronJob.annotations | object | `{}` | Additional annotations for the cronjob object. |
| cronJob.enabled | bool | `true` | Create a cron job to update the DNS zone. |
| cronJob.failedJobsHistoryLimit | int | `1` | The number of failed finished jobs to retain. |
| cronJob.labels | object | `{}` | Additional labels for the cronjob object. |
| cronJob.schedule | string | `"30 * * * *"` | Update schedule for the cron job. |
| cronJob.successfulJobsHistoryLimit | int | `3` | The number of successful finished jobs to retain. |
| cronJob.suspend | bool | `false` | Enable/disable the cron job schedule quickly. |
| env[0] | object | `{"name":"TZ","value":"UTC"}` | Timezone for the container. |
| env[1] | object | `{"name":"IP_SERVICE","value":"ifconfig.co"}` | The IP service used to determine the current public IP. |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` | The pull policy for the deployment. |
| image.repository | string | `"ghcr.io/pascaliske/digitalocean-dyndns"` | The repository to pull the image from. |
| image.tag | string | `"0.0.3"` | The docker tag, if left empty chart's appVersion will be used. |
| nameOverride | string | `""` |  |
| resources | object | `{}` | Compute resources used by the container. More info [here](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/). |
| secret.annotations | object | `{}` | Additional annotations for the secret object. |
| secret.create | bool | `true` | Create a new secret containing the token. |
| secret.existingSecret | string | `""` | Use an existing secret to store the token. |
| secret.labels | object | `{}` | Additional labels for the secret object. |
| secret.token | string | `""` | Token used when not using an existing secret. |

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| pascaliske | info@pascaliske.dev | https://pascaliske.dev |

## License

[MIT](../LICENSE.md) – © 2022 [Pascal Iske](https://pascaliske.dev)
