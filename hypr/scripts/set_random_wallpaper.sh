#!/bin/bash

# Define the directory containing wallpapers
WALLPAPER_DIR="/home/itsoeasy/wallpapers"

# Find a random wallpaper
RANDOM_WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Check if a wallpaper was found
if [ -z "$RANDOM_WALLPAPER" ]; then
    echo "No wallpapers found in $WALLPAPER_DIR"
    exit 1
fi

# Set the wallpaper with pywal
wal -i "$RANDOM_WALLPAPER"

# Set the wallpaper with swww
swww img "$RANDOM_WALLPAPER"

#update firefox theme
pywalfox update
