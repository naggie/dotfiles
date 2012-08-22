Hit and run install, leaves no repository:

	curl https://raw.github.com/naggie/dotfiles/master/magic.sh | bash


Normal installation with local repository:

	git clone --recursive git://github.com/naggie/dotfiles.git
	cd dotfiles/
	./install-dependencies.sh # only run this once
	./setup.sh

To update:

	git pull
	./setup.sh
