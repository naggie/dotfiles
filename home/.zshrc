# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_CUSTOM=~/.oh-my-zsh-custom/
ZSH_THEME="naggie"

DISABLE_AUTO_UPDATE="true"

# disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# disable command auto-correction.
# DISABLE_CORRECTION="true"

# display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# This makes repository status check for large repositories much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# oh-my-zsh plugins in $ZSH/plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

