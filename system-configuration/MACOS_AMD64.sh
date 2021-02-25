# correct so alias works cross platform
ln -sf /usr/local/bin/gpg /usr/local/bin/gpg2

# exceptional
sudo chsh -s /usr/local/bin/zsh $(whoami)

# browserpass config
sudo mkdir -p "/Library/Application Support/Mozilla/NativeMessagingHosts/"
sudo cp etc/firefox/com.github.browserpass.native.json "/Library/Application Support/Mozilla/NativeMessagingHosts/"

# fix: zsh compinit: insecure directories, run compaudit for list.
sudo chmod -R 755 /usr/local/share/zsh
