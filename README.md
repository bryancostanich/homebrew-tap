# bryancostanich/tap

Homebrew tap for my projects.

## Usage

```sh
brew tap bryancostanich/tap
```

## Available formulae

- **[cercano](https://github.com/bryancostanich/Cercano)** — AI development agent and terminal client for Apple Silicon Macs (macOS 12 or later; deployment-target floor).
  ```sh
  brew install bryancostanich/tap/cercano
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
