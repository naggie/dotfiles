# If not running interactively, don't do anything
[ -z "$PS1" ] && return

export PATH=~/bin:/usr/local/bin:/usr/local/share/npm/bin:$PATH

# TERM TYPE Inside screen/tmux, it should be screen-256color -- this is
# configured in .tmux.conf.  Outside, it's up to you to make sure your terminal
# is configured to provide the correct, 256 color terminal type. For putty,
# it's putty-256color (which fixes a lot of things) and otherwise it's probably
# something like xterm-256color. Most, if not all off the terminals I use
# support 256 colors, so it's safe to force it as a last resort, but warn.
if [ -z $TMUX ] && test 0$(tput colors 2>/dev/null) -ne 256; then
	echo -e "\e[00;31m> TERM '$TERM' is not a 256 colour type! Overriding to xterm-256color. Please set. EG: Putty should have putty-256color.\e[00m"
	export TERM=xterm-256color
fi

# only on new shell, fail silently. Must be non-invasive.
[ ! $TMUX ] && ~/bin/server-splash 2>/dev/null

# vim -X = don't look for X server, which can be slow
export EDITOR='vim -X'

# sometimes TMUX can get confused about whether unicode is supported to draw
# lines or not. tmux may draw x and q instead, or default to - and | which is
# ascii. This also allows other programs to use nice UTF-8 symbols, such as
# NERDtree in vim. So very awesome.
export LANG=en_GB.utf8

# mac bc read the conf file to allow floating point maths
# and load the standard library
export BC_ENV_ARGS="$HOME/.bcrc -l"
# also, copy the fish bc wrapper
function math {
	echo "$@" | bc
}

# On some machines, hostname is not set. Using $(hostname) to do this is slow,
# so just read from /etc/hostname)
[ $HOSTNAME ] || HOSTNAME=$(cat /etc/hostname 2>/dev/null || hostname)
export HOSTNAME

# if you call a different shell, this does not happen automatically. WTF?
export SHELL=$(which zsh)

# available since 4.8.0
export GCC_COLORS=1

echo -ne "\n\033[37m> Welcome to $HOSTNAME, $USER!\033[0m "

# AUTOMATIC TMUX
# must not launch tmux inside tmux (no memes please)
# must be installed/single session/no clients
# term must be sufficiently wide
test -z "$TMUX" \
	&& which tmux &> /dev/null \
	&& test $(tmux list-sessions 2> /dev/null | wc -l) -eq 1 \
	&& test $(tmux list-clients 2> /dev/null | wc -l) -eq 0 \
	&& test $(tput cols) -gt 120 \
	&& tmux attach


# Useful title for ssh
printf "\033]0;%s\007" $HOSTNAME

# only auto set title based on initial pane
# this detects if the pane is the first in a new window
test $TMUX \
	&& test $(tmux list-panes | wc -l) -eq 1 \
	&& TMUX_PRIMARY_PANE=set

## Update TMUX title with path
#function onprompt {
#	# only if TMUX is running, and it's safe to assume the user wants to have the tab automatically named
#	if [ -n "$TMUX" ] && [ $TMUX_PRIMARY_PANE ]; then
#
#		# to a clever shorthand representation of the current dir
#		LABEL=$(echo $PWD | sed s/[^a-zA-Z0-9\/]/-/g | grep -oE '[^\/]+$')
#
#		# do the correct escape codes. BTW terminal title is always set to hostname
#		echo -ne "\\033k$LABEL\\033\\\\"
#	fi
#
#	# write that command to history for other sessions
#	history -a
#}
#PROMPT_COMMAND=onprompt

# SSH wrapper to magically LOCK tmux title to hostname, if tmux is running
# prefer clear terminal after SSH, on success only
function ssh {
	if test $TMUX; then
		# find host from array (in a dumb way) by getting last argument
		# It uses the fact that for implicitly loops over the arguments
		# if you don't tell it what to loop over, and the fact that for
		# loop variables aren't scoped: they keep the last value they
		# were set to
		# http://stackoverflow.com/questions/1853946/getting-the-last-argument-passed-to-a-shell-script
		for host; do true; done

		printf "\\033k%s\\033\\\\" $host

		tmux set -q allow-rename off
		command ssh "$@" && clear
		tmux set -q allow-rename on
	else
		command ssh "$@" && clear
	fi
}


#function __exit_warn {
#	# test status of last command without affecting it
#	status=$?
#	test $status -ne 0 \
#		&& printf "\n\33[31mExited with status %s\33[m" $status
#}

# aliases shared between fish and bash
source ~/.aliases

# get new or steal existing tmux
function tm {
	# must not already be inside tmux
	test ! $TMUX || return
	# detach any other clients
	# attach or make new if there isn't one
	tmux attach -d || tmux
}

# patches for Mac OS X
PLATFORM=`uname`
if [[ "$PLATFORM" == 'Darwin' ]]; then
	#alias ls='ls -G'
	unalias ls
	# see `locale -a`
	export LANG='en_GB.UTF-8'
fi

# cd then ls
function cd {
	builtin cd "$@" && ls
}

export PAGER=~/bin/vimpager

[ -x /usr/bin/keychain ] && [ -r ~/.ssh/id_rsa ] && eval `keychain --nogui --quiet --eval ~/.ssh/id_rsa`
test -x /usr/bin/dircolors && eval $(dircolors ~/.dir_colors)

# ls is the first thing I normally do when I log in. Let's hope it's not annoying
echo "Files in $PWD are:"
echo
# neat ls with fixed width
COLUMNS=80 ls

echo -e "\n> zsh, dotfiles version $(cat ~/.naggie-dotfiles-version)"

# Disable stupid flow control. Ctrl+S can disable the terminal, requiring
# Ctrl+Q to restore. It can result in an apparent hung terminal, if
# accidentally pressed.
stty -ixon -ixoff
# TODO test in ZSH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# or, set purely here?
# # TODO naggie theme
#ZSH_CUSTOM=~/.oh-my-zsh-custom/
#ZSH_THEME="naggie"

DISABLE_AUTO_UPDATE="true"

DISABLE_AUTO_TITLE="true"

# display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# This makes repository status check for large repositories much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# oh-my-zsh plugins in $ZSH/plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# TODO: manpath in all shell RCs
# export MANPATH="/usr/local/man:$MANPATH"

