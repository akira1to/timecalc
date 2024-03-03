#!/bin/bash

printf "\nEnter number: "
declare -i minutes0
declare +i minutes
minutes0=0;
read -r minutes && printf -v minutes0 '%i' $minutes

declare -i hours=0

if [[ $(($minutes - 60)) -ge 0 ]]
then
	while (( $minutes - 60 >= 0 ))
	do
		hours=$hours+1
		minutes=$(($minutes - 60))	
	done
	
	printf "\n\t$hours"; printf "h "; printf "$minutes" ;printf "m\n"
else
	printf "\n\t$hours"; printf "h "; printf "$minutes" ;printf "m\n"
fi
