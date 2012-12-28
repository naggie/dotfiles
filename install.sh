#! /bin/bash

cd $(dirname $0)

# clobber vim!
test -d ~/.vim/ && rm -rf ~/.vim/

cp -r home/* ~
# copy dotfiles separately , normal glob does not match
cp -r home/.??* ~
chmod +x ~/bin/*

if [ $SHELL != '/bin/bash' ]; then
	echo 'Changing your shell to bash'
	chsh -s /bin/bash
fi

# installing stuff from source? best keep it.
mkdir -p ~/src/

test -e ~/.ssh/id_rsa || ssh-keygen

if [ $USER = 'naggie' ] || [ $USER = 'callanbryant' ]; then
	git config --global user.name 'Callan Bryant'
	git config --global user.email 'callan.bryant@gmail.com'
	echo 'set jid = naggie@blackmesa.so' >> ~/.mcabberrc
elif [ $USER = 'cbryant' ] || [ "$(hostname -d)" = 'cam.broadcom.com' ]; then
	git config --global user.name 'Callan Bryant'
	git config --global user.email 'cbryant@broadcom.com'
	echo 'set jid = cbryant@spark.eu.broadcom.com' >> ~/.mcabberrc
fi

# generate docs for vim plugins
vim -c :Helptags -c :q
