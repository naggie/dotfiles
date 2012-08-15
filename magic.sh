#!/bin/bash
# run curl https://raw.github.com/naggie/dotfiles/master/magic.sh | bash to install everything

git clone --depth 1 --recursive git://github.com/naggie/dotfiles.git
cd dotfiles/
bash setup.sh
cd ..
rm -rf dotfiles/
