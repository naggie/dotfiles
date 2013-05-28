if not status --is-interactive
	exit 0
end


set -U EDITOR vim
set -x PATH /usr/local/bin $PATH ~/bin /usr/local/share/npm/bin

set -U HOSTNAME (hostname)


# alias is just a wrapper for creating a function
# aliases shared between fish and bash
. ~/.aliases

# fish specific
alias tm         'test -z $TMUX; and tmux a ; or tmux'

function cd
	builtin cd $argv
	ls
end

# no fish greeting, to ls last
set fish_greeting

#[ -x /usr/bin/keychain ] && [ -r ~/.ssh/id_rsa ] && eval `keychain --quiet --eval ~/.ssh/id_rsa`

# these functions are too small to warrant a separate file
function fish_greeting
	echo \r\> Welcome to (hostname -s), (whoami). Files in (pwd) are:\n
	ls
end


function fish_title --description 'Set tmux (or TE) title'
	pwd
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
