#! /bin/echo source this script

ls dot/ | while read; do
	ln "~/.$REPLY" "dot/$REPLY"
done

mkdir ~/bin/

# put in shellrc conf
export PATH=$PATH:~/bin/

ls bin/ | while read; do
	ln "~/bin/$REPLY" "bin/$REPLY"
done