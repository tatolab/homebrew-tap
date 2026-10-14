# Tatolab Homebrew Tap

The official [Homebrew](https://brew.sh) tap for [Tatolab](https://tatolab.com/). Tatolab turns anything into a live stream: wire cameras, models and your own code into a stream, then let apps, agents and your other machines read it by URL.

## Install

```sh
brew install --cask tatolab/tap/tatolab
```

On first launch, macOS asks you to confirm opening Tatolab. Tatolab then asks for your administrator password to install its machine files. macOS may also ask you to allow Tatolab's background item in **System Settings → General → Login Items**.

### Requirements

- Apple Silicon Mac (arm64)
- macOS 15 Sequoia or later

## What gets installed

| What | Where |
| --- | --- |
| The Tatolab app | `/Applications/Tatolab.app` |
| The `tatolab` command-line tool | `/usr/local/bin/tatolab` (links into the app) |
| The runtime, `tatolabd` | runs as a launch agent (`com.tatolab.tatolabd`), at login too |
| Machine files | `/Library/Application Support/Tatolab` |

The app is signed with Apple Developer ID and notarized by Apple.

## Update

```sh
brew upgrade --cask tatolab
```

This tap is updated when a new Tatolab release is published.

## Uninstall

```sh
brew uninstall --cask tatolab
```

This stops the runtime and removes the app, the `tatolab` command and the machine files. Homebrew may ask for your password, because some of those files are owned by the system.

To also remove your Tatolab settings, caches and data:

```sh
brew uninstall --zap --cask tatolab
```

## Help

- Website: <https://tatolab.com/>
- Runtime source and releases: [tatolab/streamlib](https://github.com/tatolab/streamlib)
