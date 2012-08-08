#! /bin/echo source this script

source dot/bashrc 2>/dev/null >/dev/null

# copy (and add dots)
ls dot/ | while read; do
	cp -r "dot/$REPLY" ~/."$REPLY"
done

ls dotdir/ | while read; do
	cp -r "dotdir/$REPLY/*" ~/."$REPLY"
done

mkdir ~/bin/ 2>/dev/null

# put in shellrc conf
export PATH=$PATH:~/bin/

cp -r bin/* ~/bin/

chmod +x ~/bin/*

echo "Done. Keychain (automatic ssh-agent) runs via bashrc. Be sure to set up a private key!"
keychain 2>/dev/null || echo "Please install keychain (new-init.js)"