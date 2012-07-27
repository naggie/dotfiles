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

echo "Done. Keychain (automatic ssh-agent) runs via bashrc. Be sure to set up a private key!"
keychain 2>/dev/null || echo "Please install keychain (new-init.js)"