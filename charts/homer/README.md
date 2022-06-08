# [`homer`](https://github.com/pascaliske/helm-charts/tree/master/charts/homer)

> A Helm chart for Kubernetes

[![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/homer)[![Version: 0.0.2](https://img.shields.io/badge/Version-0.0.2-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/homer)[![AppVersion: 22.02.2](https://img.shields.io/badge/AppVersion-22.02.2-informational?style=flat-square) ](https://github.com/pascaliske/helm-charts/tree/master/charts/homer)

* <https://github.com/pascaliske/helm-charts>
* <https://github.com/bastienwirtz/homer>

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
helm install homer pascaliske/homer
```

To uninstall this chart simply run the following command:

```sh
helm delete homer
```

## Values

The following values can be used to adjust the helm chart.

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| configMap.annotations | object | `{}` | Additional annotations for the config map object. |
| configMap.config | string | `"title: Dashboard\nservices: {}\n"` | String containing the [configuration of homer](https://github.com/bastienwirtz/homer/blob/main/docs/configuration.md). |
| configMap.create | bool | `true` | Create a new config map object. |
| configMap.existingConfigMap | string | `""` | Use an existing config map object. |
| configMap.key | string | `"config.yml"` | Specify a different key inside config map object. |
| configMap.labels | object | `{}` | Additional labels for the config map object. |
| configMap.mountPath | string | `"/www/assets"` | Mount path of the config map object. |
| deployment.annotations | object | `{}` | Additional annotations for the deployment object. |
| deployment.enabled | bool | `true` | Create a workload for this chart. |
| deployment.kind | string | `"Deployment"` | Type of the workload object. |
| deployment.labels | object | `{}` | Additional labels for the deployment object. |
| deployment.replicas | int | `1` | The number of replicas. |
| env[0] | object | `{"name":"TZ","value":"UTC"}` | Timezone for the container. |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` | The pull policy for the deployment. |
| image.repository | string | `"b4bz/homer"` | The repository to pull the image from. |
| image.tag | string | `"22.02.2"` | The docker tag, if left empty chart's appVersion will be used. |
| nameOverride | string | `""` |  |
| ports.http.enabled | bool | `true` | Enable the port inside the `Deployment` and `Service` objects. |
| ports.http.nodePort | string | `nil` | The external port used if `.service.type` == `NodePort`. |
| ports.http.port | int | `8080` | The port used as internal port and cluster-wide port if `.service.type` == `ClusterIP`. |
| ports.http.protocol | string | `"TCP"` | The protocol used for the service. |
| resources | object | `{}` | Compute resources used by the container. More info [here](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/). |
| securityContext | object | `{}` | Pod-level security attributes. More info [here](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#security-context). |
| service.annotations | object | `{}` | Additional annotations for the service object. |
| service.enabled | bool | `true` | Create a service for exposing this chart. |
| service.labels | object | `{}` | Additional labels for the service object. |
| service.type | string | `"ClusterIP"` | The service type used. |
| serviceAccount.name | string | `""` | Specify the service account used for the deployment. |

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| pascaliske | <info@pascaliske.dev> | <https://pascaliske.dev> |

## License

[MIT](../LICENSE.md) – © 2022 [Pascal Iske](https://pascaliske.dev)
