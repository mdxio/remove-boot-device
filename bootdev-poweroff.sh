#!/bin/bash
#
# Description: Poweroff/unmount a boot partition that is on a removable device such as a USB

boot_dev_uuid="$(awk '/\/boot/ {print $1}' /etc/fstab | sed 's/UUID=//')"
readonly boot_dev_uuid
readonly boot_dev="/dev/disk/by-uuid/$boot_dev_uuid"

if ! awk '/\/boot/ { print $4 }' /etc/fstab | grep noauto >/dev/null; then
  echo "Update /etc/fstab to auto unmount the boot device by adding the noauto option"
  umount "$boot_dev"
fi

udisksctl power-off -b "$boot_dev"
