**WARNING, THIS WILL CLOBBER YOUR EXISTING CONFIGURATION BY DESIGN**

This dotfiles collection separates anything specific to me, only if it detects my username
will it configure with my keys and auth. Therefore it can be (and is) also used by several
other humans. It also stops people from committing as me, for example.

To configure specific things, add an executable script to `specific/<user>`, this
will be executed after setup.

Add SSH keys specific to that user to `pubkeys/<user>`

For:

  * tmux 1.6+
  * vim 7.3+
  * git (obviously)
  * keychain
  * Dark xterm-256color compatible terminal, mouse enabled
  * mcabber 0.10.1+
  * inotool


![Screenshot](screenshot.png "Why do all terminal screenshots show top or htop running?")


Installation
------------

**Personal** Installation with local repository:

  1. Clone this repo (depends on git for submodules)
  2. Install dependencies and recommended packages using a script from `prerequisites/`
  3. Run `./install.sh`

To update, run `git pull && ./install.sh` which will also take care of submodules.

To install **globally** (to `/etc/skel/`) run `sudo ./install.sh`.

This way *new* users will automatically get a personal copy of dotfiles. They
are then free to delete or modify them.

Automated updates
-----------------

To automatically  update, put something like this in your crontab (via crontab -e):

	24 13 * * * cd dotfiles/ && git pull origin master && ./install.sh &> ../dotfiles.log

