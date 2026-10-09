<img width="256" height="256" alt="a4pwt-jhs4v" src="https://github.com/user-attachments/assets/a0bf59a0-f3b4-4420-a6af-2c000864cbc2" />

# pinax

Homebrew tap for Pinax, a self-hosted image catalog for macOS.

```sh
brew install --cask gitkeniwo/pinax/pinax   # the app
brew install gitkeniwo/pinax/pinax          # the pinax command-line tool
```

Pinax is not notarized. macOS blocks the first open of every new version:
open System Settings › Privacy & Security and click "Open Anyway".

This repository holds only `Casks/`, `Formula/`, this README, and the release
zips attached to its GitHub Releases. `Scripts/release.sh` in the Pinax source
repository renders these files; do not edit them by hand.
