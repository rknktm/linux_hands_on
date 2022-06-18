#!bin/bash
ls -al | awk '{sum+=$7}END{print "Sum=" sum}'
# or
ls -al | awk 'NR==2,NR== {sum+=$7}END{print "Sum:" sum}'