# [`cloudflare-dyndns`](https://charts.pascaliske.dev/charts/cloudflare-dyndns/)

> A Helm chart for a CronJob based Cloudflare DynDNS client.

[![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ](https://charts.pascaliske.dev/charts/cloudflare-dyndns/)[![Version: 0.1.2](https://img.shields.io/badge/Version-0.1.2-informational?style=flat-square) ](https://charts.pascaliske.dev/charts/cloudflare-dyndns/)[![AppVersion: 0.1.1](https://img.shields.io/badge/AppVersion-0.1.1-informational?style=flat-square) ](https://charts.pascaliske.dev/charts/cloudflare-dyndns/)

* <https://github.com/pascaliske/helm-charts>
* <https://github.com/pascaliske/docker-cloudflare-dyndns>

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
helm install cloudflare-dyndns pascaliske/cloudflare-dyndns
```

To uninstall this chart simply run the following command:

```sh
helm delete cloudflare-dyndns
```

## Values

The following values can be used to adjust the helm chart.

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| cronJob.annotations | object | `{}` | Additional annotations for the cronjob object. |
| cronJob.enabled | bool | `true` | Create a cron job to update the DNS zone. |
| cronJob.failedJobsHistoryLimit | int | `1` | The number of failed finished jobs to retain. |
| cronJob.labels | object | `{}` | Additional labels for the cronjob object. |
| cronJob.nameservers | list | `[]` | The nameservers used to resolve ip service domain. Leave empty to inherit from cluster/node. |
| cronJob.schedule | string | `"30 * * * *"` | Update schedule for the cron job. |
| cronJob.successfulJobsHistoryLimit | int | `3` | The number of successful finished jobs to retain. |
| cronJob.suspend | bool | `false` | Enable/disable the cron job schedule quickly. |
| env[0] | object | `{"name":"TZ","value":"UTC"}` | Timezone for the container. |
| env[1] | object | `{"name":"IP_SERVICE","value":"ifconfig.co"}` | The IP service used to determine the current public IP. |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` | The pull policy for the deployment. |
| image.registry | string | `"ghcr.io"` | The registry to pull the image from. |
| image.repository | string | `"pascaliske/cloudflare-dyndns"` | The repository to pull the image from. |
| image.tag | string | `.Chart.AppVersion` | The docker tag, if left empty chart's appVersion will be used. |
| nameOverride | string | `""` |  |
| resources | object | `{}` | Compute resources used by the container. More info [here](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/). |
| secret.annotations | object | `{}` | Additional annotations for the secret object. |
| secret.create | bool | `true` | Create a new secret containing the token. |
| secret.existingSecret | string | `""` | Use an existing secret to store the token. |
| secret.labels | object | `{}` | Additional labels for the secret object. |
| secret.token | string | `""` | Token used when not using an existing secret. |
| serviceAccount.annotations | object | `{}` | Additional annotations for the role and role binding objects. |
| serviceAccount.create | bool | `true` | Create a `ServiceAccount` object. |
| serviceAccount.labels | object | `{}` | Additional labels for the role and role binding objects. |
| serviceAccount.name | string | `""` | Specify the service account used for the controller. |

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| pascaliske | <info@pascaliske.dev> | <https://pascaliske.dev> |

## License

[MIT](../LICENSE.md) – © 2025 [Pascal Iske](https://pascaliske.dev)
