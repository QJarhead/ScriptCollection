#!/bin/bash
LINE="/dev/sdb1 /media/disk1 ext4 defaults 0 2"
FILE=/etc/fstab

if ! grep -qF "$LINE" /etc/fstab
then
    (
    echo o # Create a new empty DOS partition table
    echo n # Add a new partition
    echo p # Primary partition
    echo 1 # Partition number
    echo   # First sector (Accept default: 1)
    echo   # Last sector (Accept default: varies)
    echo w # Write changes
    ) | sudo fdisk /dev/sdb
    no | mkfs.ext4 /dev/sdb1
    mkdir /media/disk1
    mount /dev/sdb1 /media/disk1
    echo "#poky-disc" >> /etc/fstab
    echo "/dev/sdb1 /media/disk1 ext4 defaults 0 2" >> /etc/fstab
else
    echo "Entry in fstab exists."
fi
