#! /bin/bash

cd "$(dirname $0)"

if [ ! -d /etc/update-motd.d/ ]; then
	echo "update-motd system not found. Sure this is Ubuntu?"
	exit 2
fi

if [ ! -x /usr/bin/figlet ]; then
	echo "Install figlet first"
fi


# copy replacement header
sudo cp 00-header /etc/update-motd.d/


# remove sysinfo part. MLDASH does this.
sudo chmod -x /etc/update-motd.d/*-landscape-sysinfo 2>/dev/null
sudo chmod -x /etc/update-motd.d/*-motd 2>/dev/null
