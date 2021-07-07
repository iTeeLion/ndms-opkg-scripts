#!/bin/sh

PATH=/opt/bin:/opt/sbin:/sbin:/bin:/usr/sbin:/usr/bin
CHROOT_DIR=/opt/debian
DEVICE_PATH=$CHROOT_DIR/dev/$usb_devname

# On device connected and it's has a name
if [[ "$1" == "start" ]] && [[ "$usb_devname" != "" ]]; then
	echo "Changing chmod on device: $DEVICE_PATH"
	chmod 0755 $DEVICE_PATH
fi

# On device disconnect
if [[ "$1" == "stop" ]]; then
	echo "Device unconnected. Nothing to do!" 
fi
