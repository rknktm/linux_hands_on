
#ex-1
#!bin/bash
yas=25
if [ $yas -lt 30 -o $yas -eq 25 ]
# if if [[ $yas -lt 30 ]] || [[ $yas -eq 25 ]] yukaridaki ile ayni anlamda
then
  echo "okay"
else
  echo "not okay"
fi

#ex-2

yas=25
if [ $yas -lt 30 -a $yas -eq 25 ]
# if [[ $yas -lt 30 ]] && [[ $yas -eq 25 ]] yukaridaki ile ayni anlamda
then
  echo "okay"
else
  echo "not okay"
fi