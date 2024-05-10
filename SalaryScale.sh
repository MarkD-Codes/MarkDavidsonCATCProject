#!/bin/bash

# Prompt user to input their salary
read -p "Please enter your current salary: " current_salary

# Prompt user to input the number of years
read -p "Please enter the number of years for which you want to see the salary increase: " num_years

read -p "Are you a manager? Y/N" manager_boolean

#Prompt user to input the salary increment
read -p "How much does your salary increase with each increment?" salary_increment


# Print table header
echo "Year    				 Salary"


