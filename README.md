**WARNING, THIS WILL CLOBBER YOUR EXISTING CONFIGURATION BY DESIGN**

Running `./install.sh` will set up a generic version. Running `./install.sh <preset> <preset> ...`
will run the specified post-install scripts in `presets`. Therefore it can be (and is) also used
by several other humans, usernames and operating systems. It also stops people
from committing as me, for example.

For:

  * tmux 1.6+
  * vim 7.3+
  * fish >2.0 (bash, if you don't have fish > 2.0)
  * SSH
  * git (obviously)
  * keychain
  * Dark xterm-256color compatible terminal, mouse enabled
  * mcabber 0.10.1+


![Screenshot](screenshot.png "Why do all terminal screenshots show top or htop running?")


Installation
------------

**Personal** Installation with local repository:

  1. Clone this repo (depends on git for submodules)
  2. Install dependencies and recommended packages using a script from `prerequisites/`
  3. Run `./install.sh <preset>`

To update, run `git pull && ./install.sh` which will also take care of submodules.

To install **globally** (to `/etc/skel/`) run `sudo ./install.sh`.

This way *new* users will automatically get a personal, generic, copy of dotfiles. They
are then free to delete or modify.

Automated updates
-----------------

To automatically  update, put something like this in your crontab (via crontab -e):

	24 13 * * * cd dotfiles/ && git pull origin master && ./install.sh &> ../dotfiles.log

Why fish?
---------

  * Amazing suggestion engine (parses man files for options)
  * Great completion engine (looks at history for commands)
  * All variables are arrays of strings, and can only ever be that (this really helps!)
  * variables are _not_ further split after substitution (no more "$@" and impending confusion)
  * It's event based
  * It's fast!
  * Real-time syntax highlighting!
  * It's like bash, but without the ambiguity


Read http://fishshell.com/tutorial.html for more information. Recently,
development was picked up on github by [ridiculous\_fish][1].


Warning: if you specify `#!/bin/sh` in a `bash` script and call it with fish,
it won't work properly. You need to explicitly call `#!/bin/bash`.

[1]: https://github.com/fish-shell/fish-shell/

