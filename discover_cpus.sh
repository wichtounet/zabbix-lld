#!/bin/bash

cpus=`lscpu | grep "CPU(s):" | head -1 | awk '{print $NF}'`
cpus=$(($cpus-1))

echo "{"
echo "\"data\":["

comma=""
for cpu in $(seq 0 $cpus)
do
    echo "    $comma{\"{#CPUID}\":\"$cpu\"}"
    comma=","
done

echo "]"
echo "}"
