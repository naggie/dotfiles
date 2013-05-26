**WARNING, THIS WILL CLOBBER YOUR EXISTING CONFIGURATION BY DESIGN**

Running `./install.sh` will set up a generic version. Running `./install.sh <preset>`
will run a post-install script in `presets`. Therefore it can be (and is) also used
by several other humans or usernames. It also stops people from committing as me, for example.

For:

  * tmux 1.6+
  * vim 7.3+
  * Bash
  * SSH
  * git (obviously)
  * keychain
  * Dark xterm-256color compatible terminal, mouse enabled
  * mcabber 0.10.1+


![Screenshot](screenshot.png "Why do all terminal screenshots show top or htop running?")


Installation
------------

**Personal** Installation with local repository:

  1. Clone this repo (depends on git for submodules)
  2. Install dependencies and recommended packages using a script from `prerequisites/`
  3. Run `./install.sh <preset>`

To update, run `git pull && ./install.sh` which will also take care of submodules.

To install **globally** (to `/etc/skel/`) run `sudo ./install.sh`.

This way *new* users will automatically get a personal, generic, copy of dotfiles. They
are then free to delete or modify.

Automated updates
-----------------

To automatically  update, put something like this in your crontab (via crontab -e):

	24 13 * * * cd dotfiles/ && git pull origin master && ./install.sh &> ../dotfiles.log

