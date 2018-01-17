#!/bin/bash

# Builds darksky ubuntu (naggie/dotfiles based) which is a remastered live CD.
# See example grub.cfg in etc/ to boot from a flash drive.
# Uses current branch.

# Incremental approach, using an existing ISO.

# Use the 'toram' kernel parameter. The result is a super-fast, disposable
# environment! You'll need at least 3GB of RAM though.
#
# Based on https://help.ubuntu.com/community/LiveCDCustomization

# Modes of operation:
#
# 1. Source and Target non-existent: New source is downloaded, target is compiled
# 2. Target exists: Target is used as source
# 3. Just source exists: New target is created


# Install pre-requisities
#sudo apt-get install squashfs-tools genisoimage aufs-tools

cd $(dirname $0)
BRANCH=$(git rev-parse --abbrev-ref HEAD)
CHANGE=$(git rev-list HEAD --count)
NAME="darkbuntu-$BRANCH"

function WARNING {
	# TODO: check PS1, no escape code if not interactive....?
	echo -e "\e[00;31m> $*\e[00m"
}

if [ ! "$2" ]; then
	echo "Usage: make livecd"
	echo "-OR-"
	echo "Usage: sudo $0 <source ubuntu 16.04 iso> <destination iso>"
	exit 121
fi

SOURCE="$1"
TARGET="$2"

if [ ! -f "$SOURCE" ]; then
	WARNING "$SOURCE not found!"
	exit 23
fi

LIVECD_USER=$SUDO_USER

WORKDIR=$(mktemp -d --tmpdir=/tmp $NAME.XXXXXXX)
if [ `whoami` != root ]; then
	WARNING Run as root
	exit
fi

echo
echo SOURCE: $SOURCE
echo TARGET: $TARGET
echo
echo

# check dependencies
if ! which mkisofs mksquashfs isohybrid &> /dev/null; then
	WARNING 'Error! required genisoimage/squashfs-tools/syslinux package(s) are not installed'
	exit
fi

if [ $(uname -m) != x86_64 ]; then
	WARNING 'Error! x86_64 architecture required.'
	exit
fi

# less typing, with environment variables set
# HACK home dir = /etc/skel? so dbus-launch gsettings works.
# This will be copied to home dir of new user.
function INSIDE {
	chroot $WORKDIR/filesystem_rw \
		/usr/bin/env \
		HOME=/etc/skel \
		LC_ALL=C \
		USER=root \
		"$@"
}

function BREAKPOINT {
	INSIDE /bin/bash
}

