#! /bin/bash

cd $(dirname $0)

cp -r home/* ~
# copy dotfiles separately , normal glob does not match
cp -r home/.??* ~
chmod +x ~/bin/*

if [ $SHELL != '/bin/bash' ]; then
	echo 'Changing your shell to bash'
	chsh -s /bin/bash
fi

test -e ~/.ssh/id_rsa || ssh-keygen

test -x /usr/bin/keychain || echo "Please install keychain (new-init.sh)"

if [ $USER = 'naggie' ] || [ $USER = 'callanbryant' ]; then
	git config --global user.name 'Callan Bryant'
	git config --global user.email 'callan.bryant@gmail.com'
	echo 'set jid = naggie@blackmesa.so' >> ~/.mcabberrc
fi

if [ $USER = 'cbryant' ] || [ "$(hostname -d)" = 'cam.broadcom.com' ]; then
	git config --global user.name 'Callan Bryant'
	git config --global user.email 'cbryant@broadcom.com'
	echo 'set jid = cbryant@spark.eu.broadcom.com' >> ~/.mcabberrc
fi

# generate docs for vim plugins
vim -c :Helptags -c :q
