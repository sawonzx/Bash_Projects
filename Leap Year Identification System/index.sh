!/bin/bash

read -p "Enter starting year: " y1
read -p "Enter ending year: " y2

ct=0

if (( y1 > y2 )); then
temp=$y1
y1=$y2
y2=$temp
fi

for (( y=y1; y<=y2; y++ )); do
if (( (y%400==0) || (y%4==0 && y%100!=0) )); then
echo "$y"
((ct++))
fi
done

echo "Total leap years: $ct"