# remove all trace of building in a safe way on termination
# might fail if things are not there yet, but that's fine.
function CLEANUP_EXIT {
	STATUS=$?
	# the following commands can fail, they must proceed
	set +e
	# -d always free loop device, prevent leaking them
	# TODO FIXME WARNING -l may leave a loop dev used
	sync
	# order is important: there are dependencies
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

# always clean up on CTRL+C (and anything, now)
#trap CLEANUP_EXIT SIGINT
trap CLEANUP_EXIT EXIT

# echo commands to aid debugging
set -x

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

# hostname, username:
# <<- : no leading whitespace
# EOF in single quotes for no variable substitution
cat <<- EOF > $WORKDIR/filesystem_rw/etc/casper.conf
	export USERNAME=$LIVECD_USER
	export USERFULLNAME="Live session user"
	export HOST=darkbuntu-$CHANGE
	export BUILD_SYSTEM="Ubuntu"
	export FLAVOUR=Ubuntu # required to make above apply
EOF

# In 9.10, (+?) before installing or upgrading packages you need to run
# also may as well update/upgrade and add repositories
dbus-uuidgen | INSIDE tee /var/lib/dbus/machine-id
INSIDE dpkg-divert --local --rename --add /sbin/initctl
INSIDE ln -s /bin/true /sbin/initctl || true
INSIDE add-apt-repository universe
INSIDE add-apt-repository multiverse

INSIDE ln -s /lib/init/upstart-job /etc/init.d/whoopsie || true # required, otherwise apt breaks

INSIDE apt-get -y --force-yes update
INSIDE apt-get -y --force-yes install git

# DOTFILES AND PROVISION
# make sure submodules are here
git submodule update --init

# installs dotfiles to /etc/skel/ so that live (ubuntu) user will get a
#cp -a ../dotfiles $WORKDIR/filesystem_rw/root/
#git clone . $WORKDIR/filesystem_rw/root/dotfiles
# rsync preserves original origin and submodules, but git submodules have
# absolute references which break if you move the git folder on old versions of
# git...
rsync -r --delete --exclude=build --exclude='*iso' . $WORKDIR/filesystem_rw/etc/skel/dotfiles/

# git submodule references
INSIDE git -C /etc/skel/dotfiles submodule foreach rm .git
INSIDE git -C /etc/skel/dotfiles submodule update --init

INSIDE /etc/skel/dotfiles/provision/ubuntu-desktop
INSIDE /etc/skel/dotfiles/install.sh

# edit variables in /etc/casper.conf for distro/host/username
INSIDE apt-get install -y --force-yes dkms

# current kernel is wrong obviously
# http://askubuntu.com/questions/53364/command-to-rebuild-all-dkms-modules-for-all-installed-kernels
ls $WORKDIR/filesystem_rw/var/lib/initramfs-tools | INSIDE xargs -n1 /usr/lib/dkms/dkms_autoinstaller start

# this livecd may be used in a vbox guest
#INSIDE apt-get install -y --force-yes virtualbox-guest-additions.iso
#INSIDE mkdir -p /tmp/user/0 # necessary hack
#INSIDE apt-get install -y --force-yes virtualbox-guest-dkms


# build modules for specific kernel (sorry about the hack)
# maybe sudo dpkg -l | grep linux-image and pick the latest.
#export KERNEL_VERSION=$(ls $WORKDIR/filesystem_rw/usr/src/ | grep -E 'headers.+generic' | grep -oE '[0-9].+$')
#BREAKPOINT
#INSIDE dkms autoinstall -k $KERNEL_VERSION

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
# After you've modified the kernel, init scripts or added new kernel
# modules, you need to rebuild the initrd.gz file and substitute it into
# the casper directory.
#INSIDE mkinitramfs -o /initrd.gz 2.6.15-26-k7
#mv edit/initrd.gz iso_rw-cd/casper/
# may need to convert to LZ gzip -dc initrd.gz | sudo lzma -7 > initrd.lz


# Utterly stupid hack required to fix keyboard map for installer on livecd.
# must be done last, otherwise clobbered by ubiquity update.
# .Xmodmap is used for live session. /etc/default/keyboard is the debian
# X/console keyboard main config file. `setxkbmap gb` would also work in
# session.
sed -i -re "s/'en': *'us',/'en': 'gb',/g" \
	$WORKDIR/filesystem_rw/usr/lib/ubiquity/ubiquity/misc.py

rm -rf $WORKDIR/filesystem_rw/tmp/*
rm     $WORKDIR/filesystem_rw/etc/skel/.bash_history || true # don't 'fail'

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

# clean, MUST MAKE SURE EVERYTHING IS UNMOUNTED FIRST, PARTICULARLY dev
# OR PREPARE FOR CORE MELTDOWN
# now umount (unmount) special filesystems before creation of iso
# This is handled by TRAP


# TODO? modify isolinux so that default is toram (current use case uses grub on
# flash drive)

# TODO? EFI support for grub2+flash drive, so can boot on mac.


# Example: burn the image to CD with:
#cdrecord dev=/dev/cdrom ubuntu-9.04-desktop-i386-custom.iso

# Could order files to reduce seeking time, but not normally used from CD any more.
# http://lichota.net/~krzysiek/projects/kubuntu/dapper-livecd-optimization/

# To virtualise and test:

#sudo apt-get install qemu kvm
#sudo adduser naggie kvm
#qemu-system-x86_64 -m 1024 -usbdevice tablet -k en-gb -vnc :0,lossy -vga std -cdrom darkbuntu-naggie.iso
#
# After this, on an intermediate host
#
# forward port 5900, which is :0
#ssh -g -L 5900:localhost:5900 naggie@chell.darksky.io
#
#
# Then connect using a vncviewer. Performance is pretty much as if it was
# local due to kvm and vnc. The letdown is really the fancy effects making
# it slow.
