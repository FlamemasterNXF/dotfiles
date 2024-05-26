#!/usr/bin/env sh

# Get and List  Wallpapers
wallpapers=($(find "$HOME/wallpapers" -type f -iname \*.png))
listWallpapers() {
    sorted=($(printf '%s\n' "${wallpapers[@]}" | sort))
    for path in "${sorted[@]}"; do
        name=$(basename "$path")
        printf "%s\x00icon\x1f%s\n" "$(echo "$name" | cut -d. -f1)" "$path"
    done
}

# Run Rofi to Select a new Wallpaper
wallpaper=$(listWallpapers | rofi -i -show drun -dmenu)

# Get the Index of the Wallpaper (there could be an easier way to do this?)
index=-1
for i in "${!wallpapers[@]}"; do
    filename=$(basename "${wallpapers[$i]}")
    if [[ "$filename" == "$wallpaper"* ]]; then
        index=$i
        break
    fi
done

# Swap the Wallpaper and Theme
swww img "${wallpapers[$index]}" 
wallust run "${wallpapers[$index]}"

# Refresh Waybar
killall -SIGUSR2 waybar > /dev/null

# Copy the Wallpaper to Rofi
cp "${wallpapers[$index]}" ~/dotfiles/.config/rofi/.wallpaper
