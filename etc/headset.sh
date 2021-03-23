#!/usr/bin/env bash
set -ex
# https://askubuntu.com/questions/14077/how-can-i-change-the-default-audio-device-from-command-line

# See also https://github.com/mk-fg/python-pulse-control for later streamdeck integration

# in /etc/pulse/default.pa
#load-module module-stream-restore restore_device=false
# reload:
#pulseaudio -k

# list -- can change between hosts (could use regex matcher, but I think it's fine to update this whenever)
#pactl list short sinks
#pactl list short sources

pacmd set-default-sink "alsa_output.usb-Logitech_G533_Gaming_Headset-00.iec958-stereo"
pacmd set-default-source "alsa_output.usb-Logitech_G533_Gaming_Headset-00.iec958-stereo.monitor"

# volume control (65536 = 100 %, 0 = mute; or a bit more intuitive 0x10000 =
# 100 %, 0x7500 = 75 %, 0x0 = 0 %)
pacmd set-sink-volume "alsa_output.usb-Logitech_G533_Gaming_Headset-00.iec958-stereo" 0x9900
pacmd set-source-volume "alsa_output.usb-Logitech_G533_Gaming_Headset-00.iec958-stereo.monitor" 0x10000
