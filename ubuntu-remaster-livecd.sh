#!/bin/bash

# Builds darksky ubuntu (naggie/dotfiles based) which is a remastered live CD.

# Use the 'toram' kernel parameter. The result is a super-fast, disposable
# environment! You'll need at least 3GB of RAM though.

# Install pre-requisities
#sudo apt-get install squashfs-tools genisoimage aufs-tools syslinux-utils

cd $(dirname $0)
CHANGE=$(git rev-list HEAD --count)
NAME="darkbuntu"

function WARNING {
	# TODO: check PS1, no escape code if not interactive....?
	echo -e "\e[00;31m> $*\e[00m"
}

if [ ! "$2" ]; then
	echo "Usage: sudo $0 <source ubuntu iso> <destination iso>"
	exit 1
fi

SOURCE="$1"
TARGET="$2"

if [ ! -f "$SOURCE" ]; then
	WARNING "$SOURCE not found!"
	exit 23
fi

WORKDIR=$(mktemp -d --tmpdir=/tmp $NAME.XXXXXXX)
if [ `whoami` != root ]; then
	WARNING Run as root
	exit
fi

# check dependencies
if ! which mkisofs mksquashfs isohybrid &> /dev/null; then
	WARNING 'Error! required genisoimage/squashfs-tools/syslinux-utils package(s) are not installed'
	exit
fi

# less typing, with environment variables set
# as home is skel, home contents will be copied to home dir of new user.
function INSIDE {
	chroot $WORKDIR/filesystem_rw \
		/usr/bin/env \
		HOME=/etc/skel \
		LC_ALL=C \
		USER=root \
		"$@"
}

function BREAKPOINT {
	INSIDE /bin/bash --norc --noprofile
}

function CLEANUP_EXIT {
	STATUS=$?
	set +e
	# -d always free loop device, prevent leaking them
	# TODO FIXME WARNING -l may leave a loop dev used
	sync
	# order is important
	umount -l $WORKDIR/filesystem_rw/proc
	umount    $WORKDIR/filesystem_rw/sys
	umount -l $WORKDIR/filesystem_rw/dev
	umount    $WORKDIR/filesystem_rw/dev/pts
	umount -d $WORKDIR/iso_ro
	sync
	rm -rf $WORKDIR
	# TODO: check to see if dev is there before rm -rfing
	exit $STATUS
}

trap CLEANUP_EXIT EXIT

# exit on error? NEEDS TRAP TO CLEANUP_EXIT
# use || true to skip exit-on-fail for single commands if inconsequential
# This is useful on an incremental build
set -e


mkdir $WORKDIR/iso_ro
mount -o loop,ro "$SOURCE" $WORKDIR/iso_ro

# extract ISO so files are writable
mkdir $WORKDIR/iso_rw
rsync --exclude=/casper/filesystem.squashfs -a $WORKDIR/iso_ro/ $WORKDIR/iso_rw

# Extract the Desktop system
# Extract the SquashFS filesystem
unsquashfs -no-progress -d $WORKDIR/filesystem_rw $WORKDIR/iso_ro/casper/filesystem.squashfs

# Prepare and chroot
# network connection within chroot
# Don't replace resolv.conf, overwrite it so that permissions don't change.
# This way, network manager can still work.
cat /etc/resolv.conf > $WORKDIR/filesystem_rw/etc/resolv.conf
cat /etc/hosts       > $WORKDIR/filesystem_rw/etc/hosts

# other filesystems, inside chroot
# these mount important directories of your host system - if you later decide to
# delete the edit/ directory, then make sure to unmount before doing so,
# otherwise your host system will become unusable at least temporarily until
# reboot)
# Also rm -rf'ing over binded dev really isn't a good thing...
mount -t proc   none $WORKDIR/filesystem_rw/proc
mount -t sysfs  none $WORKDIR/filesystem_rw/sys
mount -t devpts none $WORKDIR/filesystem_rw/dev/pts
mount --bind /dev/   $WORKDIR/filesystem_rw/dev

# In 9.10, (+?) before installing or upgrading packages you need to run
# also may as well update/upgrade and add repositories
dbus-uuidgen | INSIDE tee /var/lib/dbus/machine-id
INSIDE dpkg-divert --local --rename --add /sbin/initctl
INSIDE ln -s /bin/true /sbin/initctl || true

#INSIDE ln -s /lib/init/upstart-job /etc/init.d/whoopsie || true # required, otherwise apt breaks

# installs dotfiles to /etc/skel/ so that live (ubuntu) user will get dotfiles
#cp -a ../dotfiles $WORKDIR/filesystem_rw/root/
#git clone . $WORKDIR/filesystem_rw/root/dotfiles
rsync -r --delete --exclude=build --exclude='*iso' . $WORKDIR/filesystem_rw/etc/skel/dotfiles/

INSIDE /etc/skel/dotfiles/bootstrap.sh

# If you're me, just run this in the live session rather than producing separate ISOs
#INSIDE /etc/skel/dotfiles/install-naggie.sh

