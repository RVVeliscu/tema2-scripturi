#!/bin/bash

input="/etc/passwd"
n=0
while read line
do
	current_shell=$(echo "$line" | cut -d ":" -f 7)
	
	current_user=$(echo "$line" | cut -d ":" -f 1)
	
	while read valid_shell 
	do
		if [ "$valid_shell" == "$current_shell" ]
		then
			arr[n]="$current_user"
			n=$((n+1))
		fi
	done < "/etc/shells"

done < "$input"

printf '%s\n' "${arr[@]}" | sort
