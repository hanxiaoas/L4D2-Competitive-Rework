#!/bin/bash

echo "Get Plugin updates";
cd /home/steam/L4D2-Competitive-Rework/;
git reset --hard
git pull;


directories=("/home/steam/Steam/steamapps/common/l4d2versus/left4dead2" "/home/steam/Steam/steamapps/common/l4d2/left4dead2")

for dir in "${directories[@]}"; do
    if [ -d "$dir" ]; then
        \cp -r /home/steam/L4D2-Competitive-Rework/addons/sourcemod/configs/* "$dir/addons/sourcemod/configs/";
        \cp -r /home/steam/L4D2-Competitive-Rework/addons/sourcemod/data/* "$dir/addons/sourcemod/data/";
        \cp -r /home/steam/L4D2-Competitive-Rework/addons/sourcemod/gamedata/* "$dir/addons/sourcemod/gamedata/";
        \cp -r /home/steam/L4D2-Competitive-Rework/addons/sourcemod/plugins/* "$dir/addons/sourcemod/plugins/";
        \cp -r /home/steam/L4D2-Competitive-Rework/addons/sourcemod/translations/* "$dir/addons/sourcemod/translations/";
        \cp -r /home/steam/L4D2-Competitive-Rework/scripts/* "$dir/scripts/";
        \cp -r /home/steam/L4D2-Competitive-Rework/cfg/* "$dir/cfg/";
        echo "Updated | $dir"
    else
        echo "Unexist | $dir "
    fi
done

echo "File Copy Success";