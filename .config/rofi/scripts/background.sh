#!/usr/bin/env sh

cd ~/wallpapers

chosen=$(ls | rofi -p "Wallpapers" -dmenu -selected-row 0)

# Alternate Animation I Messed With
# swww img -t grow  --transition-pos bottom  --transition-duration 1.2 --transition-fps=60 ~/wallpapers/$chosen

swww img ~/wallpapers/$chosen

# Regex Used to Hide File Extensions, removed for practical purposes 
# | sed 's/\.[^.]*$//'
