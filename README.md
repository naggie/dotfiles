**WARNING, THIS WILL CLOBBER YOUR EXISTING CONFIGURATION BY DESIGN**

For:

  * tmux 1.6+
  * vim 7.3+
  * git (obviously)
  * keychain
  * Dark xterm-256color compatible terminal, mouse enabled, solarised 16-color palette (on top of the 256 colours)
  * mcabber 0.10.1+
  * inotool

And a few more things, such as dependencies and MOTD.


Installation
------------

**Personal** Installation with local repository:

  1. Clone or unzip this repo
  2. Install dependencies and recommended packages using a script from `etc/deps/`
  3. `./install.sh`

To update, run `git pull && ./install.sh` which will also take care of submodules.

To install **globally** run `sudo ./install.sh`. You can also install a MOTD
via a script in `etc/motd/`

This way *new* users will automatically get a personal copy of dotfiles. They
are then free to delete or modify them.

Some user-sepcific things are installed if your username matches. For example,
git user/email and SSH authorised keys.

Automated personal updates
--------------------------

To automatically  update, put something like this in your crontab (via crontab -e):

	53 17 * * * cd dotfiles/ && git pull origin master && ./install.sh

Append `&> ../dotfiles.log` or add `MAILTO-<email_addr>` into the crontab.
Redirect STDOUT into `/dev/null` to only receive errors.


To globally install to `/etc/skel` so that new users get dotfiles, run `sudo ./install.sh`

Environment
-----------

  * A dark xterm-256color terminal is required. Fbterm can be used but TERM-fbterm has to be set to enable the right escape codes.
  * The solarised dark 16-colour palette (works alongside the 256 solarisez settings too) is recommended to make 16-colour applications look nice.

