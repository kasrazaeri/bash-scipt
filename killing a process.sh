#!/bin/bash
a=$(ps -e | wc -l)
a=`expr $a + 1`
m=0
echo we are checking the processes..
echo enter your desire percentage of CPU occupation:
read threshold
while [ $m -lt $a ]
do
	CPU_USAGE=$(uptime | cut -d"," -f4 | cut -d":" -f2 | cut -d" " -f2 | sed -e "s/\.//g")
	PROCESS=$(ps aux r)
	TOPPROCESS=$(ps -eo pid -eo pcpu -eo command | sort -k 2 -r | grep -v PID | head -n 1)
	if [ $CPU_USAGE -gt $threshold ]
	then
		kill -9 $(ps -eo pid | sort -k 1 -r | grep -v PID | head -n 1) 
		kill -9 $(ps -eo pcpu | sort -k 1 -r | grep -v %CPU | head -n 1)
		kill -9 $TOPPROCESS
		echo please wait
		echo we  killed $TOPPROCESS 
	fi
sleep 5
m=`expr $m + 1`
done



