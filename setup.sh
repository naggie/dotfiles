#! /bin/echo source this script

source dot/bashrc 2>/dev/null >/dev/null

ls dot/ | while read; do
    rm ~/."$REPLY" 2>/dev/null
	ln "dot/$REPLY" ~/."$REPLY"
done

mkdir ~/bin/ 2>/dev/null

# put in shellrc conf
export PATH=$PATH:~/bin/

ls bin/ | while read; do
    rm ~/bin/"$REPLY" 2> /dev/null
	ln "bin/$REPLY" ~/bin/
done

chmod +x ~/bin/*

# make bashrc actually load (does not sometimes in certain corporate networks...)
ln -s .bashrc .bash_login 2> /dev/null


echo "Done. Keychain (automatic ssh-agent) runs via bashrc. Be sure to set up a private key!"