# CLEANUP
# Be sure to remove any temporary files which are no longer needed, as space on a
# CD is limited. A classic example is downloaded package files, which can be
# cleaned out using:
# note apt-get upgrade can cause problems. Don't do it when building a livecd.
INSIDE apt-get -y --force-yes clean
INSIDE apt-get -y --force-yes autoremove

# New kernel or initrd?
#cp $WORKDIR/filesystem_rw/boot/vmlinuz-2.6.15-26-k7    $WORKDIR/iso_rw/casper/vmlinuz
# new initrd generated when Broadcom sta drivers were installed.
cp $WORKDIR/filesystem_rw/boot/initrd.img* $WORKDIR/iso_rw/casper/initrd.lz ||:

# prevent Ubiquity installer from modifying keyboard
sed -i -e "s/def apply_keyboard():/def apply_keyboard():\n    return/g" \
	$WORKDIR/filesystem_rw/usr/lib/ubiquity/bin/ubiquity

rm -rf $WORKDIR/filesystem_rw/tmp/*
rm     $WORKDIR/filesystem_rw/etc/skel/.bash_history || true
rm     $WORKDIR/filesystem_rw/etc/skel/.history || true

# RM/UMOUNT STUFF THAT SHOULDN'T BE IN FILESYSTEM IMAGE
rm $WORKDIR/filesystem_rw/etc/hosts
# overwrite, preserve permissions, see above.
echo > $WORKDIR/filesystem_rw/etc/resolv.conf

# Clean after installing software
rm $WORKDIR/filesystem_rw/var/lib/dbus/machine-id
rm $WORKDIR/filesystem_rw/sbin/initctl
INSIDE dpkg-divert --rename --remove /sbin/initctl

umount -l $WORKDIR/filesystem_rw/proc
umount    $WORKDIR/filesystem_rw/sys
umount -l $WORKDIR/filesystem_rw/dev
umount    $WORKDIR/filesystem_rw/dev/pts
umount    $WORKDIR/iso_ro

# remove socket file in /etc/skel which causes the creation of the xubuntu user
# to fail when livecd boots
rm $WORKDIR/filesystem_rw/etc/skel/.gnupg/S.gpg-agent ||:

# ASSEMBLE ISO
chmod +w $WORKDIR/iso_rw/casper/filesystem.manifest

INSIDE dpkg-query -W --showformat='${Package} ${Version}\n' > $WORKDIR/iso_rw/casper/filesystem.manifest

cp $WORKDIR/iso_rw/casper/filesystem.manifest $WORKDIR/iso_rw/casper/filesystem.manifest-desktop

sed -i '/ubiquity/d' $WORKDIR/iso_rw/casper/filesystem.manifest-desktop
sed -i '/casper/d'   $WORKDIR/iso_rw/casper/filesystem.manifest-desktop

# COMPRESS FILESYSTEM
# already excluded by rsync (not any more now that aufs is used)
#rm $WORKDIR/iso_rw/casper/filesystem.squashfs

# For a highest possible compression at the cost of compression time, you may
# use the xz method. DO NOT REMOVE /boot/ as that is needed by the installer, Ubiquity.
mksquashfs \
	$WORKDIR/filesystem_rw $WORKDIR/iso_rw/casper/filesystem.squashfs \
	-comp xz -no-progress \
	>/dev/null # buffering progress indicator might be a bottleneck... flag does not work

# Update the filesystem.size file, which is needed by the installer:
printf $(du -sx --block-size=1 $WORKDIR/filesystem_rw | cut -f1) > $WORKDIR/iso_rw/casper/filesystem.size

# Set an image name in extract-cd/README.diskdefines
#vim extract-cd/README.diskdefines

# recalc hashes
rm $WORKDIR/iso_rw/md5sum.txt
# subshell, no chdir persistence
echo 'Calculating hashes...'
(
	cd $WORKDIR/iso_rw
	find -type f -print0 \
		| xargs -0 md5sum \
		| grep -v isolinux/boot.cat \
		> md5sum.txt
)

# Create the ISO image
mkisofs -D -r -V "$NAME" -cache-inodes -J -l \
	-b isolinux/isolinux.bin \
	-c isolinux/boot.cat \
	-no-emul-boot -boot-load-size 4 \
	-boot-info-table \
	-o "$TARGET" $WORKDIR/iso_rw/

# postprocess to allow simple dd to flash drive to work?
# http://manpages.ubuntu.com/manpages/natty/man1/isohybrid.1.html
isohybrid "$TARGET"

[ $SUDO_USER ] && chown $SUDO_USER "$TARGET"

# Example: burn the image to CD with:
#cdrecord dev=/dev/cdrom ubuntu-9.04-desktop-i386-custom.iso

#sudo apt-get install qemu kvm
#sudo adduser naggie kvm
# newgrp kvm
#qemu-system-x86_64 -m 4096 -enable-kvm -usbdevice tablet -k en-gb -vnc :0,lossy -vga std -cdrom darkbuntu-naggie.iso
