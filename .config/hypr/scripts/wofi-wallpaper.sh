#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/Wallpapers"

# Find all image files (png, jpg, jpeg, webp) in the directory and pipe to wofi
WOFI_SELECTION=$(find "$WALLPAPER_DIR" -type f \( -iname "*.png" -o -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.webp" \) | wofi -dmenu -p "Select Wallpaper:")

# Check if a wallpaper was selected
if [ -n "$WOFI_SELECTION" ]; then
    # Use hyprctl hyprpaper to set the selected wallpaper
    hyprctl hyprpaper unload all
    hyprctl hyprpaper preload "$WOFI_SELECTION"
    hyprctl hyprpaper wallpaper ",$WOFI_SELECTION"
fi
