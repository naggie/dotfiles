if not status --is-interactive
	exit 0
end


set -U EDITOR vim
set -x PATH /usr/local/bin $PATH ~/bin /usr/local/share/npm/bin

set -U HOSTNAME (hostname)


# if you call a different shell, this does not happen automatically. WTF?
set -U SHELL (which fish)


# alias is just a wrapper for creating a function
# aliases shared between fish and bash
. ~/.aliases

# fish specific aliases
alias tm 'test -z $TMUX; and tmux a ; or tmux'

function cd
	builtin cd $argv
	ls
end

test -x /usr/bin/keychain
	and test -r ~/.ssh/id_rsa
	and eval (keychain --quiet --eval ~/.ssh/id_rsa)

# these functions are too small to warrant a separate file
function fish_greeting
	echo \r\> Welcome to (hostname -s), (whoami). Files in (pwd) are:\n
	ls
end


function fish_title --description 'Set tmux (or TE) title'
	# title of terminal
	echo $HOSTNAME
end

function fish_tmux_title --description "Set the tmux pane title"
	echo $PWD | grep -oE '\w+\/\w+$'
end

function fish_tmux_handler --description "Sets tmux pane title to output of fish_tmux_title" --on-variable PWD
	# title of tmux pane, must be separate to fish_title
	# FIXME fish-shell: if this line is in fish_prompt, fish segfaults when not in tmux
	printf "\\033k%s\\033\\\\" (fish_tmux_title)
end

function fish_prompt --description 'Write out the prompt'
	echo -n -s \n (set_color green) $USER @ $HOSTNAME (set_color normal)\
	' ' (set_color --bold blue) (pwd) (set_color normal)\
	(set_color yellow) (__fish_git_prompt) (set_color normal)\
	\n\$ ' '
end

function fish_right_prompt --description 'Reminds user of fish'
	set_color 111
	echo FISH
	set_color normal
end
