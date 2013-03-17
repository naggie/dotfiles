#! /bin/bash

brew update || exit 2
# coreutils by default are outdated

brew install git tmux keychain picocom mcabber htop-osx nodejs autossh bash-completion gnu-sed coreutils ssh-copy-id
