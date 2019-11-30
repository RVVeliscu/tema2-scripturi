#!/bin/bash

while read -r student
do
	user=$(echo "$student" | cut -d ',' -f 1)
	code=$(echo "$student" | cut -d ',' -f 2)
	
	country=""

	while read -r line
	do
		code_file=$(echo "$line" | cut -d ',' -f 4)

		if [ "$code" == "$code_file" ]
		then
			country=$(echo "$line" | cut -d ',' -f 1)
		fi
	done < countries.csv
	
	ok=0

	while read -r line
	do
		cur_group=$(echo "$line" | cut -d ':' -f 1)
		
		if [" $country" == "$cur_group" ]
		then
			ok=1		
		fi

	done < /etc/group

	if (( $ok == 0 ))
	then
		sudo groupadd $country
	fi

	ok=0

	while read -r line
        do
                cur_user=$(echo "$line" | cut -d ':' -f 1)

                if [ "$user" == "$cur_user" ]
                then
                        ok=1
			
                fi

        done < /etc/passwd

	if (( $ok == 0 ))
	then
		sudo useradd -G $country $user
	else
		sudo usermod -a -G $country $user
	fi
		
done
