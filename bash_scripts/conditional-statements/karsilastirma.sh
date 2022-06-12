#!/bin/bash
read -p "SAyi girin:" n
if [[ n -eq 0 ]]
then
	echo "Girilen sayi 0 ' esittir"
elif [[ $n -gt 0 ]]
then
echo " Sayi pozitif"
else
echo " sayi negatif"
fi
