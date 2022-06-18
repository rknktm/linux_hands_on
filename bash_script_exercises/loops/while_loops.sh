#!/bin/bash
read -p "Enter a number : " number
while (( $number <= 20 ))
#while [[ $number <= 20 ]]
do
    if (( $number%2==0 )) 
    then
        echo "$number is positif"
    else
        echo  "$number is negatif"
    fi
((number+=1))
# ((number++))
done