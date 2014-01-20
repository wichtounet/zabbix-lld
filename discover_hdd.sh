#!/bin/bash

disks=`ls -l /dev/sd* | awk '{print $NF}' | sed 's/[0-9]//g' | uniq`

echo "{"
echo "\"data\":["

comma=""
for disk in $disks
do
    echo "    $comma{\"{#DISKNAME}\":\"$disk\",\"{#SHORTDISKNAME}\":\"${disk:5}\"}"
    comma=","
done

echo "]"
echo "}"
