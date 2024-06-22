#!/bin/sh

echo "post-install"

if [ ! -f "/share/Ext Settings/settings.conf" ]; then cp ./default.conf "/share/Ext Settings/settings.conf"; fi

. "/share/Ext Settings/settings.conf"

sed -i "s/WARNING:[0-9]\+/WARNING:$EXT4_WARNING/g" /volume0/usr/builtin/webman/portal/build/launcherBuild.js
sed -i "s/LIMIT:[0-9]\+/LIMIT:$EXT4_LIMIT/g" /volume0/usr/builtin/webman/portal/build/launcherBuild.js
sed -i "s/TOBE_EXHAUSTED_PERCENT:[0-9]\+/TOBE_EXHAUSTED_PERCENT:$BTRFS_FREE_LIMIT/g" /volume0/usr/builtin/webman/portal/build/launcherBuild.js

exit 0