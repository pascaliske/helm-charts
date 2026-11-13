# [`unbound`](https://charts.pascaliske.dev/charts/unbound/)

> A Helm chart for unbound DNS resolver.

[![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ](https://charts.pascaliske.dev/charts/unbound/)[![Version: 2.1.0](https://img.shields.io/badge/Version-2.1.0-informational?style=flat-square) ](https://charts.pascaliske.dev/charts/unbound/)[![AppVersion: 0.2.1](https://img.shields.io/badge/AppVersion-0.2.1-informational?style=flat-square) ](https://charts.pascaliske.dev/charts/unbound/)

* <https://github.com/pascaliske/helm-charts>
* <https://github.com/pascaliske/docker-unbound>
* <https://github.com/NLnetLabs/unbound>
* <https://github.com/letsencrypt/unbound_exporter>

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
helm install unbound pascaliske/unbound
```

To uninstall this chart simply run the following command:

```sh
helm delete unbound
```

## Metrics

The optional [Let's Encrypt Unbound exporter](https://github.com/letsencrypt/unbound_exporter) runs as a sidecar and exposes metrics on port 9167 by default. It is disabled by default. When enabled, the chart enables Unbound remote control on the pod's loopback interface and creates a ClusterIP Service for the metrics endpoint. If you change `metricsExporter.port`, configure your scraper to use the new port. The default image is community-packaged at [cyb3rjak3/unbound-exporter](https://hub.docker.com/r/cyb3rjak3/unbound-exporter); override `metricsExporter.image` to use another image built from the upstream exporter.

```yaml
metricsExporter:
  enabled: true
```

For Prometheus Operator, install its Custom Resource Definitions and enable the ServiceMonitor. Set `serviceMonitor.labels` to match the labels selected by your Prometheus instance. For example, kube-prometheus-stack commonly selects the `release` label:

```yaml
metricsExporter:
  enabled: true
serviceMonitor:
  enabled: true
  labels:
    release: kube-prometheus-stack
```

The chart sets the ServiceMonitor target namespace to the Helm release namespace. The Prometheus instance's `serviceMonitorNamespaceSelector` must also include that namespace. Check the Prometheus custom resource and configure its ServiceMonitor label and namespace selectors to match your installation.

If the ServiceMonitor CRD is not installed when you install this chart, Helm omits the ServiceMonitor. Installing the CRD later does not create the resource automatically. After installing the CRD, upgrade the release with both required values enabled:

```sh
helm upgrade <release> pascaliske/unbound \
  --namespace <namespace> \
  --reuse-values \
  --set metricsExporter.enabled=true \
  --set serviceMonitor.enabled=true
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
| controller.updateStrategy.rollingUpdate.maxSurge | int | `1` | Specifies the maximum number of Pods that can be created over the desired number of Pods. |
| controller.updateStrategy.rollingUpdate.maxUnavailable | int | `0` | Specifies the maximum number of Pods that can be unavailable during the update process. |
| controller.updateStrategy.type | string | `"RollingUpdate"` | Strategy used to replace old pods. |
| env[0] | object | `{"name":"TZ","value":"UTC"}` | Timezone for the container. |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` | The pull policy for the controller. |
| image.registry | string | `"ghcr.io"` | The registry to pull the image from. |
| image.repository | string | `"pascaliske/unbound"` | The repository to pull the image from. |
| image.tag | string | `.Chart.AppVersion` | The docker tag, if left empty chart's appVersion will be used. |
| metricsExporter.enabled | bool | `false` | Run the Unbound Prometheus exporter as a sidecar container. |
| metricsExporter.image.pullPolicy | string | `"IfNotPresent"` | The pull policy for the exporter. |
| metricsExporter.image.repository | string | `"cyb3rjak3/unbound-exporter"` | The exporter image repository. |
| metricsExporter.image.tag | string | `"0.6.0"` | The exporter image tag. |
| metricsExporter.port | int | `9167` | Port used by the exporter and metrics service. |
| metricsExporter.resources | object | `{}` | Compute resources used by the exporter container. |
| metricsExporter.securityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"readOnlyRootFilesystem":true,"runAsNonRoot":true,"runAsUser":65534}` | Container security attributes for the exporter. |
| nameOverride | string | `""` |  |
| resources | object | `{}` | Compute resources used by the container. More info [here](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/). |
| service.dns.annotations | object | `{}` | Additional annotations for the service object. |
| service.dns.enabled | bool | `true` | Create a service for DNS endpoints. |
| service.dns.labels | object | `{}` | Additional labels for the service object. |
| service.dns.nodePort | string | `nil` | If the service is NodePort, specify a node port value here. |
| service.dns.port | int | `5053` | The service port used. |
| service.dns.single | bool | `true` | Combine TCP and UDP endpoints in a single service. |
| service.dns.type | string | `"ClusterIP"` | The service type used. |
| service.metrics.annotations | object | `{}` | Additional annotations for the metrics service. |
| service.metrics.labels | object | `{}` | Additional labels for the metrics service. |
| serviceAccount.annotations | object | `{}` | Additional annotations for the role and role binding objects. |
| serviceAccount.create | bool | `true` | Create a `ServiceAccount` object. |
| serviceAccount.labels | object | `{}` | Additional labels for the role and role binding objects. |
| serviceAccount.name | string | `""` | Specify the service account used for the controller. |
| serviceMonitor.annotations | object | `{}` | Additional annotations for the ServiceMonitor. |
| serviceMonitor.enabled | bool | `false` | Create a ServiceMonitor for Prometheus Operator. |
| serviceMonitor.interval | string | `"30s"` | How frequently Prometheus scrapes the exporter. |
| serviceMonitor.labels | object | `{}` | Additional labels for the ServiceMonitor. |
| serviceMonitor.timeout | string | `"10s"` | Timeout for individual scrapes. |
| tolerations | list | `[]` | Pod-level tolerations. More info [here](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#scheduling). |

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| pascaliske | <info@pascaliske.dev> | <https://pascaliske.dev> |

## License

[MIT](../LICENSE.md) – © 2026 [Pascal Iske](https://pascaliske.dev)
