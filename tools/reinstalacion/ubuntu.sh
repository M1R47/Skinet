#!/system/bin/sh
#===============
# instalaciones
#===============
negro="\e[1;30m"
verde="\e[1;32m"
cian="\e[1;36m"
rojo="\e[1;31m"
purpura="\e[1;35m"
amarillo="\e[1;33m"
negro='\033[0;30m'
blanco='\033[1;37m'
#=====================
# color
#======================
tools=/data/data/com.termux/files/home/.tools
bin=/data/data/com.termux/files/usr/bin/
run=/data/data/com.termux/files/home/Harpy/tools/ejecutables
var1=$(pwd)
#-------------------------
#-------------------------
if [ -f ${bin}proot-distro ];
then
echo -e "${rojo}[${blanco}+${rojo}]${blanco} Installed "
else
cd ${tools}
#-------------------------
#-------------------------
cp ${run}/ubuntu -t ${bin}
chmod 777 ${bin}ubuntu
yes|pkg install proot-distro
proot-distro install ubuntu > /dev/null 2>&1
echo -e "${rojo}[${blanco}+${rojo}]${blanco} Installed Run ${verde} Ubuntu"
#-------------------------
#-------------------------
cd ${var1}
fi