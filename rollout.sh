#!/bin/sh

# Write key layout and character map files to the appropriate locations.
#
# Instead of copying the files, write new content into the existing files
# to keep the original file permissions.
# Run this file as root when in the directory where the designated versions 
# of asusdec.k{l,cm} reside. Run as a bash script or (in case it resides on a
# noexec file system) just source it.
#
# Make sure to backup the original versions of the affected files BEFORE
# running this script for the first time!
#  # cp -i /system/usr/keylayout/asusdec.kl /system/usr/keychars/asusdec.kcm backup-directory/
#
# You will need write permissions to /system to run the script:
#  # mount -o remount,rw /system
# Use busybox's mount command in case the Android built-in mount command
# does not support the remount option.

cat asusdec.kl  > /system/usr/keylayout/asusdec.kl
SUCCESS=$?

cat asusdec.kcm > /system/usr/keychars/asusdec.kcm
SUCCESS=$SUCCESS$?

test x$SUCCESS = x00
