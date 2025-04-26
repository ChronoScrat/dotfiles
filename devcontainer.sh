#!/usr/bin/bash

# This script is passed to devpod cli in order to install a minimal
# set of the dotfiles inside a devcontainer. It can also be used inside
# other minimal environments.

# Check if we are in a directory called `dotfiles`. If not, we can assume
# that the script is not being called from an already cloned repo, and is 
# actually just being piped into the shell via curl.

CWD="$(pwd)"
CWD="$(basename $CWD)"

if [ "$CWD" != "dotfiles" ]; then
    if ! type git >/dev/null 2>&1; then
        echo "Git is not installed"
        exit 1
    fi

    git clone https://github.com/ChronoScrat/dotfiles.git
    cd dotfiles/
fi

# Begin

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_BIN_HOME="$HOME/.local/bin" # Non-standard

RC_BASH="$HOME/.bashrc.d"

mkdir -p $XDG_CONFIG_HOME
mkdir -p $XDG_DATA_HOME
mkdir -p $XDG_BIN_HOME
mkdir -p $RC_BASH


# Bash config
ln -sf {$PWD,$HOME}/.bash_profile
ln -sf {$PWD,$HOME}/.bashrc
ln -sf $PWD/.bashrc.d/aliases.sh $RC_BASH/aliases.sh

# Configuration
ln -sf $PWD/.config/git/ $XDG_CONFIG_HOME/git
ln -sf $PWD/.config/nano/ $XDG_CONFIG_HOME/nano

# Cleanup

if [ -f $HOME/.gitconfig ]; then
    mv $HOME/.gitconfig $HOME/gitconfig.old
fi
