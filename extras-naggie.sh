#!/usr/bin/env bash
# Applies changes that are specific to my identity using only publicly
# publishable data. Run ./user-configuration.sh first.

if git remote -v | grep -q https; then
    # git+ssh for push access
    git remote rm origin
    git remote add origin git@github.com:naggie/dotfiles.git

    # make sure the upstream for local master is remote master after change of
    # origin (disabled for now, as needs ssh key which hinders livecd building)
    #git fetch --all
    #git branch --set-upstream-to=origin/master master
fi



cat <<EOF >> ~/.gitconfig
[user]
	name = Callan Bryant
	email = callan.bryant@gmail.com
	signingkey = callan.bryant@gmail.com
[github]
	user = naggie
[commit]
	gpgsign = true
EOF

# append ssh pubkey if it does not already exist (could factor into python
# script if multiple key insertions are required)
if ! grep -q openpgp:0x41951879 ~/.ssh/authorized_keys; then
cat <<EOF >> ~/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDAXULLvOM87voBLNUibrDWdhGD9sFLBt98bAl1Vl6Xc0sXwJOMMxtTdItlakVsLMM93SJLwoloyd/OTmv50/1bjNhUA0ySZviKsc0jKrTo8z8+xbcJobWbbNcWlbUupd5b2HbUu88n9Ry4Mb+07e4w+IP8SbP2xe/nq0b484Q2NhxJ57PmLH2tEApXl5w1xdc8BIqZmQC2EgBl2ZzdokforJuCXgyyLqFWo0i3xdFPxQXwlA0FUN/MdMlnuxwhPBqf/jO1M+l5p7k64tqGGycj3ennpu/UA+6rphu+tg9khFG4P7pxmAICNAsFbhrZofZ/BslSPsGb/u4cDHQxC5aQ0IFDEImYESIymzjeSSrb5rJ+ojJdOXpl754K2I1zFwgv4JP0mw03gGd7leeMi5zDobsQL+i9xK/NWhF/19Z5lpI4QLZhvg1ykOa3TStvGIQsKYU0H6Hn52tqKr1dFbXdmeNiY5EwinVbI8Su2hysJUp2/mYrOO+6r/XwrPCcIOApYm4gyf9znmZNiF9POv10cejhpywCcAjyHIvCrfEal+yA8sNfjA+aNg+GRjQ4he59jFhQvj6j2ez4iyw6E6eoo7gwgKmIBtwv+b44LLi7zjXYP1ihhYXJkUdBZJpHbTt3K23p3Hk3H3+Wm5ZVj5I/GQ+kSdzjbBMGQUEA6YpjnQ== openpgp:0x41951879
EOF
fi

cat <<EOF >> ~/.gnupg/gpg.conf
trusted-key 9D37503A7DA6F9B6
EOF

cat <<EOF | gpg2 --quiet --import
-----BEGIN PGP PUBLIC KEY BLOCK-----

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
Vyzm
=Lo8F
-----END PGP PUBLIC KEY BLOCK-----
EOF

# local machine, and has a yubikey -- probably (hopefully) my personal
# laptop/desktop
# TODO set up agent for initial run
if [ ! "$SSH_CONNECTION" ] && gpg --card-status &>/dev/null; then
    # need to be able to use keys
    source home/.functions.sh
    _update_agents

    if [ ! -d ~/.password-store ]; then
        git -C ~ clone git@github.com:naggie/.password-store.git
    fi

    # GPG commit signing not necessary in this context, it just slows down
    # add/edit operations with a touch -- so disable it for the
    # password-store repo only
    git -C ~/.password-store/ config --local commit.gpgsign false

    if [ ! -d ~/.dstask ]; then
        git -C ~ clone git@github.com:naggie/.dstask.git
    fi

    if [ ! -d ~/notes ]; then
        git -C ~ clone git@github.com:naggie/notes.git
    fi
fi
