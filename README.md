# [`helm`-charts](https://charts.pascaliske.dev)

## Usage

[Helm](https://helm.sh) must be installed to use the charts. Please refer to Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

```sh
helm repo add pascaliske https://charts.pascaliske.dev
```

If you had already added this repo earlier, run `helm repo update` to retrieve the latest versions of the packages.
You can then run `helm search repo pascaliske` to see the charts.

To install a chart:

```sh
helm install <chart> pascaliske/<chart>
```

To uninstall the chart:

```sh
helm delete <chart>
```

## License

[MIT](LICENSE.md) – © 2021 [Pascal Iske](https://pascaliske.dev)
