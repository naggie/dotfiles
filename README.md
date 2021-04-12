This repository contains scripts that I use to provision my new
computers/servers that I use day-to-day.

I maintain it so that I can be productive within 10 minutes of encountering a
new or re-installed PC.

The focus is on functionality. Features are only added, in minimal form, if I
use them regularly.

<p align="center">
<a href="https://cloud.drone.io/naggie/dotfiles"><img src="https://cloud.drone.io/api/badges/naggie/dotfiles/status.svg" /></a>
</p>


# General Tools

| Purpose                | Tool(s)                             | Comments                                                                                                                                               |
| ---------------------- | ----------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Task management        | [dstask][10]                        | See section on time management below. Another mental offload -- see [GTD][33]                                                                          |
| Text editing           | [vim][16] / [neovim][1]             | FZF integration with [gruvbox][12] theme and [polyglot][11] syntax pack.                                                                               |
| Password management    | [pass][2]                           | Secured with [Yubikey][13] and [GnuPG2][14], synchronised with [git][15]. Mental offload as it is no longer necessary to remember dozens of passwords. [Browserpass][40] used for Firefox integration. |
| Code search            | [ripgrep][4] + [fzf][3]             | See `rgfzf` and `vimfzf` commands in `scripts/` and bindings below.                                                                                    |
| Version control        | [git][15]                           | GnuPG2 used for code signing. GPG agent forwarded to remote hosts with `gssh`                                                                          |
| SSH Agent              | [GnuPG2][14]                        | Used with a Yubikey. See my [set up guide.][34]                                                                                                        |
| Security device        | [Yubikey 5][13]                     | Used with [GnuPG2][14] to hold GPG keys and SSH key. Also used for 2FA.                                                                                |
| Note taking/minutes    | [git][15] + [vim][16] / [neovim][1] | I use a git repository of markdown files to organise ideas and other notes. Yet another mental offload.                                                |
| Personal cryptography  | [GnuPG2][14]                        | Used with a Yubikey. See my [set up guide.][34]                                                                                                        |
| Shell                  | [bash][7]/[zsh][8]                  | I used to use fish but it's incompatible with bourne shell which makes maintenance a pain.                                                             |
| Terminal multiplexing  | [tmux][5]                           | Bindings adjusted to match vim                                                                                                                         |
| Terminal               | [Alacritty][18]                     | GPU accelerated and minimal. I also use `uxterm.`                                                                                                      |
| Terminal Font          | [Hack][38]                          | Switched from Adobe Source Code Pro as 0 and 8 were too similar                                                                                        |
| Window management      | [i3wm][19]                          | Much faster than Unity, Gnome 3 etc as there are no animations. See openbox if you don't like tiling window managers.                                  |
| Environment management | [direnv][53]                        | To set environment variables based on current directory tree                                                                                           |

[1]: https://neovim.io/
[2]: http://passwordstore.org/
[3]: https://github.com/junegunn/fzf
[4]: https://github.com/BurntSushi/ripgrep
[5]: https://github.com/tmux/tmux
[7]: https://www.gnu.org/software/bash/
[8]: https://www.zsh.org/
[10]: https://github.com/naggie/dstask
[11]: https://github.com/sheerun/vim-polyglot
[12]: https://github.com/morhetz/gruvbox
[13]: https://www.yubico.com/product/yubikey-5-nfc/
[14]: https://www.gnupg.org/
[15]: https://git-scm.com/
[16]: https://www.vim.org/
[18]: https://github.com/jwilm/alacritty
[33]: https://en.wikipedia.org/wiki/Getting_Things_Done
[34]: https://github.com/naggie/dotfiles/blob/master/etc/yubikey.md
[38]: https://sourcefoundry.org/hack/
[40]: https://github.com/browserpass/browserpass
[53]: https://direnv.net/

# Specific tools

