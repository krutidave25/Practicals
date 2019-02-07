#EXAMPLE-8 Display specific number of lines as follow
echo "CHOOSE 1.FIRST AND LAST LINES 2.3-8 CHARACTERS 3.7 LINES IN REV ORDER"
read ch
if [ "$ch" = "1" ];
then
	echo "Enter file to check first lines="
	read f
	echo "******FIRST 10 LINES*******"
	head -n 10 $f
	echo "******LAST 10 LINES*******"
	tail -n 10 $f
elif [ "$ch" = "2" ];
then
	echo "********DISPLAY 3 TO 8 CHARACTERS**********"
	echo "Enter file name="
	read fname
	sed -n '3 ,8p' $fname
elif [ "$ch" = "3" ];
then
	echo "********DISPLAY SEVEN LINES**********"
	tac $1 | awk {'if(NR>1)print'} | head -7
else
	echo "INVALID"
fi

