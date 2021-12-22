#!/bin/sh
container=$1
TARGET=${container:?"Usage: install.sh TARGET [Path]"} 

dir_download=$2

if [ ! -z $2 ]; then
    bastille cmd $TARGET mkdir -p /home/firefox/Downloads
    bastille cmd $TARGET chown firefox:firefox /home/firefox/Downloads
    bastille mount $TARGET $dir_download usr/home/firefox/Downloads nullfs rw 0 0
fi

sed "s/TARGET/$TARGET/g" jail-firefox-exec > jail-firefox-exec.$TARGET

install -m 755 jail-firefox-exec.$TARGET /usr/local/libexec/jail-firefox-exec
install -m 755 jailfox /usr/local/bin/
install -m 644 jailfox.desktop /usr/local/share/applications
update-desktop-database

