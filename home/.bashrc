# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# update the values of LINES and COLUMNS. Automatically
shopt -s checkwinsize

# stop -bash: !": event not found
set +o histexpand

# correct minor spelling errors in cd
shopt -s cdspell

# Useful title for ssh
printf "\033]0;$HOSTNAME\007" "$@"

# MOAR PROMPT
PS1='\n\[\e[0;32m\]\u@\h \[\e[1;34m\]\w\[\e[m\]\n\$ '


# git completion (maybe other completion too)
[ -f /etc/bash_completion ] && source /etc/bash_completion

# OS X via homebrew git completion via package bash-completion
[ -f /usr/local/etc/bash_completion ] && source /usr/local/etc/bash_completion

alias more=less
alias sagi='yes | sudo apt-get install'
alias grep='grep --color=auto'
alias ll='ls -al'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias c=cd
alias d=cd
alias sl=ls
alias l=ls
alias s=ls
alias gi=git
alias g=git
alias v=vim

# map completion for aliases
complete -o default -o nospace -F _git g

alias contains='find | xargs grep -iEl '

# hardcoded ssh completions (known_hosts is encrypted mostly)
complete -o default -W 'nodehost.darksky.io squirtle.darksky.io hailstorm.darksky.io blackmesa.darksky.io aperture.darksky.io chell.darksky.io snowstorm.darksky.io navcom.darksky.io deadknightsociety.org nova.darksky.io' ssh scp ping

# Homebrew completions
test -x /usr/local/bin/brew && source `brew --prefix`/Library/Contributions/brew_bash_completion.sh

PLATFORM=`uname`
if [[ $PLATFORM == 'Linux' ]]; then
	alias ls='ls --color=auto'
elif [[ $PLATFORM == 'Darwin' ]]; then
	alias ls='ls -G'
fi

# cd then ls
function cd()
{
	builtin cd "$@" && ls
}

# cheap coloured man pages. Yay!
man() {
	env \
	LESS_TERMCAP_mb=$(printf "\e[1;31m") \
	LESS_TERMCAP_md=$(printf "\e[1;31m") \
	LESS_TERMCAP_me=$(printf "\e[0m") \
	LESS_TERMCAP_se=$(printf "\e[0m") \
	LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
	LESS_TERMCAP_ue=$(printf "\e[0m") \
	LESS_TERMCAP_us=$(printf "\e[1;32m") \
	man "$@"
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

[ -x /usr/bin/keychain ] && [ -r ~/.ssh/id_rsa ] && eval `keychain --quiet --eval ~/.ssh/id_rsa`
test -x /usr/bin/dircolors && eval $(dircolors ~/.dir_colors)

# ls is the first thing I normally do when I log in. Let's hope it's not annoying
echo
echo -e "\033[37m> Welcome to $(hostname -s), $USER.\033[0m Files in $PWD are:"
echo
ls
