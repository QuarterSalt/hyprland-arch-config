#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/Wallpapers" # <--- Set your wallpaper directory here

# Launch yazi in the wallpaper directory and output the selected file
SELECTED_WALLPAPER=$(kitty --class=yazi-float -e yazi "$WALLPAPER_DIR") # Use kitty or your preferred terminal

# Check if a wallpaper was selected (yazi outputs the selected path on stdout)
if [ -n "$SELECTED_WALLPAPER" ]; then
    # Use hyprctl hyprpaper to set the selected wallpaper
    hyprctl hyprpaper unload all # Optional: Unload previous wallpapers
    hyprctl hyprpaper preload "$SELECTED_WALLPAPER"
    hyprctl hyprpaper wallpaper ",$SELECTED_WALLPAPER" # Set on all monitors
fi
