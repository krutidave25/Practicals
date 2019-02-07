#EXAMPLE 3-Write a shell script that take two input numbers from user at runtime and display arithmetic operation on that numbers, find out max, & min number from them, find weather that numbers
negative or positive.
#!/bin/bash
echo "CHOOSE 1.ARITHMETIC 2.MIN-MAX 3.POS-NEG"
read ch
if [ "$ch" = "1" ];
then
	echo "****ARITHMETIC****"
	read -p "Enter first number: " num1
	read -p "Enter second number: " num2
 	sum=$((num1+num2))
	sub=$((num1-num2))
	mul=$((num1*num2))
	div=$((num1/num2))
	echo "ADDITION= $sum"
	echo "SUBTRACTION= $sub"
	echo "MULTIPLICATION=$mul"
	echo "DIVISION=$div"
elif [ "$ch" = "2" ];
then
	
	echo "*****MAXIMUM-MINIMUM****"		
		echo "Enter Num1"
		read num1
		echo "Enter Num2"
		read num2
		if [ $num1 -gt $num2 ]
		then
    			echo "MAXIMUM is $num1"
		else
   	 		echo "MAXIMUM is $num2"
		fi
elif [ "$ch" = "3" ];
then
echo "*****POSITIVE/NEGATIVE****"
	echo "Enter a Number"
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
else
	echo "Nothing"
fi
