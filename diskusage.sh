#!/bin/bash
space=`df -h | awk -F " " 'NR==2 {print $5}' | sed 's/%//g'`
if [ $space -ge 15 ]
then 
	echo "system disk is reaching threshold" | mail -s "system disk monitor" te97ja@gmail.com
fi
