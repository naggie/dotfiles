# My workflow

General:

* `vim` : text editor
* `bash/zsh/fish` : Shells, used interchangibly depending on platform. Fish
generates completions from man pages! (but CTRL+R reverse-i-search isn't there
so I don't use it)
* `tmux` : Terminal multiplexer
* `git` : version control
* `ack` : grep alternative for rebasing and source code exploration
* `ssh` : secure remote shell (obvious I know)
* `gnupg2`: OpenPGP cryptographic suite

Specific:

* `ipython` : interactive python shell
* `ansible` : idempotent, agentless configuration management
* `httpie` : curl alternative with better UX
* `jq` : Command line JSON processor (good with httpie)
* `ncdu` + `tmpreaper` : tools for clearing up disk space
* `brew` : homebrew package manager for OS X
* `brew cask` : cask bundle manager for OS X
* `pudb` : python debugger
* `task` taskwarrior TODO list manager
* `restic` : backup software

Misc:

`sox`,`ffmpeg`

Recommended font: https://github.com/adobe-fonts/source-code-pro

Tip: Minimise keyboard repeat delay and maximise keyboard repeat rate for a
faster experience. Latency is everything.

NOTE Alacrity.

# shell

* `tm` will start or attach to the first `tmux` session. If you're on the only
  shell, `tmux` session 0 will automatically attach.
* `CTRL+p` will launch `vim` in find mode, also works inside vim
* `CTRL+s` will prepend `sudo` to the prompt and move the cursor to the end of the prompt
* `tryforever <cmd...>` will run a command in a loop until it fails
* history is synchronised between open shells

See `home/.aliases` and `bin/` for some useful shortcuts.


![Screenshot](etc/screenshot.png "Why do all terminal screenshots show top or htop running?")

As a bonus, the prompt/hostname colour changes with the hostname so it's easier
to differentiate between hosts.


[2]: http://unix.stackexchange.com/questions/12107/how-to-unfreeze-after-accidentally-pressing-ctrl-s-in-a-terminal
[3]: https://github.com/fish-shell/fish-shell/issues/814
[4]: http://superuser.com/questions/413351/weird-insertion-from-vim-on-mouse-click
[5]: https://github.com/unphased/putty-X

# One liners

Obviously inspect the script to see what it does before you run it. Note that it
will clobber your settings files.

```bash
curl -sL https://github.com/naggie/dotfiles/raw/master/provision.sh | bash && bash
```

Ubuntu 17.04 does not have curl by default.

```bash
wget -O - https://github.com/naggie/dotfiles/raw/master/provision.sh | bash && bash
```
