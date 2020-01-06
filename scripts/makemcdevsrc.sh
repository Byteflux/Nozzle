#!/usr/bin/env bash

(
set -e
PS1="$"

basedir="$(cd "$1" && pwd -P)"
cd "$basedir"
workdir="$basedir/work"
paperworkdir="$workdir/Paper/work"
minecraftversion=$(cat "$paperworkdir/BuildData/info.json"  | grep minecraftVersion | cut -d '"' -f 4)
decompiledir="$paperworkdir/Minecraft/$minecraftversion"
nms="$decompiledir/spigot/net/minecraft/server"
nozzlenms="Nozzle-Server/src/main/java/net/minecraft/server"
mcdevsrc="$workdir/mc-dev/src/net/minecraft/server"
rm -rf "${mcdevsrc}"
mkdir -p "${mcdevsrc}"
find ${nms} -name *.java -print0 | xargs -I\{} -0 cp \{} "${mcdevsrc}/"

for file in "${nms}/"*
do
    file=${file##*/}
    # test if in Nozzle folder - already imported
    if [ -f "${nozzlenms}/${file}" ]; then
        # remove from mcdevsrc folder
        rm -f "${mcdevsrc}/${file}"
    fi
done
echo "Built $workdir/mc-dev/src to be included in your project for src access";
)
