# tmpreaper tries to do a post-install "configuration" screen to warn the user.
export DEBIAN_FRONTEND=noninteractive

# -E is necessary for DEBIAN_FRONTEND
sudo -E apt-get -y update
sudo -E apt-get install -y software-properties-common
sudo -E apt-add-repository --yes multiverse
sudo -E apt-get -y update
sudo -E apt-get -y upgrade

# CLI only
sudo -E apt-get -y install --install-recommends \
    bash-completion \
    curl \
    dconf-cli \
    entr \
    ffmpeg \
    gimp \
    git \
    git-crypt \
    gnupg2 \
    htop \
    httpie \
    httrack \
    ipython3 \
    jq \
    language-pack-en \
    libsox-fmt-mp3 \
    libssl-dev \
    most \
    ncdu \
    parallel \
    pass \
    pcscd \
    picocom \
    pwgen \
    python \
    python3 \
    python3-pip \
    rename \
    scdaemon \
    sox \
    ssh \
    sshfs \
    tig \
    tmpreaper \
    tmux \
    tree \
    upx \
    vim \
    vlc \
    wget \
    zsh \

# prevent typos from causing slowdowns
sudo -E apt-get -y remove command-not-found

# new in 20.04, might not exist if older ubuntu is targeted (16.04, 18.04)
sudo -E apt-get -y install zfsutils-linux || true
sudo -E apt-get -y install wireguard wireguard-tools || true
sudo -E apt-get -y install pass-extension-otp || true

# docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo -E add-apt-repository --yes "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo -E apt-get -y update
sudo -E apt-get -y install docker-ce docker-ce-cli containerd.io docker-compose || true # currently fails on 20.10,  not available.

# yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo -E apt-get -y update
sudo -E apt-get -y install yarn

# adhoc installs
adhoc_dstask_linux_amd64
adhoc_ripgrep_linux_amd64
adhoc_fzf_linux_amd64
adhoc_neovim_linux_amd64
adhoc_golang_linux_amd64
adhoc_hugo_linux_amd64
adhoc_ffsend_linux_amd64

# GUI if applicable
if [ -d /usr/share/xsessions ] && [ ! -z "$(ls /usr/share/xsessions/)" ]; then
    sudo -E apt-get -y update
    sudo apt-get -y install firefox powertop kicad

    # only available in later versions of ubuntu. Install if available.
    sudo apt-get -y install yubikey-manager || true
    sudo apt-get -y install kicad || true

    adhoc_alacritty_linux_amd64
    adhoc_browserpass_linux_amd64
    adhoc_openscad_linux_amd64
    adhoc_cura_linux_amd64
fi
