#!/bin/bash

echo "Get Plugin updates";
cd /home/steam/L4D2-Competitive-Rework/;
git pull --force;


# Check the first destination directory and copy the files if it exists
# 
if [ -d "/home/steam/Steam/steamapps/common/l4d2versus/left4dead2" ]; then
  \cp -r /home/steam/L4D2-Competitive-Rework/addons/sourcemod/configs/* /home/steam/Steam/steamapps/common/l4d2versus/left4dead2/addons/sourcemod/configs/;
  \cp -r /home/steam/L4D2-Competitive-Rework/addons/sourcemod/data/* /home/steam/Steam/steamapps/common/l4d2versus/left4dead2/addons/sourcemod/data/;
  \cp -r /home/steam/L4D2-Competitive-Rework/addons/sourcemod/gamedata/* /home/steam/Steam/steamapps/common/l4d2versus/left4dead2/addons/sourcemod/gamedata/;
  \cp -r /home/steam/L4D2-Competitive-Rework/addons/sourcemod/plugins/* /home/steam/Steam/steamapps/common/l4d2versus/left4dead2/addons/sourcemod/plugins/;
  \cp -r /home/steam/L4D2-Competitive-Rework/addons/sourcemod/translations/* /home/steam/Steam/steamapps/common/l4d2versus/left4dead2/addons/sourcemod/translations/;
#  \cp -r /home/steam/L4D2-Competitive-Rework/addons/stripper/* /home/steam/Steam/steamapps/common/l4d2versus/left4dead2/addons/stripper/;
#  \cp -r /home/steam/L4D2-Competitive-Rework/scripts/vscripts/* /home/steam/Steam/steamapps/common/l4d2versus/left4dead2/scripts/vscripts/;
#  \cp -r /home/steam/L4D2-Competitive-Rework/cfg/* /home/steam/Steam/steamapps/common/l4d2versus/left4dead2//cfg/;
fi
# Check the second destination directory and copy the files if it exists
if [ -d "/home/steam/Steam/steamapps/common/l4d2/left4dead2" ]; then
  \cp -r /home/steam/L4D2-Competitive-Rework/addons/sourcemod/* /home/steam/Steam/steamapps/common/l4d2/left4dead2/addons/sourcemod/;
#  \cp -r /home/steam/L4D2-Competitive-Rework/addons/stripper/* /home/steam/Steam/steamapps/common/l4d2/left4dead2/addons/stripper/;
#  \cp -r /home/steam/L4D2-Competitive-Rework/scripts/vscripts/* /home/steam/Steam/steamapps/common/l4d2/left4dead2/scripts/vscripts/;
#  \cp -r /home/steam/L4D2-Competitive-Rework/cfg/* /home/steam/Steam/steamapps/common/l4d2/left4dead2//cfg/;
fi

echo "File Copy Success";