| Purpose                        | Tool(s)                                    | Comments                                                                                                              |
| ------------------------------ | ------------------------------------------ | --------------------------------------------------------------------------------------------------------------------- |
| VPN                            | [wireguard][21] managed with [dsnet][48]   | Wireguard is simple, fast and reliable. It will become the standard VPN.                                              |
| Web browser                    | [firefox][20]                              | Fast since Quantum. Animations disabled for speed.                                                                    |
| Disk space reclaim             | [ncdu][22] + [tmpreaper][23]               | Tools for clearing up disk space. I run the latter against /tmp/ with cron.                                           |
| Server configuration           | [ansible][24]                              | Idempotent, agentless configuration management. Used with git.                                                        |
| HTTP Client                    | [httpie][25]                               | curl alternative with better UX. Sometimes used with jq.                                                              |
| System backup                  | [restic][26]                               |                                                                                                                       |
| Cloud backup                   | [rclone][38]                               |                                                                                                                       |
| CAD                            | [OpenSCAD][45]                             | Limited but powerful if you plan ahead                                                                                |
| CAD                            | [CadQuery][52]                             | B-REP kernel instead of just CSG. More powerful, currently learning.                                                  |
| Diagramming                    | [draw.io][27]                              | Diagram creation software. See also dia, graphviz, tikz.                                                              |
| SVG optimisation               | [svgo][28]                                 | Useful for inlining SVGs in a web page                                                                                |
| Audio/video conversion         | [sox][29] + [ffmpeg][30] + [gstreamer][31] |                                                                                                                       |
| Web crawling                   | [httrack][32]                              | Better than wget for crawling (i.e. it works)                                                                         |
| Document conversion            | [pandoc][35]                               | See also [pdflatex][36], which I use for formal reports.                                                              |
| Static blog                    | [hugo][37]                                 | Chosen in an attempt to make myself stop writing blog engines and write articles instead.                             |
| Git history viewer             | [tig][41]                                  |                                                                                                                       |
| Secret management              | [git-crypt][42]                            | Used API secrets mainly.                                                                                              |
| Music library curation         | [beets][43]                                | Automates curation of music library                                                                                   |
| CLI Benchmarking               | [hyperfine][44]                            |                                                                                                                       |
| Secure file sending            | [ffsend][46]                               | Terminal client for [Firefox send][47]                                                                                |
| File watching                  | [entr][51]                                 | Simpler than inotify-tools                                                                                            |
| ISO boot drive                 | [ventoy][54]                               | Allow booting of thousands of common ISOs from a flash drive. BIOS/uEFI, linux and windows                            |

[19]: https://i3wm.org/
[20]: https://www.mozilla.org/en-GB/firefox/
[21]: https://www.wireguard.com/
[22]: https://dev.yorhel.nl/ncdu
[23]: http://manpages.ubuntu.com/manpages/bionic/man8/tmpreaper.8.html
[24]: https://www.ansible.com/
[25]: https://httpie.org/
[26]: https://restic.net/
[27]: https://github.com/jgraph/drawio
[28]: https://github.com/svg/svgo
[29]: http://sox.sourceforge.net/sox.html
[30]: https://www.ffmpeg.org/
[31]: https://gstreamer.freedesktop.org/
[32]: https://www.httrack.com/
[35]: https://pandoc.org/
[36]: https://www.tug.org/applications/pdftex/
[37]: https://gohugo.io/
[38]: https://rclone.org/
[41]: https://github.com/jonas/tig
[42]: https://github.com/AGWA/git-crypt
[43]: https://beets.io/
[44]: https://github.com/sharkdp/hyperfine
[45]: https://www.openscad.org/
[46]: https://github.com/timvisee/ffsend/
[47]: https://github.com/mozilla/send
[48]: https://github.com/naggie/dsnet
[51]: https://github.com/eradman/entr/
[52]: https://github.com/CadQuery/cadquery
[54]: https://www.ventoy.net/en/

# Notable features
* Workflows and application configuration profiled for speed. See section on
  Latency for more information.
* Prompt/hostname colour based on hostname to make it easy to distinguish
  between hosts.
* SSH+GPG agent runs locally, forwarded remotely. SSH_AUTH_SOCK
  is synchronised between tmux sessions.
* history is globally shared, as I use my history as a database to search
* History is automaticall filtered: History is de-duplicated, most recent persists. History
  is also filtered leaving only useful commands. This increases the SNR in the
  history file about 5x, which makes searching the history using FZF quicker.
  History is only cleaned up on shell exit, so you won't lose your immediate
  history which allows for command correction.


![Screenshot](etc/screenshot.png "Why do all terminal screenshots show top or htop running?")

