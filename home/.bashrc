# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# update the values of LINES and COLUMNS. Automatically
shopt -s checkwinsize

# Useful title for ssh
printf "\033]0;$HOSTNAME\007" "$@"

# MOAR PROMPT
PS1='\n\[\e[0;32m\]\u@\h \[\e[1;34m\]\w\[\e[m\]\n\$ '

# enable bash completion in interactive shells
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
	. /etc/bash_completion
	source ~/.git-completion.bash
fi

alias more='less'
alias sagi='yes | sudo apt-get install'
alias grep='grep --color=auto'
alias ll='ls -al'
alias cd..='cd ..'
alias ..='cd ..'
alias sl='ls'
alias l='ls'
alias s='ls'

alias contains='find | xargs grep -iEl '

PLATFORM=`uname`
if [[ $PLATFORM == 'Linux' ]]; then
	alias ls='ls --color=auto'
elif [[ $PLATFORM == 'Darwin' ]]; then
	alias ls='ls -G'
fi

function cd()
{
	if [ -z $* ]; then
		builtin cd ~ && ls
	else
		builtin cd "$@" && ls
	fi
}

# fix annoying accidental commits and amends
# and other dangerous commands
export HISTIGNORE='git*--amend*:ls:cd:git*-m*:git*-am*:git*-f*:rm -rf*'
export HISTCONTROL=ignoredups:ignorespace

export EDITOR=vim
export PATH=$PATH:~/bin/

# fix backspace on some terminals
stty erase ^?
#stty erase ^H

# colour schemes must work, and tmux should not complain when it thinks the term is rubbish
alias tmux='TERM=screen-256color-bce tmux'
alias tm='test -z $TMUX && (tmux a || tmux)'

test -x /usr/bin/keychain && eval `keychain --quiet --eval ~/.ssh/id_rsa`

test -x /usr/bin/dircolors && eval $(dircolors ~/.dir_colors)
