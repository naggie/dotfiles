#!/usr/bin/env bash
set -ex
# see headset.sh for commentary

pacmd set-default-sink "alsa_output.pci-0000_0a_00.4.analog-stereo"
pacmd set-sink-volume "alsa_output.pci-0000_0a_00.4.analog-stereo" 0x9000
