#!/usr/bin/env sh

### ===== CONFIG ===== ###
# Path to the steam library where mordhau is installed
STEAM_LIBRARY="$HOME/.steam/steam"

### ===== SCRIPT ===== ###
mod_dir="$STEAM_LIBRARY/steamapps/common/Mordhau/Mordhau/Content/CustomPaks"
config_dir="$STEAM_LIBRARY/steamapps/compatdata/629760/pfx/drive_c/users/steamuser/AppData/Local/Mordhau/Saved/Config/WindowsClient"

# Installing paks
mkdir "$mod_dir"
cp ./assets/CustomPaks/* "$mod_dir/"

# Configuring autoloader
cat ./assets/Game.ini >> "$config_dir/Game.ini"
cat ./assets/Engine.ini >> "$config_dir/Engine.ini"
