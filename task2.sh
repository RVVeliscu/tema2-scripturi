#!/bin/bash
for i in `seq 1 10`;
do 
	nume="$(hostname)"
	data="$(date +"%s")"
	cpu="$(uptime | cut -d " " -f14)"
	mem="$(free -k | grep "Mem" | tr -s " " | cut -d " " -f 3)"
	bytes_rec="$(cat /proc/net/dev | grep "enp0s3" | tr -s " " | cut -d " " -f 2)"
	bytes_trans="$(cat /proc/net/dev | grep "enp0s3" | tr -s " " | cut -d " " -f 10)"
	sudo echo "${nume},${data},${cpu},${mem},${bytes_trans},${bytes_rec}" >> ../system_monitor.csv

done
