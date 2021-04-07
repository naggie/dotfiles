#!/usr/bin/env bash
# This script configures the user account by copying dotfiles and running
# commands that result in persistent configuration changes.

if [ $SUDO_USER ] && [ $HOME != /etc/skel ] && [ $HOME != /root ]; then
    >&2 echo "This script must not be run via sudo (to avoid home directory file permission issues)"
    exit 1
fi

# exit on error
set -Eeo pipefail

cd $(dirname $0)

PLATFORM=$(uname)

test -d ~/.vim/ && rm -rf ~/.vim/
test -d ~/.zsh/ && rm -rf ~/.zsh/
test -d ~/.fzf/ && rm -rf ~/.fzf/

mkdir -p ~/.local/bin
mkdir -p ~/.ssh
mkdir -p ~/.gnupg

# Ubuntu creates some annoying empty directories. Delete if empty.
rmdir Documents/ Pictures/ Public/ Videos/ &>/dev/null || true

# copy dotfiles separately , normal glob does not match
cp -r home/.??* ~
cp -a scripts/* ~/.local/bin/

# pinentry program and gpg agent socket needs absolute path and can't expand ~,
# so do it here.
echo pinentry-program ~/.local/bin/pinentry-sane >> ~/.gnupg/gpg-agent.conf
echo extra-socket $(gpgconf --list-dirs | grep agent-extra-socket | cut -f 2 -d :) >> ~/.gnupg/gpg-agent.conf

if [ $PLATFORM == 'Darwin' ]; then
    cp -r home/Library ~
    defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false
    defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
    defaults write NSGlobalDomain AppleShowAllExtensions -bool true
    chflags nohidden ~/Library/
    # stop preview from opening every PDF you've ever opened every time you view a PDF
    # (how did apple think this was a good idea!?!?!)
    defaults write com.apple.Preview NSQuitAlwaysKeepsWindows -bool false
    # Check for software updates daily, not just once per week
    defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
    # Trackpad: enable tap to click for this user and for the login screen
    defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
    defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
    defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
    # Disable auto-correct
    defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
    # Finder: show status bar, path bar, posix path
    defaults write com.apple.finder ShowStatusBar -bool true
    defaults write com.apple.finder ShowPathbar -bool true
    defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
    # When performing a search, search the current folder by default
    defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
    # remove everything from dock (only active applications should be there, as
    # I use spotlight to launch apps with CMD+Space)
    defaults write com.apple.dock persistent-apps -array

    # map caps lock to ESC
    hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x700000039,"HIDKeyboardModifierMappingDst":0x700000029}]}' > /dev/null

    # refresh stuff (killing will presumably make the watchdog restart the application)
    # disabled Dock killing as it makes it jump in front on fullscreen which is irritating
    #killall Dock
    #killall Finder
    #killall SystemUIServer
fi

# reload TMUX config if running inside tmux
if [ -n "$TMUX" ]; then
	tmux source-file ~/.tmux.conf >/dev/null
    export SYSTEM_COLOUR=$(~/.local/bin/system-colour $HOSTNAME)
    tmux set -g status-left-style bg=colour${SYSTEM_COLOUR} &>/dev/null || true
fi

# also i3 (best effort)
which i3-msg &>/dev/null && i3-msg reload &>/dev/null || true

if [ $PLATFORM == 'Darwin' ]; then
    # 'Gah! Darwin!? XQuartz crashes in an annoying focus-stealing loop with this .xinirc. Removing...'
    rm ~/.xinitrc
elif [ -n "$DISPLAY" ] && which xrdb &>/dev/null; then
	xrdb -merge ~/.Xresources
fi

if [ -f ~/.bash_history ] && [ ! -f ~/.history ]; then
    cp ~/.bash_history ~/.history
fi

# set important permissions
touch ~/.history
touch ~/.ssh/known_hosts
touch ~/.ssh/authorized_keys
chmod 600 ~/.history
chmod 700 ~/.ssh
chmod 600 ~/.ssh/known_hosts
chmod 600 ~/.ssh/authorized_keys
chmod 600 ~/.ssh/config
chmod 0700 ~/.gnupg
chmod 0600 ~/.gnupg/*.conf

# trust github pubkey
grep -q github.com ~/.ssh/known_hosts || cat <<EOF >> ~/.ssh/known_hosts
github.com ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAq2A7hRGmdnm9tUDbO9IDSwBK6TbQa+PXYPCPy6rbTrTtw7PHkccKrpp0yVhp5HdEIcKr6pLlVDBfOLX9QUsyCOV0wzfjIJNlGEYsdlLJizHhbn2mUjvSAHQqZETYP81eFzLQNnPHt4EVVUh7VfDESU84KezmD5QlWpXLmvU31/yMf+Se8xhHTvKSCZIFImWwoG6mbUoWf9nzpIoaSjB+weqqUUmpaaasXVal72J+UX2B+2RPW3RcT0eOzQgqlJL3RKrTJvdsjE3JEAvGq3lGHSZXy28G3skua2SmVi/w4yCE6gbODqnTWlg7+wC604ydGXA8VJiS5ap43JXiUFFAaQ==
EOF

if PATH="$PATH:/Applications/Firefox.app/Contents/MacOS/" which firefox &> /dev/null; then
    etc/firefox/customise-profile
fi

# stop and stub systemd user gpg-agent
systemctl --user stop gpg-agent.service &>/dev/null || true
systemctl --user stop gpg-agent.socket &>/dev/null || true
systemctl --user daemon-reload &>/dev/null || true

# if GPG agent is running but doesn't yet know about the extra socket, restart
# it. This can happen with system-managed gpg-agents. This should happen on local machine only.
if [ ! -S $(gpgconf --list-dirs | grep agent-extra-socket | cut -f 2 -d :) ] && [ -z "$SSH_CONNECTION" ]; then
    gpgconf --kill gpg-agent
    gpg-connect-agent /bye
fi


# copy terminal font and rebuild font cache if necessary
if [ $PLATFORM == 'Darwin' ]; then
    mkdir -p ~/Library/Fonts
    cp etc/fonts/* ~/Library/Fonts/
else
    # list fonts with fc-list
    mkdir -p ~/.fonts
    cp etc/fonts/* ~/.fonts/
    if [ etc/fonts/Hack-Regular.ttf -nt ~/.fonts/Hack-Regular.ttf ]; then
        fc-cache -f -v
    fi
fi

if [[ $XDG_CURRENT_DESKTOP == *GNOME* ]]; then
    # lock after half an hour
    gsettings set org.gnome.desktop.session idle-delay 1800
    gsettings set org.gnome.desktop.screensaver lock-delay 10
    gsettings set org.gnome.desktop.screensaver lock-enabled true

    # I never see my desktop background. Use a solid colour, it's just noise
    # between windows otherwise.
    gsettings set org.gnome.desktop.background primary-color '#2f383d'
    gsettings set org.gnome.desktop.background secondary-color '#2f383d'
    gsettings set org.gnome.desktop.background color-shading-type 'solid'
    gsettings set org.gnome.desktop.background picture-uri ""

    # NOTE: dconf expects JSON encoded values hence the dual quotes.
    # load gnome terminal conf
    # made with dconf dump /org/gnome/terminal/legacy/profiles:/
    # b1dcc9dd-5262-4d8d-a863-c897e6d979b9 is the default profile choice identifier for everyone
    dconf load /org/gnome/terminal/legacy/profiles:/ < etc/gnome-terminal-profiles.dconf

    # set caps lock to act as esc if possible
    dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:escape']"

    # prevent auto sleep on battery power
    dconf write /org/gnome/settings-daemon/plugins/power/sleep-inactive-battery-type '"nothing"'

    # disable lock screen notifications which, if present, keep my 5 screens on which use 200W all night...
    dconf write /org/gnome/desktop/notifications/show-in-lock-screen false

    # use editable location bar (dumbed down interfaces are annoying)
    dconf write /org/gnome/nautilus/preferences/always-use-location-entry true

    # disable mouse acceleration. It's much more accurate to have a high-DPI
    # mouse such as a G403 set at 1600DPI on default (non-scaled) speed. Note,
    # use "piper" to set the lights which are stored in an eeprom.
    dconf write /org/gnome/desktop/peripherals/mouse/accel-profile '"flat"'
    dconf write /org/gnome/desktop/peripherals/mouse/speed 0.0

    # Pop!_OS
    dconf write /org/gnome/shell/extensions/pop-shell/tile-by-default true
    dconf write /org/gnome/shell/extensions/pop-shell/active-hint true
    dconf write /org/gnome/shell/extensions/pop-shell/hint-color-rgba '"rgba(255,255,255,0.75)"'
    dconf write /org/gnome/shell/extensions/pop-shell/gap-inner 'uint32 5'
    dconf write /org/gnome/shell/extensions/pop-shell/gap-outer 'uint32 5'
fi

if [[ $XDG_CURRENT_DESKTOP == Pantheon ]]; then
    gsettings set io.elementary.terminal.settings background '#000000000000'
    gsettings set io.elementary.terminal.settings foreground '#ffffffffffff'
    gsettings set io.elementary.terminal.settings natural-copy-paste false
    gsettings set io.elementary.terminal.settings unsafe-paste-alert false
fi

# now is a good time to associate the yubikey GPG private keys if it is connected
gpg --card-status &> /dev/null || true

# opportunistically change shell
if sudo -n echo 2>/dev/null && command -v zsh >/dev/null; then
    sudo chsh -s $(command -v zsh) $USER || true
fi

# just some checks
if [ ! -f ~/.netrc ]; then
    echo
    printf '\n\e[1;33m%s\e[m\n' "No ~/.netrc found, required for github private access for golang"
    echo "format: machine github.com login naggie password API_KEY"
    echo
fi

if [ ! -f ~/.env-local.sh ]; then
    echo
    printf '\n\e[1;33m%s\e[m\n' "No ~/.env-local.sh found. Suggested for machine specific things."
    echo "format: machine github.com login naggie password API_KEY"
    echo
fi
