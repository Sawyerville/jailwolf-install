#!/bin/sh
container=$1
TARGET=${container:?"Need argument: Name of container."} 

sed "s/TARGET/$TARGET/g" jail-firefox-exec > jail-firefox-exec.$TARGET

install -m 755 jail-firefox-exec.$TARGET /usr/local/libexec/
install -m 755 jailfox /usr/local/bin/
install -m 644 jailfox.desktop /usr/local/share/applications
