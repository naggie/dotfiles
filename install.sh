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

cat <<EOF
Make sure you have at least:

  * tmux 1.8+
  * fish 2.0+ (don't forget to chsh -s to it)
  * vim 7.3++

Bash if you really must.

Installing dotfiles...
EOF

# sneaky hack to install to skel if run as root
if [ `whoami` == root ]; then
	HOME=/etc/skel
fi

cd $(dirname $0)

# just the arguments (cryptic, I know. That's why you should use fish!)
PRESETS=$@

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
if [ "$PRESETS" ]; then
	cd presets/
	for PRESET in ${PRESETS[@]}; do
		if [ -x "$PRESET" ]; then
			echo "Installing preset: $PRESET"
			source "$PRESET"
		else
			echo Invalid preset: $PRESET
		fi
	done
	cd ..
else
	echo No preset specfified, default installed.
	echo 'Run with ./install.sh <preset> <preset> ...'
	echo To load a prefix from presets/
fi

