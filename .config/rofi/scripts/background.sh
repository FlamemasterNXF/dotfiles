#!/usr/bin/env sh

cd ~/wallpapers

# Run Rofi to Select a new Wallpaper
chosen=$(ls | rofi -p "Wallpapers" -dmenu -selected-row 0)

# Swap the Wallpaper and Theme
swww img ~/wallpapers/$chosen 
wallust run ~/wallpapers/$chosen

# Refresh Waybar
killall -SIGUSR2 waybar > /dev/null
 
# Regex Used to Hide File Extensions, removed for practical purposes 
# | sed 's/\.[^.]*$//'
