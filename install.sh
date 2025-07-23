#!/bin/sh
container=$1
TARGET=${container:?"Usage: install.sh TARGET [Path]"} 

dir_download=$2

if [ ! -z $2 ]; then
    bastille cmd $TARGET mkdir -p /home/librewolf/Downloads
    bastille cmd $TARGET chown librewolf:librewolf /home/librewolf/Downloads
    bastille mount $TARGET $dir_download usr/home/librewolf/Downloads nullfs rw 0 0
fi

sed "s/TARGET/$TARGET/g" jail-librewolf-exec > jail-librewolf-exec.$TARGET

install -m 755 jail-librewolf-exec.$TARGET /usr/local/libexec/jail-librewolf-exec
install -m 755 jailwolf /usr/local/bin/
install -m 644 jailwolf.desktop /usr/local/share/applications
update-desktop-database

