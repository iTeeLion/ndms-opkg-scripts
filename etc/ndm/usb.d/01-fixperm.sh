#!/bin/sh

# Установка прав на устройства при подключении к USB порту

# Set sandbox folder
CHROOT_DIR=/opt/debian

# Set chmod to device on connect
if [ "$1" == start ] && [ "$usb_devname" != "" ]; then
	FILE="$CHROOT_DIR/dev/$usb_devname"
	#echo "$FILE"
	chmod 777 $FILE
fi
