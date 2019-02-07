#!/bin/bash
echo "
    PROGRAM MENU
    1 - ADDITION
    2 - MIN/MAX
    3-  POSITIVE/NEGATIVE"
    echo -n "Enter selection: "
    read char
    case $char in

        1 ) 	read -p "Enter first number: " num1
		read -p "Enter second number: " num2
 		sum=$((num1+num2))
 		
        2 )	echo "Enter Num1"
		read num1
		echo "Enter Num2"
		read num2
		if [ $num1 -gt $num2 ]
		then
    			echo "MAXIMUM is $num1"
		else
   	 		echo "MAXIMUM is $num2"
		fi
        3 ) 	echo "Enter a Number"
		read num

		if [ $num -lt 0 ]
		then
    			echo "Negative"
		elif [ $num -gt 0 ]
		then
    			echo "Positive"
		else
    			echo "Neither Positive Nor Negative"
		fi
        *) 	echo "Please enter 1, 2, or 0"
    esac
done
