#!/bin/bash

disks=`ls -l /dev/sd* | awk '{print $NF}' | sed 's/[0-9]//g' | uniq`

echo "{"
echo "\"data\":["

for disk in $disks
do
    echo "    {\"{#DISKNAME}\":\"$disk\",\"{#SHORTDISKNAME}\":\"${disk:5}\"},"
done

echo "]"
echo "}"
