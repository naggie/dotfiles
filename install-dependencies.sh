#! /bin/bash

# suggested later: irssi weechat
if [ -x /usr/bin/apt-get ]; then
	# debian/ubuntu
	yes | sudo apt-get update
	yes | sudo apt-get install vim git tmux build-essential keychain mcabber htop 
elif [ -x /usr/local/bin/brew ]; then
	# mac os x (vim comes out-of-the-box, yay!)
	brew update
	brew install git tmux keychain mcabber htop-osx
else
	echo 'Could not find a supported package manager. Install from source.'
	echo "If you're using Arch, please add pacman support to this script"
	echo "If you're using mac os x, install homebrew"
fi

