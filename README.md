# Installation

**WARNING, THIS WILL CLOBBER YOUR EXISTING CONFIGURATION BY DESIGN**

Dependencies:

  * tmux 1.6+
  * vim 7.3+
  * git (obviously)
  * keychain
  * Dark xterm-256color compatible terminal, mouse enabled, solarised 16-color palette (on top of the 256 colours)


Recommended:

  * bc
  * http://inotool.org/
  * mcabber 0.10.1+
  * irssi
  * python
  * nodejs
  * aiksaurus

To set up an entire new box (requires sudo, installs MOTD and dependencies, into /etc/skel):


	curl https://raw.github.com/naggie/dotfiles/master/etc/magic.sh | bash


Normal installation with local repository:

	git clone --recursive git://github.com/naggie/dotfiles.git
	cd dotfiles/
	./dependencies.sh # only run this once
	./install.sh

To update:

	git pull
	git submodule update
	./install.sh

To manually update, put something like this in your crontab (via crontab -e):

	53 17 * * * ~/dotfiles/update.sh

I think this is currently broken. whoami apparently does not work.

To install to `/etc/skel` so that new users get dotfiles, run `sudo ./install.sh`

# Environment

  * A dark xterm-256color terminal is required. Fbterm can be used but TERM=fbterm has to be set to enable the right escape codes.
  * The solarised dark 16-colour palette (works alongside the 256 solarisez settings too) is recommended to make 16-colour applications look nice.

