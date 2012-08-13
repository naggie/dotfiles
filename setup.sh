#! /bin/bash

cd $(dirname $0)

sudo apt-get update && \
	sudo apt-get install vim git tmux build-essential keychain most mcabber

cp -r home/* ~
chmod +x ~/bin/*

if [ $SHELL != '/bin/bash' ]; then
	echo 'Changing your shell to bash'
	chsh -s /bin/bash
fi

test -e ~/.ssh/id_rsa || ssh-keygen

test -x /usr/bin/keychain && echo "Please install keychain (new-init.sh)"
