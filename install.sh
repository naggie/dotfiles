#! /bin/bash

# RUN AS ROOT TO INSTALL TO /etc/skel/ so new users have these dotfiles
# or sudo -u <user> ./install.sh to install as any other user


if [ `whoami` == root ]; then
	HOME=/etc/skel
fi


DEPENDENCIES=(ssh vim git tmux)

# check if the listed commands are installed. Returns those that are not.
function check {
	declare -a missing

	for i in $*; do
		# does the command run? If so, append it to the array
		command -v $i >/dev/null 2>&1 || missing=("${missing[@]}" $i)
	done

	echo ${missing[@]}

	# number of elements as exit status
	exit ${#missing[@]}
}

MISSING=(`check ${DEPENDENCIES[@]}`)

if [ $? -ne 0 ]; then
	echo
	echo The following required packages are missing:
	echo
	for i in ${MISSING[@]}; do
		echo "  * $i"
	done

	echo
	echo You may install them with etc/dependencies.sh
	echo

	exit
fi

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

#test -e ~/.ssh/id_rsa || ssh-keygen

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
#vim -e -S -c :Helptags -c :q
