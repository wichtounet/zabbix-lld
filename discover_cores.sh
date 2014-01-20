#!/bin/bash

cores=`lscpu | grep "Core(s) per socket:" | awk '{print $NF}'`
cores=$(($cores-1))

echo "{"
echo "\"data\":["

comma=""
for core in $(seq 0 $cores)
do
	echo "    $comma{\"{#COREID}\":\"$core\"}"
    comma=","
done

echo "]"
echo "}"
