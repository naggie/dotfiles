if not status --is-interactive
	exit 0
end


set -U EDITOR vim
set -x PATH /usr/local/bin $PATH ~/bin /usr/local/share/npm/bin

set -U HOSTNAME (hostname)


# alias is just a wrapper for creating a function
alias more        less
alias sagi       'yes | sudo apt-get install'
alias grep       'grep --color=auto'
alias la         'ls -al'
alias cd..       'cd ..'
alias ..         'cd ..'
alias ...        'cd ../..'
alias ....       'cd ../../..'
alias .....      'cd ../../../..'
alias c           cd
alias d           cd
alias sl          ls
alias l           ls
alias s          'git status'
alias gi          git
alias g           git
alias v           vim
alias cim         vim
alias nom         npm
alias webserver  'python -m SimpleHTTPServer'
# colour schemes must work, and tmux should not complain when it thinks the term is rubbish
alias tmux       'TERM=screen-256color-bce tmux'
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
