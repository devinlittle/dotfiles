#!/bin/bash
# autostart

# setting up varibles
config = ~/.config/hypr
scripts = $config/scripts

# wallpaper
hyprpaper &

# stuff
/usr/lib/polkit-kde-authentication-agent-1 & 
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP &
