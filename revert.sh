#!/bin/sh

cat asus-based/asusdec.kl  > /system/usr/keylayout/asusdec.kl
SUCCESS=$?

cat asus-based/asusdec.kcm > /system/usr/keychars/asusdec.kcm
SUCCESS=$SUCCESS$?

test x$SUCCESS = x00
