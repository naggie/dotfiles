#! /bin/echo source this script

ls dot/ | while read; do
	ln "dot/$REPLY" "~/.$REPLY"
done

mkdir ~/bin/

# put in shellrc conf
export PATH=$PATH:~/bin/

ln bin/*  ~/bin/