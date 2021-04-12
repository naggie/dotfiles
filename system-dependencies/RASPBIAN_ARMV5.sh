# tmpreaper tries to do a post-install "configuration" screen to warn the user.
export DEBIAN_FRONTEND=noninteractive

adhoc_ripgrep_linux_armv5
adhoc_fzf_linux_armv5

sudo apt-get -y update
sudo apt-get -y upgrade
# -E is necessary for DEBIAN_FRONTEND
sudo -E apt-get -y install \
    bash-completion \
    curl \
    direnv \
    git \
    git-crypt \
    gnupg2 \
    htop \
    httpie \
    jq \
    most \
    ncdu \
    pass \
    ssh \
    tig \
    tmpreaper \
    tmux \
    tree \
    vim \
    wget \
    zsh \
