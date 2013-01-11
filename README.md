Installation
============

**WARNING, THIS WILL CLOBBER YOUR EXISTING CONFIGURATION BY DESIGN**

For:

  * tmux 1.6+
  * vim 7.3+
  * git (obviously)
  * keychain
  * Dark xterm-256color compatible terminal, mouse enabled, solarised 16-color palette (on top of the 256 colours)
  * mcabber 0.10.1+
  * inotool


Normal (user) installation with local repository:

	git clone --recursive git://github.com/naggie/dotfiles.git
	cd dotfiles/
	./etc/dependencies.sh # only run this once
	./install.sh # does submodules, even if you didn't run --recureive earlier

To update:

	git pull
	./install.sh # does submodule updates automatially



To (globally) set up an entire new box (requires sudo, installs MOTD and dependencies, into /etc/skel):

	curl https://raw.github.com/naggie/dotfiles/master/etc/magic.sh | bash


To automatically  update, put something like this in your crontab (via crontab -e):

	53 17 * * * cd /home/naggie/dotfiles/ && git pull origin master && ./install.sh
	
Append `&> /home/naggie/dotfiles.log` or add `MAILTO=<email_addr>` into the crontab.
Redirect STDOUT into `/dev/null` to only receive errors.


To globally install to `/etc/skel` so that new users get dotfiles, run `sudo ./install.sh`

Environment
===========

  * A dark xterm-256color terminal is required. Fbterm can be used but TERM=fbterm has to be set to enable the right escape codes.
  * The solarised dark 16-colour palette (works alongside the 256 solarisez settings too) is recommended to make 16-colour applications look nice.