# Custom bindings

| Binding        | Context      | Description                                                                                                                                    |
| -------------- | ------------ | ---------------------------------------------------------------------------------------------------------------------------------------------- |
| `CTRL+p`       | bash/zsh/vim | Search current directory with FZF and launch editor with results. Tab to select multiple.                                                      |
| `r <string>`   | bash/zsh     | Search current directory with ripgrep for files containing `<string>`, filter with FZF and launch editor with results. Tab to select multiple. |
| `CTRL+r`       | bash/zsh     | History search using fzf.                                                                                                                      |
| `tm`           | bash/zsh     | Launch or connect tmux single session. This is automatic if there is already an unconnected session.                                           |
| `CTRL+s`       | bash/zsh     | Prepend `sudo` to the prompt and move the cursor back to the end of the prompt.                                                                |

See `home/.aliases`, `bin/`, `home/.functions.sh` and `home/.tmux.conf` for
more handy shortcuts/wrappers/bindings.

# OSes with automatic provisioning.

`./.sh` will set up a fresh install with all of my regular
applications, system configuration and my user configuration.

Check the OSes specified in `./bootstrap.sh` for an up-to-date list of OSes
that have automatic provisioning. Note that the automatic provisioning may be
in various different states of stability depending on what I'm currently using
and if newer OS versions have been released.

# One liners

Obviously inspect the script to see what it does before you run it. Note that it
will clobber your settings files.

MacOS:

```bash
curl -sL https://github.com/naggie/dotfiles/raw/master/bootstrap.sh | sh && zsh
```

Ubuntu/Fedora:

```bash
wget -O - https://github.com/naggie/dotfiles/raw/master/bootstrap.sh | sh && zsh
```

FreeBSD:

```bash
fetch -qo - https://github.com/naggie/dotfiles/raw/master/bootstrap.sh | sh && zsh
```

# Latency and speed

See [my notes on latency](https://github.com/naggie/dotfiles/blob/master/etc/latency.md).

# Tips

1. Run a vim selection through a command with `:!cmd`. Useful for formatting as
   well as copying on a mac: `!pbcopy`. Write from the clipboard with
   `r!pbpaste`.
1. Keep useful local environment variables in ~/.env-local.sh


An excellent guide and background to a lot of the tools used here is the [MIT
missing semester](https://missing.csail.mit.edu/).

# Operational security
With major services being compromised more and more, good OPSEC is important. I use:

1. 2FA (U2F) where possible
1. A different password for every service (important to prevent attacker pivot)
1. Yubikey (as an openPGP smartcard) to store my SSH and GPG keys. See my [set up guide.][34]
1. Full-disk encryption for every device
1. Lock-screen for every device
1. Backup 2FA codes, backup passwords and master passwords are in a physical fire safe
1. I may switch to a password manager (pass or Keepassxc)
1. UBlock origin on Firefox
1. HTTPS everywhere on Firefox
1. Own web services configured with A+ rating from ssllabs (best cipher suite, protocol etc)
1. Regular updates of all software
1. Subscription to vulnerability mailing lists
1. Don't forward SSH/GPG agent by default

# LiveCD

On an ubuntu host, run `remaster-livecd.sh` with an xubuntu ISO to produce a
remastered xubuntu LiveCD with dotfiles preinstalled. I use this preconfigured
with `./install-naggie.sh` to allow me to start using new or foreign PCs immediately.

It will soon be replaced with an arch equivalent.


# Mode of operation

Dotfiles can provision a fresh install of an OS, or build a live/install CD. In
order to manage the combinatorial complexity of supporting so many platforms,
the install process has been changed to the following:

1. `bootstrap.sh` -- Installs git and ensures the repository exists. Can operate
   independently from this repository. Uses sudo Detects platform and executes
   all of the next steps:
1. `provision.sh` -- Runs the following scripts after sourcing utils.
1. `install-dependencies/*` -- Installs dependencies for the given platform
1. `system-configuration/*` -- Configures global system settings for all users
   for the given platform, eg keyboard layout. A UK keyboard and timezone is
   assumed.
1. `user-configuration.sh` -- Installs generic user-specific configuration. No
   root required from now on.
1. `extras-naggie.sh` -- Patches user configuration with configuration specific
   to my identity
