#! /bin/bash

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

# make sure the submodules are fetched
git submodule --quiet init || exit 1
git submodule --quiet update || exit 2

# clobber vim!
test -d ~/.vim/ && rm -rf ~/.vim/

cp -r home/* ~
# copy dotfiles separately , normal glob does not match
cp -r home/.??* ~
chmod +x ~/bin/*

# in case someone forgot....
chmod +x specific/*

# user-specific stuff
if [ -x "specific/`whoami`" ]; then
	"./specific/`whoami`"
fi

# authorised keys for ssh for this user
KEYFILE="pubkeys/`whoami`"

if [ -d ~/.ssh/ ] && [ -r pubkeys/`whoami` ]; then
	cp "$KEYFILE" ~/.ssh/authorized_keys
	chmod 0600 ~/.ssh/authorized_keys
fi
