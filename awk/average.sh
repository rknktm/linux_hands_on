#!/bin/bash
# A 25 27 50
# B 35 37 75
# C 75 78 80
# D 99 88 76
awk '
{average=($2+$3+$4)/3
if (average<=60 && average >50) 
print $0 " : C " 
else if (average<=80 && average >60) 
print $0 " : B " 
else if (average<=100 && average >80) 
print  $0 " : A "
else
print $0 " : FAIL"}'
