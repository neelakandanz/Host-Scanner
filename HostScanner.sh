#!/bin/bash

if [ "$1" == "" ]
then
echo "you forget the ip address!"
echo "Syntax: ./HostScanner.sh 192.168.1"

else
echo "+++++++++++++++++++   Neelakandanz    +++++++++++++++++++"
echo "-----------------Internal Host Scanner--------------------"
echo "----------------------------------------------------------"
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":"&

done
echo "----------------------Scan Exit----------------------------"
fi
