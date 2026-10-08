# bryancostanich/tap

Personal Homebrew tap maintained by bryancostanich, with the existing Lattice cask retained.

## Usage

```sh
brew tap cercano-ai/tap
```

## Available formulae

- **[cercano](https://github.com/cercano-ai/Cercano)** — **DEPRECATED**: This formula is deprecated and no longer maintained. Please use the new standalone installation:
  ```sh
  brew install cercano-ai/cercano/cercano
  ```
  The new installation provides the same functionality with improved support and maintenance. See [github.com/cercano-ai/homebrew-cercano](https://github.com/cercano-ai/homebrew-cercano) for the new canonical tap.

  For existing installations, you can continue using:
  ```sh
  brew upgrade bryancostanich/tap/cercano
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

## Cercano Formula Status

The Cercano formula in this tap is deprecated. New installations should use the canonical standalone tap:

```sh
brew install cercano-ai/cercano/cercano
```

This new tap provides the same functionality with improved support and maintenance. See [github.com/cercano-ai/homebrew-cercano](https://github.com/cercano-ai/homebrew-cercano) for details.

### Existing installations

Existing installations can continue to use this tap:

```sh
brew update
brew upgrade bryancostanich/tap/cercano
```

After a successful install or upgrade, the post-install hook restarts a running
agent owned by the same Homebrew installation at the configured endpoint.
An absent agent is not started, and development-checkout agents are left alone.
If the restart fails, follow the command's diagnostic before retrying
`cercano restart-after-upgrade`. Configuration and conversation data are kept
outside the Homebrew installation and are not deleted by `brew uninstall`.

The v0.20.3 post-install restart command has a separately tracked
[process-inspection issue](https://github.com/cercano-ai/Cercano/issues/55).
The package can be installed despite that post-install error; do not delete
saved data in response.

Lattice continues to use its existing release artifacts from
`bryancostanich/lattice`.
