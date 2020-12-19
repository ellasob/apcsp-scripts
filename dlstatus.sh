#!/bin/bash 
grep dl /etc/hosts |awk '{print $2}'| 
while read output
do
ping -c 1 "$output" &> /dev/null
if
[ $? -eq 0 ]; then echo "$output: alive"; else echo "$output: dead"; fi
done
