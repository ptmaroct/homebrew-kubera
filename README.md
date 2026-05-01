# homebrew-kubera

Homebrew tap for [Kubera](https://github.com/ptmaroct/infiscal-macos) — a native macOS menubar app for Infisical secrets.

## Install

```bash
brew tap ptmaroct/kubera
brew install --cask kubera
```

The Infisical CLI is pulled in automatically as a dependency. Run `infisical login` once, then launch Kubera.

## Update

```bash
brew update
brew upgrade --cask kubera
```

## Uninstall

```bash
brew uninstall --cask kubera
brew untap ptmaroct/kubera
```
