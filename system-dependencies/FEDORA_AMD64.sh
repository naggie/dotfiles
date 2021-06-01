sudo dnf upgrade -y
sudo dnf install -y \
    @development-tools \
    bash-completion \
    curl \
    dnf \
    direnv \
    fzf \
    git \
    git-crypt \
    git-subtree \
    gnupg2 \
    htop \
    httpie \
    httrack \
    hub \
    jq \
    most \
    ncdu \
    neovim \
    opensc \
    parallel \
    pass \
    picocom \
    python \
    python3 \
    python3-pip \
    ripgrep \
    sox \
    sudo \
    tig \
    tmux \
    tree \
    upx \
    vim \
    wget \
    wireguard-tools \
    yubikey-manager \
    zsh \

# stop typos from causing annoying install prompt
sudo dnf remove -y PackageKit-command-not-found

adhoc_dstask_linux_amd64
adhoc_golang_linux_amd64
adhoc_hugo_linux_amd64
adhoc_ffsend_linux_amd64
adhoc_typos_linux_amd64


# ZFS
sudo dnf install -y http://download.zfsonlinux.org/fedora/zfs-release$(rpm -E %dist).noarch.rpm
sudo dnf install -y kernel-devel zfs

# ZFS cockpit manager
# Consider also, cockpit. Can be installed by enabling the "headless" option in
# the fedora installer.
if [ -d /usr/share/cockpit ]; then
    DIR=$(mktemp -d)
    git clone https://github.com/optimans/cockpit-zfs-manager.git $DIR
    sudo cp -r $DIR/zfs /usr/share/cockpit
    rm -rf $DIR
    sudo systemctl restart cockpit
fi


# desktop only
if hostnamectl | grep -q Workstation; then
    adhoc_alacritty_linux_amd64
    adhoc_browserpass_linux_amd64
    adhoc_cura_linux_amd64

    sudo dnf install -y \
        kicad \
        kicad-packages3d \
        openscad
fi
