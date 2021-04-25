source ~/.env.sh

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

source ~/.functions.sh
source ~/.aliases

_tmux_window_name_ask
_update_agents

SAVEHIST=$HISTSIZE
unsetopt EXTENDED_HISTORY # just a list of commands so bash_history is compatible
setopt INC_APPEND_HISTORY # immediate sharing of history
# pass * if globbing fails (etc)
unsetopt NOMATCH
# auto rehash to discover execs in path
setopt nohashdirs
# with arrow keys
zstyle ':completion:*' menu select
setopt completealiases
setopt PROMPT_SUBST
autoload -U colors && colors
# note HISTORY_IGNORE is no longer defined -- see cleanup-history for the replacement mechanism

# zsh will use vi bindings if you have vim as the editor. I want emacs.
# zsh does not use gnu readline, but zle
bindkey -e

# Completion
autoload -U compinit && compinit

source ~/.zsh/.dstask-zsh-completions.sh
compdef g=git
compdef d=git
compdef l=git
compdef s=git
compdef t=dstask
compdef n=dstask
compdef gssh=ssh

# Syntax highlighting
#git@github.com:zsh-users/zsh-syntax-highlighting.git
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# history search by substring like fish and bash (with inputrc)
# git@github.com:zsh-users/zsh-history-substring-search.git
# must be loaded after syntax highlighting
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh

# case insensitive completion
# http://stackoverflow.com/questions/24226685/have-zsh-return-case-insensitive-auto-complete-matches-but-prefer-exact-matches
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
[ $TMUX ] && tmux set -g status-left-style bg=colour${SYSTEM_COLOUR} &>/dev/null

PROMPT="
\$(__exit_warn)
%F{36}\$CMD_TIMER_PROMPT%f%F{${PROMPT_COLOUR}}%n@%M:\$PWD%f%F{243}\$(__git_prompt)\$(__p4_prompt)%f
$ "

# if you call a different shell, this does not happen automatically. WTF?
export SHELL=$(which zsh)

_auto_tmux_attach

# before prompt (which is after command)
function precmd() {
	# reload history to get immediate update because my computer is fast, yo.
	fc -R

    # reset the terminal, in case something (such as cat-ing a binary file or
    # failed SSH) sets a strange mode
    stty sane
    _cmd_timer_end
}

# just before cmd is executed
function preexec() {
    # should be first, others may change env
    _tmux_update_env
    _update_agents
    _cmd_timer_start
}
#
# zsh uses zle, not readine so .inputrc is not used. Match bindings here:

# Launch FZF -> vim
bindkey -s '\C-p' "\C-k \C-u vimfzf\n"

# sudo-ize command
bindkey -s '\C-s' "\C-asudo \C-e"

# bind UP and DOWN arrow keys
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
# https://github.com/zsh-users/zsh-history-substring-search
# both methods are necessary
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

which dircolors &> /dev/null &&  eval $(dircolors ~/.dir_colors)

_disable_flow_control

source ~/.fzf/shell/completion.zsh
source ~/.fzf/shell/key-bindings.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
~/.local/bin/cleanup-history ~/.history
fc -R # reload history

_tmux_window_name_read

eval "$(direnv hook zsh)"

trap "~/.local/bin/cleanup-history ~/.history" EXIT
