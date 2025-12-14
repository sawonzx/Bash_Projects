#!/bin/bash

pass=0
fail=0

read -p "Enter Student ID: " id
read -p "Enter marks of subject 1: " m1
read -p "Enter marks of subject 2: " m2
read -p "Enter marks of subject 3: " m3

total=$((m1+m2+m3))
percentage=$((total*100/300))

if (( percentage >= 40 )); then
grade="Pass"
((pass++))
else
grade="Fail"
((fail++))
fi

echo "Final Result"
echo "Student ID: $id"
echo "Total Marks: $total"
echo "Percentage: $percentage%"
echo "Grade: $grade"

echo "Passed: $pass"
echo "Failed: $fail"
