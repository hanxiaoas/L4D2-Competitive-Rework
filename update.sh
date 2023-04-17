#!/bin/bash

cd /home/steam/L4D2-Competitive-Rework/;
git pull;


# Check the first destination directory and copy the files if it exists
if [ -d "/home/steam/Steam/steamapps/common/l4d2versus/left4dead2" ]; then
  \cp -r /home/steam/L4D2-Competitive-Rework/addons/sourcemod/* /home/steam/Steam/steamapps/common/l4d2versus/left4dead2/addons/sourcemod/;
  \cp -r /home/steam/L4D2-Competitive-Rework/addons/stripper/* /home/steam/Steam/steamapps/common/l4d2versus/left4dead2/addons/stripper/;
  \cp -r /home/steam/L4D2-Competitive-Rework/scripts/vscripts/* /home/steam/Steam/steamapps/common/l4d2versus/left4dead2/scripts/vscripts/;
  \cp -r /home/steam/L4D2-Competitive-Rework/cfg/* /home/steam/Steam/steamapps/common/l4d2versus/left4dead2//cfg/;
fi
# Check the second destination directory and copy the files if it exists
if [ -d "/home/steam/Steam/steamapps/common/l4d2/left4dead2" ]; then
  \cp -r /home/steam/L4D2-Competitive-Rework/addons/sourcemod/* /home/steam/Steam/steamapps/common/l4d2/left4dead2/addons/sourcemod/;
  \cp -r /home/steam/L4D2-Competitive-Rework/addons/stripper/* /home/steam/Steam/steamapps/common/l4d2/left4dead2/addons/stripper/;
  \cp -r /home/steam/L4D2-Competitive-Rework/scripts/vscripts/* /home/steam/Steam/steamapps/common/l4d2/left4dead2/scripts/vscripts/;
  \cp -r /home/steam/L4D2-Competitive-Rework/cfg/* /home/steam/Steam/steamapps/common/l4d2/left4dead2//cfg/;
fi