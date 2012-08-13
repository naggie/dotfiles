#! /bin/echo source this script

source dot/bashrc 2>/dev/null >/dev/null

# copy (and add dots)
ls dot/ | while read; do
	cp -r "dot/$REPLY" ~/."$REPLY"
done

ls dotdir/ | while read; do
    mkdir ~/."$REPLY" 2>/dev/null
	cp -r "dotdir/$REPLY/"* ~/."$REPLY/"
done

mkdir ~/bin/ 2>/dev/null

# put in shellrc conf
export PATH=$PATH:~/bin/

cp -r bin/* ~/bin/

chmod +x ~/bin/*

if [ $SHELL != '/bin/bash' ]; then
	echo 'Changing your shell to bash'
	chsh -s /bin/bash
fi

test -e ~/.ssh/id_rsa || ssh-keygen

echo "Done. Keychain (automatic ssh-agent) runs via bashrc. Be sure to set up a private key!"
test -x /usr/bin/keychain && echo "Please install keychain (new-init.js)"
