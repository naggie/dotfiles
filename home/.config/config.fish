if not status --is-interactive
	exit 0
end


set -U EDITOR vim
set -x PATH /usr/local/bin $PATH ~/bin /usr/local/share/npm/bin


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

# no fish greeting, to ls last
set fish_greeting

#[ -x /usr/bin/keychain ] && [ -r ~/.ssh/id_rsa ] && eval `keychain --quiet --eval ~/.ssh/id_rsa`

echo \r\> Welcome to (hostname -s), (whoami). Files in (pwd) are:\n
ls
