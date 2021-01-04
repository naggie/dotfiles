#!/bin/bash

# Note -- this is not working or in use.

# TODO decide if this requires root or uses sudo
# TODO FDE
# TODO encrypted swap suitable for hibernation support
# TODO check for EFI

read -e -p "Target device: " device

if [ ! -b $device ]; then
    >&2 echo "$device is not a block device"
    exit 1
fi

read -e -p "Hostname: " hostname
read -e -p "Username: " username
read -e -s -p "User / FDE Password: " passwd

set -e
# housekeeping
timedatectl set-ntp true
loadkeys uk

# partition disk

# TODO commands piped into fdisk or sfdisk which is a scripted fdisk
# https://superuser.com/questions/332252/how-to-create-and-format-a-partition-using-a-bash-script
# https://en.wikipedia.org/wiki/Partition_type
#cat /sys/block/sda/queue/hw_sector_size
cat <<- EOF | sfdisk $device
    label: gpt
    size=3072000, type=U
    type=L
EOF

# format partitions
mkfs.msdos -F32 ${device}1
mkfs.xfs ${device}2

# mount partitions
root=$(mktemp -d)
boot=${root}/boot
mount ${device}2 $root
mount ${device}1 $boot

# install base system + sudo
pacstrap $root base sudo

# generate fstab
genfstab -U $root >> /mnt/etc/fstab

# set hostname
echo $hostname > ${root}/etc/hostname
echo $hostname > ${root}/etc/hostname
cat <<-EOF > ${root}/etc/hosts
    127.0.0.1 localhost
    ::1       localhost
    127.0.1.1 $hostname
EOF

# set system clock offset
arch-chroot $root hwclock --systohc

# make user account + set passwd
# note that as sudo is used, there's no root password to be set.
arch-chroot $root useradd \
	--create-home \
	--groups wheel,adm,games,http,log,rfkill,sys,users,uucp \
	--shell /bin/bash $username

echo -n "${password}" | arch-chroot $root passwd --stdin $username

# Install Grub EFI bootloader, generate config to load existing kernel and
# early microcode
grub-install --target=x86_64-efi --efi-directory=$boot --bootloader-id=GRUB
arch-chroot $root pacman --noconfirm -Sy intel-ucode amd-ucode
arch-chroot $root grub-mkconfig -o /boot/grub/grub.cfg

# copy dotfiles
cp -a ../dotfiles/ ${root}/home/${username}

# provision using dotfiles
arch-chroot $root /home/${username}/dotfiles/provision.sh

# unmount
umount $boot
umount $root
