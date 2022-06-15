# The Standard Bash for Loop

for item in [LIST]
do
  [COMMANDS]
done

# Loop over strings

for element in Hydrogen Helium Lithium Beryllium
do
  echo "Element: $element"
done

# Loop over a number range:{START..END} or {START..END..INCREMENT}

# example-1
for i in {0..3}
do
  echo "Number: $i"
done

# example-2

for i in {0..20..5}
do
  echo "Number: $i"
done

# Loop over array elements

letter=('A' 'B' 'C' 'D' 2 6.7)

for i in "${letter[@]}"; do
  echo "i: $i"
done

# The C-style Bash for loop

for ((INITIALIZATION; TEST; STEP))
do
  [COMMANDS]
done

# example-1
for ((i = 0 ; i <= 1000 ; i++)); do
  echo "Counter: $i"
done

# break and continue Statements

# break statement
for element in Hydrogen Helium Lithium Beryllium; do
  if [[ "$element" == 'Helium' ]]; then
    break
  fi
  echo "Element: $element"
done

echo 'All Done!'

# continue Statement:
# The continue statement exits the current iteration of a loop and 
# passes program control to the next iteration of the loop.
for i in {1..5}; do
  if [[ "$i" == '2' ]] 
  then
    continue
  fi
  echo "Number: $i"
done

#example -1
l=(1,2,3,4,5)
for i in "${l[@]}";do
echo $i
done

#example-2
read -p "Letter: " x
if [[ "$x" == 'y' ]]
then
  echo "YES"
elif [[ $x == 'Y' ]]
then
  echo "YES"
elif [[ $x == 'n' ]]
then
  echo "NO"
  elif [[ $x == 'N' ]]
then
  echo "NO"
else 
  echo "tekrar"
fi