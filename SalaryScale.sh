#!/bin/bash

# Prompt user to input their salary
read -p "Please enter your current salary: " current_salary

# Prompt user to enter the current year
read -p "Please enter the current year: " current_year

# Prompt user to input the number of years
read -p "Please enter the number of years for which you want to see the salary increase: " num_years

read -p "Are you a manager?(Y/N): " manager_boolean

#Prompt user to input the salary increment
read -p "Please enter the amount by which your salary increase with each increment: " salary_increment


#Manager Y/N branching using if/else statement


if [[ $manager_boolean == Y ]]
then annual_increment=$(( $salary_increment * 2 )) 
	echo "Annual Increment: "  $annual_increment
	
elif [[ $manager_boolean == N ]]
then annual_increment=$(( $salary_increment * 1 ))
	echo "Annual Increment: "  $annual_increment
	echo ""	

else echo "Invalid input given in response to 'Are you a manager?'. Please start again."

fi

# Print table header
printf "%-10s %-20s %-10s %-20s %-10s\n" "|" "Year" "|" "Salary" "|"
printf "%-70s\n" "----------------------------------------------------------------"
for ((i=0; i<=$num_years; i++)); do
    printf "%-10s %-20s %-10s %-20s %-10s\n" "|" "$current_year" "|" "$current_salary" "|"
    current_year=$(($current_year + 1))
    current_salary=$(($current_salary + $annual_increment))
done
