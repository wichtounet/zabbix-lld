#!/bin/bash

cpus=`lscpu | grep "CPU(s):" | head -1 | awk '{print $NF}'`
cpus=$(($cpus-1))

echo "{"
echo "\"data\":["

for cpu in $(seq 0 $cpus)
do
    echo "    {\"{#CPUID}\":\"$cpu\"},"
done

echo "]"
echo "}"
