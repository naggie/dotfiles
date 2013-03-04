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
chflags no hidden ~/Library/

# refresh stuff
killall Dock
killall Finder
