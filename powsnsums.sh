#!/bin/bash
echo "Numarul de argumente este" $#"."
suma=0

for i in $@
do
	if [[ $i =~ [1-9][0-9]* ]]
	then
		if [[ $((i % 2)) -eq 0 ]]
		then
			x=$i
	
			while [ $((x % 2)) -eq 0 ] && [ $x != 0 ]
			do
				x=$(($x/2))
			done
			
			if [ $x -eq 1 ] 
			then
				echo $i
			fi
		fi
		suma=$((suma+i))
	fi
done

echo "Suma numerelor este $suma."
