#!/bin/bash

# Usage: ./install.sh <preset>
#
# Where preset is nothing (default) or a script in preset/

# RUN AS ROOT TO INSTALL TO /etc/skel/ so new users have these dotfiles
# or sudo -u <user> ./install.sh to install as any other user

# Put a list of pubkeys in pubkeys/user
# put specific setup scripts in specific/user

# this is good for log files
date

# sneaky hack to install to skel if run as root
if [ `whoami` == root ]; then
	HOME=/etc/skel
fi

cd $(dirname $0)

PRESET=$1

# make sure the submodules are fetched
git submodule --quiet init || exit 1
git submodule --quiet update || exit 2

# clobber vim and fish config (because there are dirs)
test -d ~/.vim/ && rm -rf ~/.vim/
test -d ~/.config/fish/ && rm -rf ~/.config/fish/

cp -r home/* ~
# copy dotfiles separately , normal glob does not match
cp -r home/.??* ~
chmod +x ~/bin/*

# in case someone forgot...
chmod +x presets/*
# oops, not README.md
chmod -x presets/README.md

# user-specific stuff
echo
if [ "$PRESET" ] && [ -x "presets/$PRESET" ]; then
	echo "Installing preset: $PRESET"
	cd presets/
	source "$PRESET"
else
	echo No preset specfified, default installed.
	echo 'Run with ./install.sh <preset>'
	echo To load a prefix from presets/
fi

