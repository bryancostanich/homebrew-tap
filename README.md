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

Existing installations should retain their configuration and conversation data.
Do not remove that data or uninstall the application as a migration shortcut.
The supported tap-migration procedure must be verified against the transferred
repository before being published. Lattice continues to use its existing
release artifacts from `bryancostanich/lattice`.
