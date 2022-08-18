# glsee/dotfiles-wsl

![GitHub last commit](https://img.shields.io/github/last-commit/glsee/dotfiles-wsl)

[![GitHub](https://img.shields.io/github/license/glsee/dotfiles-wsl)](#License)

These are the dotfiles I personally use for my WSL set up for Ubuntu.


The following are my system versions. Newer systems should be able to use a similar dotfiles setup as mine without issues.

|  |  |
|----------|--------------|
| Host OS | Windows 11 Pro (Build 22622.575) |
| WSL2 version | 0.65.3.0 |
| Linux version | 5.15.57.1-microsoft-standard-WSL2 |
| Linux distro | Ubuntu 22.04.1 LTS |
|  |  |


## Rationale

The rationale for this repo is for me to easily replicate the same dev environment setup whenever a new version of Ubuntu is released for WSL, as I prefer to have a clean installation to running `do-release-upgrade`.

I mainly use WSL for web and Flutter development. For web development, I'm able to use Docker to make sure the dev environment for each projects are reproducible consistently. However, for Flutter, it's not feasible to use a Dockerized setup for each project and thus a big part of these dotfiles are about Flutter environment setup.


## Features

- Minimal Android SDK setup without Android Studio. Use `sdkmanager` to install new platform SDK or tools
- Latest Flutter SDK installed via `fvm`
- `nala` as a faster alternative to `apt`
- `homebrew` as an alternative package manager
- `git-delta` as a better `git diff` pager with code differences highlighted in colors
- `ugit` as a handy shortcut to undo the last git command
- Latest Node installed via `nvm`
- `pnpm` as an alternative package manager for Node alongside with `npm`
- Easily launch VS Code in Windows with remote connection to WSL environment via `code` command
- Ability to run Flutter web projects on Microsoft Edge in Windows
- Neat and sensible `$PATH` without paths copied from Windows
- Bash prompt with `starship`
- `neofetch` and custom MOTD with it


## Installation

If you wish to set up your Ubuntu in WSL2 in a similar way as mine, you should first fork this repository.

Then, replace my name and email in `.gitconfig`. You may also make changes to any other files according to your preference.

Next, in your Ubuntu in WSL, install [yadm](https://yadm.io/)

```sh
sudo apt install yadm
```

To install the dotfiles as-is, run:
```sh
yadm clone --bootstrap <clone URL of this repo>
```


## Related

For more details on how to make changes on the bootstrap scripts, refer to [yadm documentation](https://yadm.io/docs/overview)


## License

[MIT](./LICENSE)