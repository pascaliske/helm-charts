# [`redis`](https://github.com/pascaliske/helm-charts/tree/master/charts/redis)

> A Helm chart for Redis

[![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/redis)[![Version: 0.1.1](https://img.shields.io/badge/Version-0.1.1-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/redis)[![AppVersion: 7.0.5](https://img.shields.io/badge/AppVersion-7.0.5-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/redis)

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
| deployment.annotations | object | `{}` | Additional annotations for the deployment object. |
| deployment.enabled | bool | `true` | Create a workload for this chart. |
| deployment.kind | string | `"Deployment"` | Type of the workload object. |
| deployment.labels | object | `{}` | Additional labels for the deployment object. |
| deployment.replicas | int | `1` | The number of replicas. |
| env[0] | object | `{"name":"TZ","value":"UTC"}` | Timezone for the container. |
| extraArgs | list | `[]` | List of extra arguments for the container. |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` | The pull policy for the deployment. |
| image.repository | string | `"redis"` | The repository to pull the image from. |
| image.tag | string | `"7.0.5"` | The docker tag, if left empty chart's appVersion will be used. |
| nameOverride | string | `""` |  |
| persistentVolumeClaim.annotations | object | `{}` | Additional annotations for the persistent volume claim object. |
| persistentVolumeClaim.create | bool | `false` | Create a new persistent volume claim object. |
| persistentVolumeClaim.existingPersistentVolumeClaim | string | `""` | Use an existing persistent volume claim object. |
| persistentVolumeClaim.labels | object | `{}` | Additional labels for the persistent volume claim object. |
| persistentVolumeClaim.mountPath | string | `"/data"` | Mount path of the persistent volume claim object. |
| persistentVolumeClaim.storageClassName | string | `""` | Storage class name for the persistent volume claim object. |
| ports.http.enabled | bool | `true` | Enable the port inside the `Deployment` and `Service` objects. |
| ports.http.nodePort | string | `nil` | The external port used if `.service.type` == `NodePort`. |
| ports.http.port | int | `6379` | The port used as internal port and cluster-wide port if `.service.type` == `ClusterIP`. |
| ports.http.protocol | string | `"TCP"` | The protocol used for the service. |
| resources | object | `{}` | Compute resources used by the container. More info [here](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/). |
| securityContext | object | `{}` | Pod-level security attributes. More info [here](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#security-context). |
| service.annotations | object | `{}` | Additional annotations for the service object. |
| service.enabled | bool | `true` | Create a service for exposing this chart. |
| service.labels | object | `{}` | Additional labels for the service object. |
| service.type | string | `"ClusterIP"` | The service type used. |
| service.clusterIP | string | `nil` | The cluster IP used if service type is `ClusterIP`. |
| service.loadBalancerIP | string | `nil` | LoadBalancerIP if service type is `LoadBalancer`. |
| service.loadBalancerSourceRanges | list | `[]` | Address that are allowed when service type is `LoadBalancer`. |
| serviceAccount.name | string | `""` | Specify the service account used for the deployment. |

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| pascaliske | <info@pascaliske.dev> | <https://pascaliske.dev> |

## License

[MIT](../LICENSE.md) – © 2022 [Pascal Iske](https://pascaliske.dev)
