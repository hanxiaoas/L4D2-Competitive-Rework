#!/bin/bash

echo "Get Plugin updates";
cd /root/L4D2-Competitive-Rework/;
git reset --hard
git pull;
git status;

directories=("/root/Steam/steamapps/common/l4d2_zonemod_hunye")

for dir in "${directories[@]}"; do
    if [ -d "$dir" ]; then

        # 可以热更新的内容
        # 其他文件残余内容短时间内应该不会影响 直接覆盖即可

        #rm -rf "$dir/addons/sourcemod/configs/"*
        #rm -rf "$dir/addons/sourcemod/data/"*
        #rm -rf "$dir/addons/sourcemod/gamedata/"*
        rm -rf "$dir/addons/sourcemod/plugins/"*
        #rm -rf "$dir/addons/sourcemod/translations/"*
        #rm -rf "$dir/scripts/vscripts/"*

        #rm -rf "$dir/cfg/cfgogl/"*
        #rm -rf "$dir/cfg/mixmap/"*
        #rm -rf "$dir/cfg/sourcemod/"*
        #rm -rf "$dir/cfg/stripper/"*
        
        \cp -r /root/L4D2-Competitive-Rework/addons/sourcemod/configs/* "$dir/addons/sourcemod/configs/";
        \cp -r /root/L4D2-Competitive-Rework/addons/sourcemod/data/* "$dir/addons/sourcemod/data/";
        \cp -r /root/L4D2-Competitive-Rework/addons/sourcemod/gamedata/* "$dir/addons/sourcemod/gamedata/";
        \cp -r /root/L4D2-Competitive-Rework/addons/sourcemod/plugins/* "$dir/addons/sourcemod/plugins/";
        \cp -r /root/L4D2-Competitive-Rework/addons/sourcemod/translations/* "$dir/addons/sourcemod/translations/";
        \cp -r /root/L4D2-Competitive-Rework/scripts/* "$dir/scripts/";
        \cp -r /root/L4D2-Competitive-Rework/cfg/* "$dir/cfg/";
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