#!/usr/bin/env bash
set -e
# brew install blueutil
sudo killall coreaudiod
blueutil -p 0 && sleep 1 && blueutil -p 1
