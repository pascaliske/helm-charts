# [`helm`-charts](https://charts.pascaliske.dev)

> Another repository with lightweight Helm Charts.

[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/pascaliske&style=flat-square)](https://artifacthub.io/packages/search?repo=pascaliske) [![Test Status](https://img.shields.io/github/actions/workflow/status/pascaliske/helm-charts/test.yml?branch=master&label=test&style=flat-square)](https://github.com/pascaliske/helm-charts/actions/workflows/test.yml) [![Build Status](https://img.shields.io/github/actions/workflow/status/pascaliske/helm-charts/release.yml?branch=master&label=build&style=flat-square)](https://github.com/pascaliske/helm-charts/actions/workflows/release.yml) ![GitHub Last Release](https://img.shields.io/github/release-date/pascaliske/helm-charts?label=last%20release&style=flat-square) [![GitHub Last Commit](https://img.shields.io/github/last-commit/pascaliske/helm-charts?style=flat-square)](https://github.com/pascaliske/helm-charts) [![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=flat-square)](https://opensource.org/licenses/MIT) [![Awesome Badges](https://img.shields.io/badge/badges-awesome-green.svg?color=blue&style=flat-square)](https://github.com/Naereen/badges)

<!-- prettier-ignore-start -->
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-8-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->
<!-- prettier-ignore-end -->

## Usage

[Helm](https://helm.sh) must be installed to use the charts. Please refer to Helm's [documentation](https://helm.sh/docs) to get started. Once Helm has been set up correctly, add the repo as follows:

```sh
helm repo add pascaliske https://charts.pascaliske.dev
```

If you had already added this repo earlier, run `helm repo update` to retrieve the latest versions of the packages. Use `helm search repo pascaliske` to see a list of all available charts.

You can install a chart release using the following command:

```sh
helm install <release> pascaliske/<chart> --values values.yaml
```

To uninstall a chart release use `helm`'s delete command:

```sh
helm delete <chart>
```

## Charts

- [`clickhouse`](https://charts.pascaliske.dev/charts/clickhouse/)
- [`cloudflare-dyndns`](https://charts.pascaliske.dev/charts/cloudflare-dyndns/)
- [`cloudflared`](https://charts.pascaliske.dev/charts/cloudflared)
- [`code-server`](https://charts.pascaliske.dev/charts/code-server)
- [`digitalocean-dyndns`](https://charts.pascaliske.dev/charts/digitalocean-dyndns)
- [`fritzbox-exporter`](https://charts.pascaliske.dev/charts/fritzbox-exporter)
- [`gitlab`](https://charts.pascaliske.dev/charts/gitlab)
- [`hammond`](https://charts.pascaliske.dev/charts/hammond)
- [`homer`](https://charts.pascaliske.dev/charts/homer)
- [`keycloak`](https://charts.pascaliske.dev/charts/keycloak)
- [`linkding`](https://charts.pascaliske.dev/charts/linkding)
- [`paperless`](https://charts.pascaliske.dev/charts/paperless)
- [`plausible`](https://charts.pascaliske.dev/charts/plausible)
- [`plausible-exporter`](https://charts.pascaliske.dev/charts/plausible-exporter)
- [`redis`](https://charts.pascaliske.dev/charts/redis)
- [`snapdrop`](https://charts.pascaliske.dev/charts/snapdrop)
- [`traefik-errors`](https://charts.pascaliske.dev/charts/traefik-errors)
- [`unbound`](https://charts.pascaliske.dev/charts/unbound)
- [`uptime-kuma`](https://charts.pascaliske.dev/charts/uptime-kuma)
- [`vikunja`](https://charts.pascaliske.dev/charts/vikunja)

## Contributors

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tbody>
    <tr>
      <td align="center" valign="top" width="14.28%"><a href="https://www.b1-systems.de"><img src="https://avatars.githubusercontent.com/u/26167225?v=4?s=100" width="100px;" alt="Johannes Kastl"/><br /><sub><b>Johannes Kastl</b></sub></a><br /><a href="https://github.com/pascaliske/helm-charts/commits?author=johanneskastl" title="Code">💻</a> <a href="https://github.com/pascaliske/helm-charts/commits?author=johanneskastl" title="Documentation">📖</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://www.linkedin.com/in/catrielmuller"><img src="https://avatars.githubusercontent.com/u/2272323?v=4?s=100" width="100px;" alt="Catriel Müller"/><br /><sub><b>Catriel Müller</b></sub></a><br /><a href="https://github.com/pascaliske/helm-charts/commits?author=catrielmuller" title="Code">💻</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/astralhpi"><img src="https://avatars.githubusercontent.com/u/1402102?v=4?s=100" width="100px;" alt="Jake(Jaehak Song)"/><br /><sub><b>Jake(Jaehak Song)</b></sub></a><br /><a href="https://github.com/pascaliske/helm-charts/commits?author=astralhpi" title="Code">💻</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/rabejens"><img src="https://avatars.githubusercontent.com/u/8402886?v=4?s=100" width="100px;" alt="Jens Rabe"/><br /><sub><b>Jens Rabe</b></sub></a><br /><a href="#ideas-rabejens" title="Ideas, Planning, & Feedback">🤔</a></td>
      <td align="center" valign="top" width="14.28%"><a href="http://blog.dzeri.me"><img src="https://avatars.githubusercontent.com/u/13813363?v=4?s=100" width="100px;" alt="Dzeri96"/><br /><sub><b>Dzeri96</b></sub></a><br /><a href="https://github.com/pascaliske/helm-charts/commits?author=Dzeri96" title="Code">💻</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/kalmarz"><img src="https://avatars.githubusercontent.com/u/65083756?v=4?s=100" width="100px;" alt="Zoltan Kalmar"/><br /><sub><b>Zoltan Kalmar</b></sub></a><br /><a href="https://github.com/pascaliske/helm-charts/issues?q=author%3Akalmarz" title="Bug reports">🐛</a></td>
      <td align="center" valign="top" width="14.28%"><a href="http://www.mojo2k.de"><img src="https://avatars.githubusercontent.com/u/2462817?v=4?s=100" width="100px;" alt="Christian Erhardt"/><br /><sub><b>Christian Erhardt</b></sub></a><br /><a href="https://github.com/pascaliske/helm-charts/commits?author=MoJo2600" title="Code">💻</a></td>
    </tr>
    <tr>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/MaxenceG2M"><img src="https://avatars.githubusercontent.com/u/4601728?v=4?s=100" width="100px;" alt="MaxenceG2M"/><br /><sub><b>MaxenceG2M</b></sub></a><br /><a href="https://github.com/pascaliske/helm-charts/commits?author=MaxenceG2M" title="Code">💻</a></td>
    </tr>
  </tbody>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!

## License

[MIT](LICENSE.md) – © 2024 [Pascal Iske](https://pascaliske.dev)
