# System-wide .bashrc file for interactive bash(1) shells.

# To enable the settings / commands in this file for login shells as well,
# this file has to be sourced in /etc/profile.

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# Useful title.
printf "\033]0;$HOSTNAME\007" "$@"
#printf "\033]0;Aperture Laboratories Inc.\007" "$@"

# MOAR PROMPT
PS1='\n\[\e[0;32m\][\u@\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\]\[\e[0;32m\]]\[\e[m\] \[\e[1;32m\]\n\$\[\e[m\] \[\e[1;37m\]'

# Commented out, don't overwrite xterm -T "title" -n "icontitle" by default.
# If this is an xterm set the title to user@host:dir
#case "$TERM" in
#xterm*|rxvt*)
#    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
#    ;;
#*)
#    ;;
#esac

# enable bash completion in interactive shells
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# sudo hint
if [ ! -e "$HOME/.sudo_as_admin_successful" ] && [ ! -e "$HOME/.hushlogin" ] ; then
    case " $(groups) " in *\ admin\ *)
    if [ -x /usr/bin/sudo ]; then
	cat <<-EOF
	To run a command as administrator (user "root"), use "sudo <command>".
	See "man sudo_root" for details.

	EOF
    fi
    esac
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

alias sagi='yes | sudo apt-get install'


# Tar can now do this by itself with -xf
extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1       ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
}

function cd()
{
	if [ -z $* ]; then
		builtin cd ~ && ls
	else
		builtin cd "$*" && ls
	fi
}

# fix annoying accidental commits and amends
# and other dangerous commands
export HISTIGNORE='git*--amend*:ls:cd:git*-m*:git*-am*:git*-f*:rm -rf*'
export HISTCONTROL=ignoredups

export EDITOR=vim
export PATH=$PATH:~/bin/

# fix backspace on some terminals
stty erase ^?
#stty erase ^H

# colour schemes must work, and tmux should not complain when it thinks the term is rubbish
alias tmux='TERM=screen-256color-bce tmux'
alias tm='test -z $TMUX && (tmux a || tmux)'

#TERM=xterm-256color

test -e /usr/bin/keychain && eval `keychain --quiet --eval ~/.ssh/id_rsa`

test -e /usr/bin/dircolors && eval $(dircolors ~/.dir_colors)

source ~/.git-completion.bash
