#! /bin/bash
# todo: from source?

# suggested later: irssi weechat
# already included with os: bc

if [ -x /usr/bin/apt-get ]; then
	# debian/ubuntu
	yes | sudo apt-get update || exit 2
	yes | sudo apt-get install vim git tmux build-essential keychain mcabber htop || exit 2
elif [ -x /usr/local/bin/brew ]; then
	# mac os x (vim comes out-of-the-box, yay!)
	brew update || exit 2
	brew install git tmux keychain mcabber htop-osx nodejs || exit 2
else
	echo 'Could not find a supported package manager. Install from source.'
	echo "If you're using Arch, please add pacman support to this script"
	echo "If you're using mac os x, install homebrew"
	exit 1
fi

