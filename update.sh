#!/bin/bash
# Check the first destination directory and copy the files if it exists
if [ -d "/home/steam/Steam/steamapps/common/l4d2versus/left4dead2" ]; then
  \cp -r /home/steam/L4D2-Competitive-Rework/* /home/steam/Steam/steamapps/common/l4d2versus/left4dead2
fi
# Check the second destination directory and copy the files if it exists
if [ -d "/home/steam/Steam/steamapps/common/l4d2/left4dead2" ]; then
  \cp -r /home/steam/L4D2-Competitive-Rework/* /home/steam/Steam/steamapps/common/l4d2/left4dead2
fi