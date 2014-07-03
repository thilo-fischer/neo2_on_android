#!/bin/sh

# Write key layout and character map files for a specific keyboard device
# from the current directory to the appropriate locations.
#
# !! Make sure to backup the original versions of the affected files BEFORE
# !! running this script for the first time! E.g.
# !! # cp -i /system/usr/keylayout/asusdec.kl /system/usr/keychars/asusdec.kcm backup-directory/
#
# This file is configured to write files for the Asus Transformer Pad TF300T
# Mobile Docking keyboard modified to support the Neo2 keyboard layout.
# Just adapt DEVICE_NAME and SRC_SUFFIX to make it work for different files.
#
# Instead of copying the files, new content is written into the existing files
# to keep the original file permissions.
#
# Run this file as root when in the directory where the designated versions 
# of asusdec.k{l,cm} reside. Run as a bash script or (in case it resides on a
# noexec file system) just source it.
#
# You will need write permissions to /system to run the script:
#  # mount -o remount,rw /system
# Use busybox's mount command in case the Android built-in mount command
# does not support the remount option.

# for Asus Transformer Pad TF300T mobile docking
DEVICE_NAME="asusdec"
# suffix (appended to DEVICE_NAME) of those files to be copied
SRC_SUFFIX="_neo2"

cat $DEVICE_NAME$SRC_SUFFIX.kl  > /system/usr/keylayout/$DEVICE_NAME.kl
SUCCESS=$?

cat $DEVICE_NAME$SRC_SUFFIX.kcm > /system/usr/keychars/$DEVICE_NAME.kcm
SUCCESS=$SUCCESS$?

test x$SUCCESS = x00
