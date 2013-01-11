#! /bin/bash

# RUN AS ROOT TO INSTALL TO /etc/skel/ so new users have these dotfiles
# or sudo -u <user> ./install.sh to install as any other user


if [ `whoami` == root ]; then
	HOME=/etc/skel
fi

cd $(dirname $0)

# make sure the submodules are fetched
git submodule --quiet init
git submodule --quiet update

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

#test -e ~/.ssh/id_rsa || ssh-keygen

if [ `whoami` = 'naggie' ] || [ `whoami` = 'callanbryant' ]; then
	git config --global user.name 'Callan Bryant'
	git config --global user.email 'callan.bryant@gmail.com'
	echo 'set jid = naggie@blackmesa.so' >> ~/.mcabberrc
elif [ `whoami` = 'cbryant' ] || [ "$(hostname -d)" = 'cam.broadcom.com' ]; then
	git config --global user.name 'Callan Bryant'
	git config --global user.email 'cbryant@broadcom.com'
	echo 'set jid = cbryant@spark.eu.broadcom.com' >> ~/.mcabberrc
fi

# generate docs for vim plugins
#vim -e -S -c :Helptags -c :q
