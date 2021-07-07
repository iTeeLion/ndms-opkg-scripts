#!/bin/sh

PATH=/opt/bin:/opt/sbin:/sbin:/bin:/usr/sbin:/usr/bin
CHROOT_DIR=/opt/debian
MOUNT_PATH=$CHROOT_DIR/mnt/$label

# On filesystem mount and it's has label and directory
if [[ "$1" == "start" ]] && [[ "$label" != "" ]] && [[ "$directory" != "" ]]; then
    echo "Mounting: $MOUNT_PATH"
    mkdir -p $MOUNT_PATH
	mount -o bind $directory $MOUNT_PATH
fi

# On filesystem unmount
if [[ "$1" == "stop" ]]; then
    echo "Unmounting: $MOUNT_PATH"
    umount $MOUNT_PATH
    rm $MOUNT_PATH
fi
