source ~/.env.sh

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

source ~/.functions.sh
source ~/.aliases

_tmux_window_name_ask
_update_agents

# note HISTIGNORE is no longer defined -- see cleanup-history for the replacement mechanism
export HISTCONTROL=ignoredups:ignorespace:erasedups
# if you call a different shell, this does not happen automatically. WTF?
export SHELL=$(which bash)

[ $TMUX ] && tmux set -g status-left-style bg=colour${SYSTEM_COLOUR} &>/dev/null


# update the values of LINES and COLUMNS. Automatically
shopt -s checkwinsize

# stop -bash: !": event not found
set +o histexpand

HISTFILESIZE=$HISTSIZE

_bash_history_sync() {
    # append last command to history file without messing up history counter in file
    builtin history | tail -n 1 | cut -c 8- >> $HISTFILE
    # clear history
	builtin history -c
    # reload history
	builtin history -r
}

_auto_tmux_attach

# before prompt (which is after command)
function precmd() {
	_bash_history_sync

    # reset the terminal, in case something (such as cat-ing a binary file or
    # failed SSH) sets a strange mode
    stty sane

    __exit_warn
    _cmd_timer_end
}

# just before cmd is executed
function preexec() {
    # should be first, others may change env
    _tmux_update_env
    _update_agents
    _cmd_timer_start
}

PS1="
\$(__exit_warn)
\[\e[36m\]\${CMD_TIMER_PROMPT}\[\e[38;5;${PROMPT_COLOUR}m\]\u@\H:\$PWD\[\e[38;5;243m\]\$(__git_prompt)\$(__p4_prompt)\[\e[0m\]
\$ "


# fix backspace on some terminals
stty erase ^?
#stty erase ^H


which dircolors &>/dev/null &&  eval $(dircolors ~/.dir_colors)

_disable_flow_control

# Source bash completions
# see https://discourse.brew.sh/t/bash-completion-2-vs-brews-auto-installed-bash-completions/2391/4
# for discussion. Mac requires brew packages bash and bash-completion@2
if [[ -e "/usr/local/share/bash-completion/bash_completion" ]]; then
    # mac os, new (jit) and few remaining old style completions (git!)
	export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
	source "/usr/local/share/bash-completion/bash_completion"
elif [[ -e "/usr/local/etc/profile.d/bash_completion.sh" ]]; then
    # mac os, new style completions only
	source "/usr/local/etc/profile.d/bash_completion.sh"
elif [[ -e "/etc/bash_completion" ]]; then
    # standard on linux systems, sources from /etc/bash_completion.d/
	source "/etc/bash_completion"
fi

# included completions
source ~/.fzf/shell/completion.bash
source ~/.fzf/shell/key-bindings.bash
source ~/.dstask-bash-completions.sh

# map completion for aliases that need them
complete -o default -o nospace -F _git g
complete -o default -o nospace -F _git_diff d
complete -o default -o nospace -F _git_log l
complete -o default -o nospace -F _git_status s
complete -o default -o nospace -F _ssh gssh
complete -F _dstask n
complete -F _dstask t
complete -cf start

# hardcoded ssh completions (known_hosts is encrypted mostly)
#complete -o default -W 'example.com example.net' ssh scp ping


# clear history
~/.local/bin/cleanup-history ~/.history
# clear history
builtin history -c
# reload history
builtin history -r

source ~/.bash-preexec.sh

_tmux_window_name_read

eval "$(direnv hook bash)"

trap "~/.local/bin/cleanup-history ~/.history" EXIT
