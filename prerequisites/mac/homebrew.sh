#! /bin/bash

brew update || exit 2
# coreutils by default are outdated

brew install git tmux keychain picocom mcabber htop-osx nodejs autossh bash-completion gnu-sed coreutils ssh-copy-id mpd ncmpcpp mpc

brew tap phinze/homebrew-cask
brew install brew-cask
brew cask install google-chrome adium arduino bettertouchtool cyberduck gimp iterm2 macvim virtualbox vlc
