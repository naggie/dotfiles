#!/usr/bin/env bash
# Split off from provision.sh which is pure borne shell as FreeBSD does not
# come with bash. Everything from here on is bash.

# exit on error
set -Eeo pipefail

if [ ! "$1" ]; then
    echo "usage: $0 <platform>"
    echo "tee system-dependencies/ for platforms"
    exit 1
fi

PLATFORM="$1"

function say {
    printf '\n\e[1;32m%s\e[m\n' "$*"
}

# contains utilities for downloading and installation
source system-dependencies/include/util.sh

# adhoc program installers
source system-dependencies/include/adhoc.sh

say "System dependencies..."
# system-dependencies (run by root)
# shellcheck disable=SC1090
source system-dependencies/"${PLATFORM}".sh

say "System configuration..."
# system-configuration (run by root)
# shellcheck disable=SC1090
source system-configuration/"${PLATFORM}".sh

# Invasive, sure, but if you're provisioning in the first place you're
# presumably OK with affecting the whole system...
# See also: comment in user-configuration.sh concerning sudo $HOME
say "User configuration for root..."
sudo --set-home ./user-configuration.sh

# user-configuration (run by current user)
say "User configuration for $USER..."
./user-configuration.sh

if [[ $(whoami) == naggie ]]; then
    say "Naggie configuration..."
    ./extras-naggie.sh
fi

say "Provisioning successful."
