# ad-hoc installs for when programs are not packaged or out of date.
# checksummed to prevent forward supply channel attack

function adhoc_dstask_linux_amd64 {
    EXE="$(
        obtain \
            https://github.com/naggie/dstask/releases/download/v0.24/dstask-linux-amd64 \
            8bbb40089db5ed4e5c2ca35a0dd05900397f6af906d3349d87c940ec2cdf175a
    )"
    sudo cp "${EXE}" /usr/local/bin/dstask.new
    sudo chmod +x /usr/local/bin/dstask.new
    sudo mv -f /usr/local/bin/{dstask.new,dstask}
}

function adhoc_ripgrep_linux_amd64 {
    TARGZ="$(
        obtain \
            https://github.com/BurntSushi/ripgrep/releases/download/12.1.0/ripgrep-12.1.0-x86_64-unknown-linux-musl.tar.gz \
            c6bba6d643b1a1f18994683e26d4d2b998b41a7a7360e63cb8ec9db8ffbf793c
    )"
    [ -f /usr/local/bin/rg ] && sudo rm -f /usr/local/bin/rg
    sudo tar -C /usr/local/bin/ --strip=1 -xzf "$TARGZ" ripgrep-12.1.0-x86_64-unknown-linux-musl/rg
}

function adhoc_fzf_linux_amd64 {
    TARGZ="$(
        obtain \
            https://github.com/junegunn/fzf/releases/download/0.25.0/fzf-0.25.0-linux_amd64.tar.gz \
            b80c0152e071d5d5da739a577402c436293474e477b7d283ff033bd081e5d071
    )"
    [ -f /usr/local/bin/fzf ] && sudo rm -f /usr/local/bin/fzf
    sudo tar -C /usr/local/bin -xzf "$TARGZ"
}

function adhoc_neovim_linux_amd64 {
    # don't write directly, swap atomically so running nvim won't block)
    EXE="$(
        obtain \
            https://github.com/neovim/neovim/releases/download/v0.3.3/nvim.appimage \
            6c937c0a2b37e4ad99bae2f37f461ae47a590e62bddecf903b0b5bafe0eaaadb
    )"
    sudo cp "${EXE}" /usr/local/bin/nvim.new
    sudo chmod +x /usr/local/bin/nvim.new
    sudo mv -f /usr/local/bin/{nvim.new,nvim}
}

function adhoc_golang_linux_amd64 {
    # remove "old" golang,  might glash if upgraded
    sudo rm -rf /usr/local/go
    TARGZ="$(
        obtain \
            https://golang.org/dl/go1.16.3.linux-amd64.tar.gz \
            951a3c7c6ce4e56ad883f97d9db74d3d6d80d5fec77455c6ada6c1f7ac4776d2
    )"
    sudo tar -C /usr/local -xzf "$TARGZ"
}

function adhoc_alacritty_linux_amd64 {
    TARGZ="$(
        obtain \
            https://github.com/jwilm/alacritty/releases/download/v0.3.3/Alacritty-v0.3.3-ubuntu_18_04_amd64.tar.gz \
            b60856ef0d8861762465090501596b6d2cfeba34a6335ef6b718be878a39c0c0
    )"
    [ -f /usr/local/bin/alacritty ] && sudo rm -f /usr/local/bin/alacritty
    sudo tar -C /usr/local/bin/ -xzf "$TARGZ"
}

function adhoc_browserpass_linux_amd64 {
    TARGZ="$(
        obtain \
            https://github.com/browserpass/browserpass-native/releases/download/3.0.6/browserpass-linux64-3.0.6.tar.gz \
            f63047cbde5611c629b9b8e2acf6e8732dd4d9d64eba102c2cf2a3bb612b3360
    )"
    [ -f /usr/local/bin/browserpass ] && sudo rm -f /usr/local/bin/browserpass
    sudo tar -C /usr/local/bin/ --strip=1 -xzf "$TARGZ" browserpass-linux64-3.0.6/browserpass-linux64
    sudo mv /usr/local/bin/browserpass-linux64 /usr/local/bin/browserpass
}

