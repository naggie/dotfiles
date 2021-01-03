if [ ! -f /usr/local/bin/brew ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    git -C "/usr/local/Homebrew/Library/Taps/homebrew/homebrew-core" fetch
    brew update
fi

# recommended, uses /Applications now.
brew tap homebrew/cask
brew install --cask spectacle firefox alacritty mtmr

# flux is no longer required -- night shift!

# resolve possible coreutils conflict
brew unlink md5sha1sum || true

# Upgrade or install (logic necessary)
packages=(
    bash
    bash-completion@2
    brightness
    coreutils
    entr
    ffmpeg
    fzf
    git
    git-crypt
    gnupg2
    htop
    httpie
    httrack
    hub
    hugo
    iproute2mac
    jq
    most
    ncdu
    nvim
    openssh
    parallel
    pass
    picocom
    pinentry-mac
    ripgrep
    sox
    tig
    tmpreaper
    tmux
    tree
    upx
    vim
    wget
    ykman
    zsh
)

for package in "${packages[@]}"; do
    brew upgrade $package || brew install $package
done

# create alias for gsha256sum
ln -sf /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

adhoc_dstask_macos_amd64
adhoc_browserpass_macos_amd64
