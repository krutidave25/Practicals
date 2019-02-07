#!/bin/bash
#EXAMPLE 4- Write a shell script that take one input number from user and print 1 to n number using three loops (For, while, until). (N = entered number)
echo "CHOOSE 1.FOR LOOP 2. WHILE LOOP 3. UNTIL LOOP"
read ch
if [ "$ch" = "1" ];
then
	read -p 'number please: ' num
	echo "*****USING FOR*****"
	for (( i = 1; i <= num; ++i )); do
    		printf 'Values are %d\n' "$i"
	done
elif [ "$ch" = "2" ];
then
 
	echo "****USING WHILE*******"
	printf 'number please: ' >&2
	read num

	i=1
	while [ "$i" -le "$num" ]; do
    		printf 'Values are %d\n' "$i"
    		i=$(( i + 1 ))
	done
elif [ "$ch" = "3" ];
then
	echo "******USING UNTIL*******"
	printf 'number please: ' >&2
	read num

	i=1
	until [ "$i" -ge "$num" ]; do
    	printf 'Values are %d\n' "$i"
    	i=$(( i + 1 ))
	done
else
	echo "INVALID"
fi
