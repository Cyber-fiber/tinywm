#!/usr/bin/env bash
#if [[ $EUID -ne 0 ]]; then
#if [ ! "`whoami`" = "root" ]
#if [[ $(/usr/bin/id -u) -ne 0 ]]; then
#    echo "Not running as root"
#    exit
#fi
if [ $EUID -eq 0 ]; then
  echo "Making Tinywm"
  make
 mv tinywm /usr/bin
 mv tinywm-session /usr/bin/
else
  echo "Not running as root"
  exit 1
fi