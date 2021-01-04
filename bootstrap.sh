#!/bin/sh

# Note (only) this script is borne-shell compatible so it can bootstrap FreeBSD

# This script should be run as the target user. It uses sudo where appropriate.

# See README.md for "Mode of operation" for an explanation of what this script does.
ORIGIN=https://github.com/naggie/dotfiles.git

# exit on error
set -e

# Supportted platforms. For more specific stuff, such as extra packages for
# desktop vs server or version specific stuff, put that logic in the platform
# specific install-dependencies script.
ARCH_AMD64=ARCH_AMD64
MACOS_AMD64=MACOS_AMD64
UBUNTU_AMD64=UBUNTU_AMD64
POPOS_AMD64=POPOS_AMD64
KUBUNTU_AMD64=KUBUNTU_AMD64
ELEMENTARYOS_AMD64=ELEMENTARYOS_AMD64
FEDORA_AMD64=FEDORA_AMD64
RASPBIAN_ARMV5=RASPBIAN_ARMV5
FREEBSD_AMD64=FREEBSD_AMD64

# authorise sudo early on
if ! sudo -n echo 2>/dev/null; then
    echo "Please enter sudo password. Sudo session will be kept alive until this script exits."
    # sudo -v is technically correct but asks for a non-existent password on fresh AWS Ubuntu AMIs
    sudo echo -n
fi

# sudo keepalive. This will keep the sudo watchdog fed until this script exits.
# This works buy poking the parent process to see if it's still alive.
while true; do sudo -n true; sleep 15; kill -0 "$$" || exit; done 2>/dev/null &

printf '\n\e[1;32m%s\e[m\n' "OS detection..."

if uname | grep -q Linux; then
    if ! command -v hostnamectl >/dev/null; then
        >&2 echo "Could not determine OS"
        exit 1
    fi

    if sudo hostnamectl | grep -q  "Arch " && getconf LONG_BIT | grep -q 64; then
        PLATFORM=$ARCH_AMD64
    elif sudo hostnamectl | grep -q "Ubuntu" && getconf LONG_BIT | grep -q 64; then
        PLATFORM=$UBUNTU_AMD64
    elif sudo hostnamectl | grep -q "Pop!_OS" && getconf LONG_BIT | grep -q 64; then
        PLATFORM=$POPOS_AMD64
    elif sudo hostnamectl | grep -q "Kubuntu" && getconf LONG_BIT | grep -q 64; then
        PLATFORM=$KUBUNTU_AMD64
    elif sudo hostnamectl | grep -q "elementary" && getconf LONG_BIT | grep -q 64; then
        PLATFORM=$ELEMENTARYOS_AMD64
    elif sudo hostnamectl | grep -q "Fedora" && getconf LONG_BIT | grep -q 64; then
        PLATFORM=$FEDORA_AMD64
    elif sudo hostnamectl | grep -q "Raspbian" && getconf LONG_BIT | grep -q 32; then
        PLATFORM=$RASPBIAN_ARMV5
    else
        >&2 echo "Unsupported OS"
        exit 1
    fi
elif uname | grep -q Darwin && getconf LONG_BIT | grep -q 64; then
    PLATFORM=$MACOS_AMD64
elif command -v freebsd-version && getconf LONG_BIT | grep -q 64; then
    PLATFORM=$FREEBSD_AMD64
else
    >&2 echo "Unsupported OS"
    exit 1
fi

echo $PLATFORM

printf '\n\e[1;32m%s\e[m\n' "Bootstrapping..."

# make sure git/sudo is installed
case $PLATFORM in
    $ARCH_AMD64)
        # try to install sudo if necessary and possible
        if ! command -v sudo > /dev/null; then
            if [ "$(id -u)" = 0 ]; then
                pacman -Sy --noconfirm sudo
            else
                >&2 echo "Could not bootstrap, sudo command not available / not running as root"
                exit 1
            fi
        fi

        sudo pacman -Sy --noconfirm git
        ;;
    $MACOS_AMD64)
        # triggers install of xcode cli tools or effectively does nothing
        git --version
        ;;
    $UBUNTU_AMD64)
        sudo apt-get -y update
        sudo apt-get -y install git
        ;;
    $ELEMENTARYOS_AMD64)
        sudo apt-get -y update
        sudo apt-get -y install git
        ;;
    $FEDORA_AMD64)
        sudo dnf -y install git
        ;;
    $RASPBIAN_ARMV5)
        sudo apt-get -y update
        sudo apt-get -y install git
        ;;
    $FREEBSD_AMD64)
        # try to install sudo if necessary and possible
        if ! command -v sudo > /dev/null; then
            if [ "$(id -u)" = 0 ]; then
                pkg install -y sudo
            else
                >&2 echo "Could not bootstrap, sudo command not available / not running as root"
                exit 1
            fi
        fi

        sudo pkg install -y git
        ;;
esac

# clone main repository to home and change to it
test ! -d ~/dotfiles && git clone $ORIGIN ~/dotfiles
cd ~/dotfiles
git pull --ff-only origin master || true
git branch --set-upstream-to=origin/master master

bash provision.sh $PLATFORM
