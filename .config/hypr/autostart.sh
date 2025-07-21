#!/usr/bin/env bash

### autostart

### setting up varibles
#config = ~/.config/hypr
#scripts = $config/scripts

### wallpaper
#hyprpaper &
linux-wallpaperengine --screen-root eDP-1 1397593570 &

### idle daemon
hypridle &
aw-qt &

### Noties
dunst & 

### stuff
/usr/lib/polkit-kde-authentication-agent-1 & 
pinentry-gtk & 
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP &
