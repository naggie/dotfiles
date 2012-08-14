One line install (coming soon):

```
curl <some url> | bash
```


To grab and install all
```
git clone --recursive git://github.com/naggie/dotfiles.git
cd dotfiles/
bash setup.sh
```

To prevent any one config file in you home directoy from being clobbered
(if you have to keep a local-specific copy without an additional
config file) run, for example:

```
chmod 0400 ~/.gitconfig
```
