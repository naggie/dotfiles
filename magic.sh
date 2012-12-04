#!/bin/bash
# run curl https://raw.github.com/naggie/dotfiles/master/magic.sh | bash to install everything

TMPDIR=/tmp/banana$$/
mkdir $TMPDIR
cd $TMPDIR

git clone --depth 1 --recursive git://github.com/naggie/dotfiles.git
cd dotfiles/
bash dependencies.sh || exit 1
bash setup.sh
cd ..
rm -rf dotfiles/

rm -r $TMPDIR
