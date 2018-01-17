status --is-interactive; or exit 0

set -x GOPATH ~/gocode

set -x PATH ~/bin /usr/local/bin /usr/local/sbin /usr/local/share/npm/bin $GOPATH/bin /usr/local/go/bin $PATH

# TERM TYPE Inside screen/tmux, it should be screen-256color -- this is
# configured in .tmux.conf.  Outside, it's up to you to make sure your terminal
# is configured to provide the correct, 256 color terminal type. For putty,
# it's putty-256color (which fixes a lot of things) and otherwise it's probably
# something like xterm-256color. Most, if not all off the terminals I use
# support 256 colors, so it's safe to force it as a last resort, but warn.
if begin; test -z $TMUX ; and test (tput colors) -ne 256; end
	set -x TERM xterm-256color
	set_color red
	echo "> TERM '$TERM' is not a 256 colour type! Overriding to xterm-256color. Please set. EG: Putty should have putty-256color."
	set_color normal
end

# only on new shell, fail silently. Must be non-invasive.
test ! $TMUX; and ~/bin/server-splash ^/dev/null

# sometimes TMUX can get confused about whether unicode is supported to draw
# lines or not. tmux may draw x and q instead, or default to - and | which is
# ascii. This also allows other programs to use nice UTF-8 symbols, such as
# NERDtree in vim. So very awesome.
# Use locale-gen en_GB.UTF-8 to install
set -x LANG en_GB.UTF-8

# mac bc read the conf file to allow floating point maths
# and load the standard library
set -x BC_ENV_ARGS "$HOME/.bcrc -l"

function tmux_update_env --on-event fish_preexec
    # when an SSH connection is re-established, so is the agent connection.
    # Reload it automatically.
    # export is supported in later fish releases.
    test -z $TMUX; and eval (tmux show-env -s | grep 'SSH_AUTH_SOCK=\|DISPLAY=' | sed 's/^/export /g')
end

# Sometimes not set or fully qualified; simple name preferred.
set -x HOSTNAME (hostname -s)

# taken from hostname
set -x SYSTEM_COLOUR (python ~/bin/system-colour.py $HOSTNAME)
test $TMUX; and tmux set -g status-left-bg colour{$SYSTEM_COLOUR} ^/dev/null >/dev/null

if test $USER = root
    set PROMPT_COLOUR 160 # red
else
    set PROMPT_COLOUR $SYSTEM_COLOUR
end

# AUTOMATIC TMUX
# must not launch tmux inside tmux (no memes please)
test -z $TMUX
	# installed?
	and which tmux > /dev/null ^&1
	# only attach if single session
	and test (tmux list-sessions 2>/dev/null | wc -l) -eq 1
	# don't attach if already attached elsewhere
	and test (tmux list-clients 2>/dev/null | wc -l) -eq 0
	# terminal must be wide enough
	and test (tput cols) -gt 119
	# only then is is safe to assume it's OK to jump in
	and tmux attach


set -x EDITOR vim

set -x PAGER 'less -R'

# if you call a different shell, this does not happen automatically. WTF?
set -x SHELL (which fish)

# available since 4.8.0
set -x GCC_COLORS 1

# alias is just a wrapper for creating a function
# aliases shared between fish and bash
. ~/.aliases
which nvim > /dev/null; and alias vim="nvim -p"

# Very long-winded in fish...
function _prependsudo
	commandline -C 0
	commandline -i 'sudo '
	commandline -f end-of-line
end

# binds must be in this wrapper or dedicated file
function fish_user_key_bindings
	bind \cs _prependsudo

	# Launch CTRLP vim plugin outside of vim, as I often do instinctively
	bind \cp 'vim -c CtrlP'
end

# get new or steal existing tmux
function tm
	# must not already be inside tmux
	test ! $TMUX; or return
	# detach any other clients
	# attach or make new if there isn't one
	tmux attach -d; or tmux
end

# patches for Mac OS X
set PLATFORM (uname)
if test "$PLATFORM" = 'Darwin'
	alias ls='ls -G'
	#unalias ls
	# unalias is broken...
	#alias ls=ls
	set -x CLICOLOR 1
	set -x LSCOLORS gxBxhxDxfxhxhxhxhxcxcx
end

function cd
	builtin cd $argv
	and ls
end

test -x /usr/bin/keychain
	and test -r ~/.ssh/id_rsa
	and keychain --nogui --quiet --eval ~/.ssh/id_rsa | .

# these functions are too small to warrant a separate file
function fish_greeting
	echo \nWelcome to $HOSTNAME, $USER!
    uptime
    echo -e "\nFiles in $PWD:\n"
	ls
end


function fish_title --description 'Set terminal (not tmux) title'
	# title of terminal
	echo $HOSTNAME
end

function fish_tmux_title --description "Set the tmux window title"
	# to a clever shorthand representation of the current dir. minus whitespace
	echo $PWD | sed s/[^a-zA-Z0-9\.\/]/-/g | grep -oE '[^\/]+$'
end

# only auto set title based on initial pane
# this detects if the pane is the first in a new window (probably)
test $TMUX
	and test (tmux list-panes | wc -l) -eq 1
	and set -x TMUX_PRIMARY_PANE set

function fish_set_tmux_title --description "Sets tmux pane title to output of fish_tmux_title, with padding" --on-variable PWD
	# title of tmux pane, must be separate to fish_title
	# only run this if tmux is also running
    test $USER != root
	    and test $TMUX
		and test $TMUX_PRIMARY_PANE
		and printf "\\033k%s\\033\\\\" (fish_tmux_title)
end

function __fish_p4_prompt
	test $P4CLIENT; or return
	echo -n " ($P4CLIENT) "
end

function __sa_prompt
    # is SSH agent wired in?
    test $SSH_AUTH_SOCK; or return
    test -e $SSH_AUTH_SOCK; and echo -ne "\033[32m[A]\033[90m "
end

function fish_prompt --description 'Write out the prompt'
	# test status of last command without affecting it by using 'or' which tests and forwards
	or printf "\n\33[31mExited with status %s\33[m" $status

	printf "\n\33[38;5;%sm%s@%s:%s\33[90m %s %s %s\33[0m\n\$ " \
        $PROMPT_COLOUR $USER $HOSTNAME $PWD (__fish_git_prompt) (__fish_p4_prompt) (__sa_prompt)(date +%T)
end

# SSH wrapper to magically LOCK tmux title to hostname, if tmux is running
# prefer clear terminal after SSH, on success only
# now with MOAR agent forwarding
function ssh --description 'SSH wrapper to magically LOCK tmux title to hostname, if tmux is running'
	if test $TMUX
		# find host from array (in a dumb way)
		set host $argv[-1]

        set old_window_name (tmux display-message -p '#W')
		printf "\\033k%s\\033\\\\" $host
		command ssh -A $argv
		printf "\\033k%s\\033\\\\" $old_window_name
	else
		command ssh -A $argv
	end
end

# initially set title
fish_set_tmux_title

# fix gpg-agent ncurses passphrase prompt
# https://www.gnupg.org/documentation/manuals/gnupg/Common-Problems.html
set GPG_TTY (tty)
