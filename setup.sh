#! /bin/echo source this script

source dot/bashrc 2>/dev/null >/dev/null

ls dot/ | while read; do
    rm ~/."$REPLY"
	ln "dot/$REPLY" ~/."$REPLY"
done

mkdir ~/bin/ 2>/dev/null

# put in shellrc conf
export PATH=$PATH:~/bin/

ls bin/ | while read; do
    rm ~/bin/"$REPLY" 2> /dev/null
	ln "bin/$REPLY" ~/bin/
done
