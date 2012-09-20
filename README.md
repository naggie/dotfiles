# Installation

Dependencies:

  * tmux 1.6+
  * vim 7.3+
  * git (obviously)
  * keychain
  * Black-background xterm-256color compatible terminal (mouse enabled)


Recommended:

  * bc
  * mcabber 0.10.1+
  * irssi
  * python
  * nodejs

Hit and run install, leaves no repository, non-interactive:

	curl https://raw.github.com/naggie/dotfiles/master/magic.sh | bash


Normal installation with local repository:

	git clone --recursive git://github.com/naggie/dotfiles.git
	cd dotfiles/
	./install-dependencies.sh # only run this once
	./setup.sh

To update:

	git pull
	git submodule update
	./setup.sh

To manually update, put something like this in your crontab (via crontab -e):

	53 17 * * * USER=naggie ~/dotfiles/update.sh

# Environment

  * A dark xterm-256color terminal is required. Fbterm can be used but TERM=fbterm has to be set to enable the right escape codes.
  * The solarised dark 16-colour palette is recommended to make 16-colour applications look nice.

