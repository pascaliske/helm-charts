# [`fritzbox-exporter`](https://github.com/pascaliske/helm-charts/tree/master/charts/fritzbox-exporter)

> A Helm chart for fritzbox-exporter

[![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/fritzbox-exporter)[![Version: 1.0.1](https://img.shields.io/badge/Version-1.0.1-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/fritzbox-exporter)[![AppVersion: 1.0](https://img.shields.io/badge/AppVersion-1.0-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/fritzbox-exporter)

* <https://github.com/pascaliske/helm-charts>
* <https://git.r3ktm8.de/SeaLife-Docker/fritzbox_exporter>

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
helm install fritzbox-exporter pascaliske/fritzbox-exporter
```

To uninstall this chart simply run the following command:

```sh
helm delete fritzbox-exporter
```

## Values

The following values can be used to adjust the helm chart.

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| deployment.annotations | object | `{}` | Additional annotations for the deployment object. |
| deployment.enabled | bool | `true` | Create a workload for this chart. |
| deployment.kind | string | `"Deployment"` | Type of the workload object. |
| deployment.labels | object | `{}` | Additional labels for the deployment object. |
| deployment.replicas | int | `1` | The number of replicas. |
| env[0] | object | `{"name":"TZ","value":"UTC"}` | Timezone for the container. |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` | The pull policy for the deployment. |
| image.repository | string | `"sealife/fritzbox-exporter"` | The repository to pull the image from. |
| image.tag | string | `"1.0"` | The docker tag, if left empty chart's appVersion will be used. |
| nameOverride | string | `""` |  |
| ports.metrics.enabled | bool | `true` | Enable the port inside the `Deployment` and `Service` objects. |
| ports.metrics.port | int | `8765` | The port used as internal port and cluster-wide port if `.service.type` == `ClusterIP`. |
| ports.metrics.protocol | string | `"TCP"` | The protocol used for the service. |
| resources | object | `{}` | Compute resources used by the container. More info [here](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/). |
| service.annotations | object | `{}` | Additional annotations for the service object. |
| service.enabled | bool | `true` | Create a service for exposing this chart. |
| service.labels | object | `{}` | Additional labels for the service object. |
| service.type | string | `"ClusterIP"` | The service type used. |
| serviceAccount.name | string | `""` | Specify the service account used for the deployment. |

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| pascaliske | info@pascaliske.dev | https://pascaliske.dev |

## License

[MIT](../LICENSE.md) – © 2022 [Pascal Iske](https://pascaliske.dev)
