**WARNING, THIS WILL CLOBBER YOUR EXISTING CONFIGURATION BY DESIGN**

For:

  * tmux 1.6+
  * vim 7.3+
  * git (obviously)
  * keychain
  * Dark xterm-256color compatible terminal, mouse enabled
  * mcabber 0.10.1+
  * inotool

Installation
------------

**Personal** Installation with local repository:

  1. Clone or unzip this repo
  2. Install dependencies and recommended packages using a script from `prerequisites/`
  3. Run `./install.sh`

To update, run `git pull && ./install.sh` which will also take care of submodules.

To install **globally** (to `/etc/skel/`) run `sudo ./install.sh`.

This way *new* users will automatically get a personal copy of dotfiles. They
are then free to delete or modify them.

Some user-sepcific things are installed if your username matches. For example,
git user/email and SSH authorised keys. This is mostly to prevent forks from
accidentally committing as me, for example.

Automated updates
-----------------

To automatically  update, put something like this in your crontab (via crontab -e):

	24 13 * * * cd dotfiles/ && git pull origin master && ./install.sh &> ../dotfiles.log

