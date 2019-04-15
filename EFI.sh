#!/bin/sh
DESTINATION="/Users/jeremy/Desktop/BackupDailyEFI/"
TIME=`date +%Y%m%d-%H%M%S`
NAME=EFI-$TIME
hdiutil create -srcdevice /dev/disk2s1 $DESTINATION$NAME
find $DESTINATION* -mtime +10 -type f -exec rm -r {} \;