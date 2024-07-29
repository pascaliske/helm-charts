# [`redis`](https://charts.pascaliske.dev/charts/redis/)

> A Helm chart for Redis

[![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ](https://charts.pascaliske.dev/charts/redis/)[![Version: 1.4.0](https://img.shields.io/badge/Version-1.4.0-informational?style=flat-square) ](https://charts.pascaliske.dev/charts/redis/)[![AppVersion: 7.2.5](https://img.shields.io/badge/AppVersion-7.2.5-informational?style=flat-square) ](https://charts.pascaliske.dev/charts/redis/)

* <https://github.com/pascaliske/helm-charts>
* <https://github.com/docker-library/redis>
* <https://github.com/redis/redis>
* <https://redis.io>

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
helm install redis pascaliske/redis
```

To uninstall this chart simply run the following command:

```sh
helm delete redis
```

## Values

The following values can be used to adjust the helm chart.

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| controller.annotations | object | `{}` | Additional annotations for the controller object. |
| controller.enabled | bool | `true` | Create a workload for this chart. |
| controller.kind | string | `"StatefulSet"` | Type of the workload object. |
| controller.labels | object | `{}` | Additional labels for the controller object. |
| controller.replicas | int | `1` | The number of replicas. |
| env[0] | object | `{"name":"TZ","value":"UTC"}` | Timezone for the container. |
| extraArgs | list | `[]` | List of extra arguments for the container. |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` | The pull policy for the controller. |
| image.repository | string | `"redis"` | The repository to pull the image from. |
| image.tag | string | `.Chart.AppVersion` | The docker tag, if left empty chart's appVersion will be used. |
| nameOverride | string | `""` |  |
| persistentVolumeClaim.accessMode | string | `"ReadWriteOnce"` | Access mode of the persistent volume claim object. |
| persistentVolumeClaim.annotations | object | `{}` | Additional annotations for the persistent volume claim object. |
| persistentVolumeClaim.create | bool | `true` | Create a new persistent volume claim object. |
| persistentVolumeClaim.existingPersistentVolumeClaim | string | `""` | Use an existing persistent volume claim object. |
| persistentVolumeClaim.labels | object | `{}` | Additional labels for the persistent volume claim object. |
| persistentVolumeClaim.mountPath | string | `"/data"` | Mount path of the persistent volume claim object. |
| persistentVolumeClaim.size | string | `"1Gi"` | Storage request size for the persistent volume claim object. |
| persistentVolumeClaim.storageClassName | string | `""` | Storage class name for the persistent volume claim object. |
| persistentVolumeClaim.volumeMode | string | `"Filesystem"` | Volume mode of the persistent volume claim object. |
| ports.redis.appProtocol | string | `"redis"` | The application protocol for this port. Used as hint for implementations to offer richer behavior. |
| ports.redis.enabled | bool | `true` | Enable the port inside the `Controller` and `Service` objects. |
| ports.redis.nodePort | string | `nil` | The external port used if `.service.type` == `NodePort`. |
| ports.redis.port | int | `6379` | The port used as internal port and cluster-wide port if `.service.type` == `ClusterIP`. |
| ports.redis.protocol | string | `"TCP"` | The protocol used for the service. |
| priorityClassName | string | `""` | Optional priority class name to be used for pods. |
| redisExporter.enabled | bool | `false` | Enable optional redis exporter instance as sidecar container. |
| redisExporter.image | object | `{"pullPolicy":"IfNotPresent","repository":"oliver006/redis_exporter","tag":"latest"}` | Image for the metric exporter |
| redisExporter.image.pullPolicy | string | `"IfNotPresent"` | The pull policy for the exporter. |
| redisExporter.image.repository | string | `"oliver006/redis_exporter"` | The repository to pull the image from. |
| redisExporter.image.tag | string | `latest` | The docker tag, if left empty latest will be used. |
| redisExporter.resources | object | `{"limits":{"cpu":"100m","memory":"100Mi"},"requests":{"cpu":"10m","memory":"50Mi"}}` | Compute resources used by the container. More info [here](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/). |
| redisExporter.securityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"runAsGroup":59000,"runAsUser":59000}` | Pod-level security attributes. More info [here](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#security-context). |
| resources | object | `{}` | Compute resources used by the container. More info [here](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/). |
| securityContext | object | `{}` | Pod-level security attributes. More info [here](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#security-context). |
| service.annotations | object | `{}` | Additional annotations for the service object. |
| service.clusterIP | string | `""` | ClusterIP used if service type is `ClusterIP`. |
| service.enabled | bool | `true` | Create a service for exposing this chart. |
| service.labels | object | `{}` | Additional labels for the service object. |
| service.loadBalancerIP | string | `""` | LoadBalancerIP if service type is `LoadBalancer`. |
| service.loadBalancerSourceRanges | list | `[]` | Allowed addresses when service type is `LoadBalancer`. |
| service.type | string | `"ClusterIP"` | The service type used. |
| serviceAccount.name | string | `""` | Specify the service account used for the controller. |
| serviceMonitor.annotations | object | `{}` | Additional annotations for the service monitor object. |
| serviceMonitor.enabled | bool | `false` | Create a service monitor for prometheus operator. |
| serviceMonitor.interval | string | `"30s"` | How frequently the exporter should be scraped. |
| serviceMonitor.labels | object | `{}` | Additional labels for the service monitor object. |
| serviceMonitor.timeout | string | `"10s"` | Timeout value for individual scrapes. |

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| pascaliske | <info@pascaliske.dev> | <https://pascaliske.dev> |

## License

[MIT](../LICENSE.md) – © 2024 [Pascal Iske](https://pascaliske.dev)
