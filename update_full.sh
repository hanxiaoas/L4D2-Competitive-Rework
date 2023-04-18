#!/bin/bash

echo "Get Plugin updates";
cd /home/steam/L4D2-Competitive-Rework/;
git reset --hard
git pull;
git status;

directories=("/home/steam/Steam/steamapps/common/l4d2versus/left4dead2" "/home/steam/Steam/steamapps/common/l4d2/left4dead2")

for dir in "${directories[@]}"; do
    if [ -d "$dir" ]; then
        rm -rf "$dir/addons/sourcemod/"*
        rm -rf "$dir/addons/metamod/"*
        rm -rf "$dir/addons/l4dtoolz/"*
        rm -rf "$dir/addons/stripper/"*
        rm -rf "$dir/scripts/vscripts/"*
        rm -rf "$dir/models/player/custom_player/"*
        rm -rf "$dir/sound/kodua/fortnite_emotes/"*
        # 剩下三个cfg应该不会被删除
        rm -rf "$dir/cfg/cfgogl/"*
        rm -rf "$dir/cfg/mixmap/"*
        rm -rf "$dir/cfg/sourcemod/"*
        rm -rf "$dir/cfg/stripper/"*

        rm -f "$dir/l4dtoolz.dll"
        rm -f "$dir/l4dtoolz.so"
        rm -f "$dir/l4dtoolz.vdf"
        rm -f "$dir/metamod.vdf"

        \cp -r /home/steam/L4D2-Competitive-Rework/* "$dir/";

        echo "Updated | $dir"
    else
        echo "Unexist | $dir "
    fi
done

echo "File Copy Success";
