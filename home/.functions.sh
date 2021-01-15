# should be first, others may change env
function _tmux_update_env {
    # tmux must be running
    [ "$TMUX" ] || return

    # update current shell to parent tmux shell (useful for new SSH connections, x forwarding, etc)
    eval $(tmux show-environment -s | grep 'DISPLAY\|SSH_CONNECTION\|SSH_AUTH_SOCK')
}

# really simple git prompt, just showing branch which is all I want. Replaced
# zsh-git-prompt as that displayed the wrong branch is some cases. I didn't
# need the other features.
function __git_prompt {
    local branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null || true)

    if [ "$branch" ]; then
        echo -n " ($branch)"
    fi
}

function __p4_prompt {
	if [ "$P4CLIENT" ]; then
        echo -n " ($P4CLIENT)"
    fi
}

function __exit_warn {
	# test status of last command without affecting it
	st=$?
	test $st -ne 0 \
		&& printf "\n\33[31mExited with status %s\33[m" $st
}

# get new or steal existing tmux
function tm {
	# must not already be inside tmux
	test ! "$TMUX" || return
	# detach any other clients
	# attach or make new if there isn't one
	tmux attach -d || tmux
}

function _auto_tmux_attach {
    # AUTOMATIC TMUX
    # must not launch tmux inside tmux (no memes please)
    # must be installed/single session/no clients
    test -z "$TMUX" \
        && which tmux &> /dev/null \
        && test $(tmux list-sessions 2> /dev/null | wc -l) -eq 1 \
        && test $(tmux list-clients 2> /dev/null | wc -l) -eq 0 \
        && tmux attach
}

function _disable_flow_control {
    # Ctrl+S can freeze the terminal, requiring
    # Ctrl+Q to restore. It can result in an apparent hung terminal, if
    # accidentally pressed.
    stty -ixon -ixoff
    # https://superuser.com/questions/385175/how-to-reclaim-s-in-zsh
    stty stop undef
    stty start undef
}

function _update_agents {
    # take over SSH keychain (with gpg-agent soon) but only on local machine, not remote ssh machine
    # keychain used in a non-invasive way where it's up to you to add your keys to the agent.
    if [ ! "$SSH_CONNECTION" ] && which gpg-connect-agent &>/dev/null; then
		export SSH_AUTH_SOCK=$(gpgconf --list-dirs | grep agent-ssh-socket | cut -f 2 -d :)
        # start GPG agent, and update TTY. For the former only, omit updatestartuptty
        # ssh-agent protocol can't tell gpg-agent/pinentry what tty to use, so tell it
        # if GPG agent has locked up or there is a stale remote agent, remove
        # the stale socket and possible local agent.
        if ! timeout -k 2 1 gpg-connect-agent updatestartuptty /bye > /dev/null; then
            echo "Removing stale GPG agent"
            socket=$(gpgconf --list-dirs | grep agent-socket | cut -f 2 -d :)
            test -S $socket && rm $socket
            killall -KILL gpg-agent 2> /dev/null
            # try again
            timeout -k 2 1 gpg-connect-agent updatestartuptty /bye > /dev/null
        fi
    fi
}

# ssh with gpg and ssh agent forwarding Use only on trusted hosts.
function gssh {
    # look for host, attempting to avoid flags and commands. The host is
    # assumed the last arg containing a dot, or the last arg.
    for arg in "$@"; do
        if [[ $arg == *.* ]]; then
            host="$arg"
        fi
    done

    if [[ ! $host ]]; then
        echo "Could not determine host"
        return 1
    else
        echo Host: $host
    fi

    echo "Preparing for forwarded GPG agent..." >&2
    # prepare remote for agent forwarding, get socket
    # Remove the socket in this pre-command as an alternative to requiring
    # StreamLocalBindUnlink to be set on the remote SSH server.
    # Find the path of the agent socket remotely to avoid manual configuration
    # client side. The location of the socket varies per version of GPG,
    # username, and host OS.
    remote_socket=$(cat <<'EOF' | command ssh -T "$host" bash
        set -e
        socket=$(gpgconf --list-dirs | grep agent-socket | cut -f 2 -d :)
        # killing agent works over socket, which might be dangling, so time it out.
        timeout -k 2 1 gpgconf --kill gpg-agent || true
        test -S $socket && rm $socket
        echo $socket
EOF
)
    if [ ! $? -eq 0 ]; then
        echo "Problem with remote GPG. use ssh -A $@ for ssh with agent forwarding only." >&2
        return
    fi

    if [ "$SSH_CONNECTION" ]; then
        # agent on this host is forwarded, allow chaining
        local_socket=$(gpgconf --list-dirs | grep agent-socket | cut -f 2 -d :)
    else
        # agent on this host is running locally, use special remote socket
        local_socket=$(gpgconf --list-dirs | grep agent-extra-socket | cut -f 2 -d :)
    fi

    if [ ! -S $local_socket ]; then
        echo "Could not find suitable local GPG agent socket" 2>&1
        return
    fi

    echo "Connecting..." >&2
    ssh -A -R $remote_socket:$local_socket "$@"
}

# this is a simple wrapper for scp to prevent local copying when a colon is forgotten
# It's annoying to create files named naggie@10.0.0.1
# use ~/.aliases to enable.
function scp {
    if [ $1 ] && ! echo "$@" | grep -q ':' &> /dev/null; then
        echo "No remote host specified. You forgot ':'"
        return 1
    fi

    command scp "$@"
}

# cd then ls
function cd {
	builtin cd "$@" && ls --color=auto
}

function _cmd_timer_start {
    CMD_TIMER_START=$(date +%s)
}

# must be in precmd not prompt (which creates a subshell)
# stops/resets timer and sets CMD_TIMER_PROMPT
function _cmd_timer_end  {
    unset CMD_TIMER_PROMPT
    test -z $CMD_TIMER_START && return
    CMD_TIMER_STOP=$(date +%s)
    DURATION=$(($CMD_TIMER_STOP - $CMD_TIMER_START))
    (( $DURATION < 60 )) && return

    CMD_TIMER_PROMPT="Duration: $(~/.local/bin/human-time $CMD_TIMER_START), ended $(date)
"

    # precmd is not run if there is no cmd, so don't keep the timer running
    # note unset does not work due to scope
    unset CMD_TIMER_START
}

# On a new window (not pane) ask user for window name. After trying many
# different automatic methods of choosing a suitable name, given race
# conditions and inaccuracy, I concluded that the best thing to do was to just
# ask the user. In practice this turned out to be very useful and not
# irritating.
#
# It is recommended that the prompt is echoed early in the shell
# configuration. What happens is, the stdin is buffered until this function
# can read it. Whilst the user is typing, the shell can then continue with
# other initialisation such as loading completions. The result is the
# latency (which is significant) is hidden whilst the user is typing. This
# is why the tmux window rename routine is split into 2 function.
function _tmux_window_name_ask {
    # primary pane only
    [ "$TMUX" ] || return
    test $(tmux list-panes | wc -l) -eq 1 || return
    echo -n "Enter window name: "
}

function _tmux_window_name_read {
    [ "$TMUX" ] || return
    test $(tmux list-panes | wc -l) -eq 1 || return
    read name
    tmux rename-window "$name"
}


function mkdircd {
    mkdir -p -- "$1" && cd -P -- "$1"
}

