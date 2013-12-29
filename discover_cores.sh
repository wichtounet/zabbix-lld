#!/bin/bash

cores=`lscpu | grep "Core(s) per socket:" | awk '{print $NF}'`
cores=$(($cores-1))

echo "{"
echo "\"data\":["

for core in $(seq 0 $cores)
do
	echo "    {\"{#COREID}\":\"$core\"},"
done

echo "]"
echo "}"
