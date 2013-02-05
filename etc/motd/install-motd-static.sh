#! /bin/bash


# installs a MOTD once only. Statically.


cd "$(dirname $0)"

if [ ! -x /usr/bin/figlet ]; then
	echo "Install figlet first"
	exit 1
fi


sudo cp quotes /etc/quotes
sudo chmod 0444 /etc/quotes

./00-header > sudo tee /etc/motd
