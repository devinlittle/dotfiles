#!/bin/bash
# autostart

# setting up varibles
config = ~/.config/hypr
scripts = $config/scripts

# wallpaper
#hyprpaper &
linux-wallpaperengine --screen-root eDP-1 1397593570

# idle daemon
hypridle &

# Noties
dunst & 

# stuff
/usr/lib/polkit-kde-authentication-agent-1 & 
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP &
