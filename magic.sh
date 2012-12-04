#!/bin/bash
# run curl https://raw.github.com/naggie/dotfiles/master/magic.sh | bash to install everything

TMPDIR=$(mktemp -d)
cd $TMPDIR

git clone --depth 1 --recursive git://github.com/naggie/dotfiles.git
cd dotfiles/
bash install-dependencies.sh || exit 1
bash setup.sh
cd ..
rm -rf dotfiles/

rmdir $TMPDIR
