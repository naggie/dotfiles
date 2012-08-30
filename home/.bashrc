# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# Useful title for ssh
printf "\033]0;$HOSTNAME\007" "$@"

# MOAR PROMPT
PS1='\n\[\e[0;32m\][\u@\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\]\[\e[0;32m\]]\[\e[m\] \[\e[32m\]\n\$\[\e[m\] '

# enable bash completion in interactive shells
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# if the command-not-found package is installed, use it
if [ -x /usr/lib/command-not-found -o -x /usr/share/command-not-found ]; then
	function command_not_found_handle {
	        # check because c-n-f could've been removed in the meantime
                if [ -x /usr/lib/command-not-found ]; then
		   /usr/bin/python /usr/lib/command-not-found -- "$1"
                   return $?
                elif [ -x /usr/share/command-not-found ]; then
		   /usr/bin/python /usr/share/command-not-found -- "$1"
                   return $?
		else
		   return 127
		fi
	}
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

source ~/.git-completion.bash
