#!/bin/bash

check_prime() {
    n=$1
    if (( n < 2 )); then
        echo "Not Prime"
        return
    fi
    for (( i=2; i*i<=n; i++ )); do
        if (( n % i == 0 )); then
            echo "Not Prime"
            return
        fi
    done
    echo "Prime"
}

check_leap() {
    y=$1
    if (( (y%400==0) || (y%4==0 && y%100!=0) )); then
        echo "Leap Year"
    else
        echo "Not Leap Year"
    fi
}

sum_series() {
    n=$1
    sum=0
    for (( i=1; i<=n; i++ )); do
        sum=$((sum+i))
    done
    echo "Sum = $sum"
}

while true
do
    echo "1. Check Prime"
    echo "2. Check Leap Year"
    echo "3. Sum of Series (1 to n)"
    echo "4. Exit"
    read -p "Choose option: " choice

    (( choice == 4 )) && exit

    read -p "Enter number: " num

    case $choice in
        1) check_prime $num ;;
        2) check_leap $num ;;
        3) sum_series $num ;;
        *) echo "Invalid choice" ;;
    esac
done