function adhoc_openscad_linux_amd64 {
    EXE="$(
        obtain \
            https://files.openscad.org/snapshots/OpenSCAD-2021.03.16.ai7613-2021.03.16.ai7613-x86_64.AppImage \
            509c021bf41af8ddacebe77aaaa78840412bd16a7fd0f3af6013dff8eaea1bac
    )"
    sudo cp "${EXE}" /usr/local/bin/openscad.new
    sudo chmod +x /usr/local/bin/openscad.new
    sudo mv -f /usr/local/bin/{openscad.new,openscad}
}

function adhoc_browserpass_macos_amd64 {
    TARGZ="$(
        obtain \
            https://github.com/browserpass/browserpass-native/releases/download/3.0.6/browserpass-darwin64-3.0.6.tar.gz \
            422bc6dd1270a877af6ac7801a75b4c4b57171d675c071470f31bc24196701e3
    )"
    [ -f /usr/local/bin/browserpass ] && sudo rm -f /usr/local/bin/browserpass
    sudo tar -C /usr/local/bin/ --strip=1 -xzf "$TARGZ" browserpass-darwin64-3.0.6/browserpass-darwin64
    sudo mv /usr/local/bin/browserpass-darwin64 /usr/local/bin/browserpass
}

function adhoc_ripgrep_linux_armv5 {
    TARGZ="$(
        obtain \
            https://github.com/BurntSushi/ripgrep/releases/download/12.1.0/ripgrep-12.1.0-arm-unknown-linux-gnueabihf.tar.gz \
            9be3763d0215ad06fd6e0f6603c8b2680c9d7be5024811b82ae17d1ed823df70
    )"
    [ -f /usr/local/bin/rg ] && sudo rm -f /usr/local/bin/rg
    sudo tar -C /usr/local/bin/ --strip=1 -xzf "$TARGZ" ripgrep-12.1.0-arm-unknown-linux-gnueabihf/rg
}

function adhoc_fzf_linux_armv5 {
    TARGZ="$(
        obtain \
            https://github.com/junegunn/fzf/releases/download/0.25.0/fzf-0.25.0-linux_armv5.tar.gz \
            12062c479c7137f628cf4c9bfdcbc1c565d2e5c54763b61abf7d98a9125dcb41
    )"
    [ -f /usr/local/bin/fzf ] && sudo rm -f /usr/local/bin/fzf
    sudo tar -C /usr/local/bin/ -xzf "$TARGZ"
}

function adhoc_cura_linux_amd64 {
    EXE="$(
        obtain \
            https://github.com/Ultimaker/Cura/releases/download/4.9.1/Ultimaker_Cura-4.9.1.AppImage \
            6a7d66809aa57cc01d90a06b177d16240f15af48ddbf638602695d3b06ff7fb1
    )"
    sudo cp "${EXE}" /usr/local/bin/cura.new
    sudo chmod +x /usr/local/bin/cura.new
    sudo mv -f /usr/local/bin/{cura.new,cura}
}

function adhoc_hugo_linux_amd64 {
    TARGZ="$(
        obtain \
            https://github.com/gohugoio/hugo/releases/download/v0.83.1/hugo_extended_0.83.1_Linux-64bit.tar.gz \
            7dab678e7bd47de76b311c1dc51257d1ba41d95e8e1d30869f701e1628261447
    )"
    [ -f /usr/local/bin/hugo ] && sudo rm -f /usr/local/bin/hugo
    sudo tar -C /usr/local/bin/ -xzf "$TARGZ" hugo
}

function adhoc_ffsend_linux_amd64 {
    EXE="$(
        obtain \
            https://github.com/timvisee/ffsend/releases/download/v0.2.58/ffsend-v0.2.58-linux-x64-static \
            fb7c918b583197be3e553af5931816a885c1934a0adc16f2f03dfeed21b8ec0e
    )"
    sudo cp "${EXE}" /usr/local/bin/ffsend.new
    sudo chmod +x /usr/local/bin/ffsend.new
    sudo mv -f /usr/local/bin/{ffsend.new,ffsend}
}

function adhoc_typos_linux_amd64 {
    TARGZ="$(
        obtain \
            https://github.com/crate-ci/typos/releases/download/v1.0.4/typos-v1.0.4-x86_64-unknown-linux-gnu.tar.gz \
            d50f8a0793d200e6e3222f2ec9eb27e04c89628c026e9e3495a191a48de27aee
    )"
    [ -f /usr/local/bin/typos ] && sudo rm -f /usr/local/bin/typos
    sudo tar -C /usr/local/bin/ -xzf "$TARGZ"
}
