# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# Mount additional VHD in WSL
if ! mount | grep -E 'dev-drive' ; then
    /mnt/c/Windows/System32/wsl.exe -d Ubuntu --mount --vhd 'C:\Users\Kaiden\wsl\dev-drive.vhdx' --bare;
#    sudo mount UUID=4f7575cc-eba0-47bb-bfcd-305f2e52b669 /mnt/dev-drive
    sudo mount LABEL=dev-drive /mnt/dev-drive
fi

# Homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Flutter
PATH="/home/kaiden/fvm/default/bin:$PATH"

# FlutterFire CLI
PATH="$PATH":"$HOME/.pub-cache/bin"

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
