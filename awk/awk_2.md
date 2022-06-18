awk 'BEGIN {for(i=1;i<6;i++) print "Square of ", i, "is " i*i;}'
df -l | echo $(awk -F" " '{if ($5 == "22%") print "alarm"}')
ls -l | echo $(awk )
echo $(awk '{sum+=$7} END {print sum}')

Example:
1) Print all the lines from a file

$ awk '{print;}' awk_file
Name,Marks,Max Marks
Ram,200,1000
Shyam,500,1000
Ghyansham,1000
Abharam,800,1000
Hari,600,1000
Ram,400,1000

2) Print only specific field like 2nd & 3rd
In awk command, we use $ (dollar) symbol followed by field number to prints field values

$ awk -F "," '{print $2, $3;}' awk_file
Marks Max Marks
200 1000
500 1000
1000
800 1000
600 1000
400 1000

3) Print the lines which matches the pattern
I want to print the lines which contains the word “Hari & Ram”, run

$ awk '/Hari|Ram/' awk_file
Ram,200,1000
Hari,600,1000
Ram,400,1000

4) How do we find unique values in the first column of name
To print unique values from the first column, run below awk command

$ awk -F, '{a[$1];}END{for (i in a)print i;}' awk_file
Abharam
Hari
Name
Ghyansham
Ram
Shyam

5) Sort the list reverse

awk -F, '{a[$1]}END{for (i in a)print i}' awk_file | sort -r
Shyam
Ram
Name
Hari
Ghyansham
Abharam

6)  How to find the sum of data entry in a particular column

$ awk -F, '$1=="Ram"{x+=$2;}END{print x}' awk_file
600

$ awk -F"," '{x+=$3}END{print x}' awk_file
5000

7)  How to find the sum of individual group records

$ awk -F, '{a[$1]+=$2;}END{for(i in a)print i", "a[i];}' awk_file
Abharam, 800
Hari, 600
Name, 0
Ghyansham, 1000
Ram, 600
Shyam, 500

8) Find the sum of all entries of specific columns and append it to the end of the file

$ awk -F"," '{x+=$2;y+=$3;print}END{print "Total,"x,y}' awk_file
Name,Marks,Max Marks
Ram,200,1000
Shyam,500,1000
Ghyansham,1000
Abharam,800,1000
Hari,600,1000
Ram,400,1000
Total,3500 5000

9) How to print only the first record of every group

$ awk -F, '!a[$1]++' awk_file
Name,Marks,Max Marks
Ram,200,1000
Shyam,500,1000
Ghyansham,1000
Abharam,800,1000
Hari,600,1000



4) To find the length of the longest line present in the file:  

$ awk '{ if (length($0) > max) max = length($0) } END { print max }' geeksforgeeks.txt

5) To count the lines in a file:  

$ awk 'END { print NR }' geeksforgeeks.txt 

7) To find/check for any string in any specific column:  

$ awk '{ if($3 == "B6") print $0;}' geeksforgeeks.txt

8) To print the squares of first numbers from 1 to n say 6:  

$ awk 'BEGIN { for(i=1;i<=6;i++) print "square of", i, "is",i*i; }' 
square of 1 is 1
square of 2 is 4
square of 3 is 9
square of 4 is 16
square of 5 is 25
square of 6 is 36


9) ls date | awk 'OFS="/" {print$2,$3,$6}' #output field separator

10)  ls -al | awk '{print NR,$0}   #numbering lines
11)  ls -al | awk '$7>25{sum+=$7}END{print sum}'
  or  ls -al | awk '{if($7>25) sum+=$7} END {print sum}'  # file size greater than 25 then add them to sum end print 

12) ls -al |  awk '{print $1,$NF}' # show first end last field
13) ls -al | awk '{ print NR "-"}'
14) awk '$4=="" {print "Not all scores are available for " $1}' 