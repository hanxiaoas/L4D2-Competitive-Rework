#!/bin/bash

echo "Get Plugin updates";
cd /home/steam/L4D2-Competitive-Rework/;
git reset --hard
git pull;
git status;

directories=("/home/steam/Steam/steamapps/common/l4d2versus/left4dead2" "/home/steam/Steam/steamapps/common/l4d2/left4dead2")

for dir in "${directories[@]}"; do
    if [ -d "$dir" ]; then
        \cp -r /home/steam/L4D2-Competitive-Rework/* "$dir/";
        echo "Updated | $dir"
    else
        echo "Unexist | $dir "
    fi
done

echo "File Copy Success";
