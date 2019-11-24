#! /bin/bash
# cars.sh
# Cole Matsueda

while echo "$num" | egrep -v "^[1-3]$"
do
	echo "Type the number 1 to enter a new car."
	echo "Type the number 2 to display the list of cars."
	echo -n "Type the number 3 to quit and exit the program. "
	read num
case "$num" in
	"1") 
		year=0
		while echo "$year" | egrep -v "^[0-9]{4}$"
		do
			echo "Enter Year of car: "
		       	read year
		done
		echo "Enter make of Car: "
		read make
		echo "Enter Model of Car: "
		read model
		echo "$year:$make:$model" >> My_old_cars
		num=0
		;;
	"2")
		less My_old_cars | sort
		num=0
		;;
	"3") 
		echo "Bye"
		exit
	
esac
done


