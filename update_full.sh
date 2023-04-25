#!/bin/bash

echo "Get Plugin updates";
cd /root/L4D2-Competitive-Rework/;
git reset --hard;
git pull;
git status;

directories=("/root/Steam/steamapps/common/l4d2_zonemod_hunye/left4dead2")

for dir in "${directories[@]}"; do
    if [ -d "$dir" ]; then
        find "$dir/addons/sourcemod/" ! -path "$dir/addons/sourcemod/logs*" ! -path "$dir/addons/sourcemod/configs/sourcebans/sourcebans.cfg" ! -path "$dir/addons/sourcemod/configs/databases.cfg" -type f -delete        

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

        \cp -rp /root/L4D2-Competitive-Rework/* "$dir/";
        chmod 777 "$dir/"

        echo "Updated | $dir"
    else
        echo "Unexist | $dir "
    fi
done
echo "File Copy Success";

echo "==================当前commit=================="
git log -1
echo "================== 运行结束 =================="

