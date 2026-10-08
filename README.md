# cercano-ai/tap

Canonical Homebrew tap for Cercano, with the existing Lattice cask retained.

## Usage

```sh
brew tap cercano-ai/tap
```

## Available formulae

- **[cercano](https://github.com/cercano-ai/Cercano)** — AI development agent and terminal client for Apple Silicon Macs (macOS 12 or later; deployment-target floor).
  ```sh
  brew install cercano-ai/tap/cercano
  cercano-cli
  ```
  Installs both `cercano` (agent) and `cercano-cli` (terminal client).
  No models, provider credentials, or login service are installed automatically.

  ```sh
  brew upgrade cercano
  ```
  After a successful install or upgrade, the post-install hook restarts a running
  agent owned by the same Homebrew installation at the configured endpoint.
  An absent agent is not started, and development-checkout agents are left alone.
  If the restart fails, follow the command's diagnostic before retrying
  `cercano restart-after-upgrade`. Configuration and conversation data are kept
  outside the Homebrew installation and are not deleted by `brew uninstall`.

## Available casks

- **[lattice](https://github.com/bryancostanich/lattice)** — grid-based macOS Spaces navigation
  ```sh
  brew install --cask lattice
  ```

## Organization migration

This repository moved from `bryancostanich/homebrew-tap` to
`cercano-ai/homebrew-tap`. Use the explicit `cercano-ai/tap/cercano` name for new
standalone installations. Current Cercano releases require Apple Silicon and
macOS 12 or later; the old `homebrew-cercano` co-processor tap is superseded and
is not a supported standalone installation path. This move does not introduce
Intel Mac or Linux standalone packages.

### Existing standalone installations

You do not need to uninstall Cercano or delete configuration or conversations
because of this ownership change. The old GitHub tap URL redirects to this
repository, so an existing `bryancostanich/tap` installation can retain its tap
name and continue using:

```sh
brew update
brew upgrade bryancostanich/tap/cercano
```

The redirected tap clone and same-version upgrade check were verified in an
isolated installation. This preserves the existing tap identity; it does not
rewrite installed receipts to `cercano-ai/tap`, and a future-version upgrade has
not been tested as part of the ownership migration. Use `cercano-ai/tap/cercano`
for new installations. Do not untap the old tap while installed packages still
reference it.

The v0.20.3 post-install restart command has a separately tracked
[process-inspection issue](https://github.com/cercano-ai/Cercano/issues/55).
The package can be installed despite that post-install error; do not delete
saved data in response.

Lattice continues to use its existing release artifacts from
`bryancostanich/lattice`.
