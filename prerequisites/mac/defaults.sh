#! /bin/bash
# initial mac setup

# disable warning when changing file extensions
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# enable disk utility debug menu
defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool true

# enable text selection in quick look
defaults write com.apple.finder QLEnableTextSelection -boolean YES

# disable dashboard because it sucks
defaults write com.apple.dashboard mcx-disabled -boolean YES

# make the user library folder visible again
chflags nohidden ~/Library/

# stop preview from opening every PDF you've ever opened every time you view a PDF
# (how did apple think this was a good idea!?!?!)
defaults write com.apple.Preview NSQuitAlwaysKeepsWindows -bool false

# refresh stuff
killall Dock
killall Finder
