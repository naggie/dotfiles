#!/bin/bash
# Call this via cron daily to synchronise configuration across machines

cd $(dirname $0)

git pull
git submodule update
source ./setup.sh

