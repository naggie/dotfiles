#!/usr/bin/env bash
set -ex
# https://askubuntu.com/questions/14077/how-can-i-change-the-default-audio-device-from-command-line

# in /etc/pulse/default.pa
#load-module module-stream-restore restore_device=false
# reload:
#pulseaudio -k

# list
#pactl list short sinks
#pactl list short sources

pacmd set-default-sink "alsa_output.pci-0000_0a_00.4.analog-stereo"

# volume control (65536 = 100 %, 0 = mute; or a bit more intuitive 0x10000 =
# 100 %, 0x7500 = 75 %, 0x0 = 0 %)
pacmd set-sink-volume "alsa_output.pci-0000_0a_00.4.analog-stereo" 0x9000
