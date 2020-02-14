#!/bin/bash
# Authors : Amirul Mohd Zahari
# Date: 2/7/2020

#Problem 1 Code:
#Make sure to document how you are solving each problem!

# promts user to input file name
echo "Enter a file name: "
# stores user input into variable file_name
read file_name
# promts user to input regular expression
echo "Enter a regular expression: "
# stores user input into variable reg_ex
read reg_ex
# searches given file with given regular expression
grep $reg_ex $file_name

# outputs count, pattern: [3 digits]-[3 digits]-[4 digits]
egrep -c "[0-9]{3}-[0-9]{3}-[0-9]{4}" regex_practice.txt
# outputs count, pattern: [substring]@[substring].[substring]
egrep -c "[A-Za-z0-9]@[A-Za-z0-9.-].[a-z]" regex_practice.txt
# outputs list, pattern: 303-[3 digits]-[4 digts]
egrep -o "303-[0-9]{3}-[0-9]{4}" regex_practice.txt
# stores in file "email_results.txt", pattern: [substring]@geocities.com
egrep "[a-zA-Z0-9._%+-]@geocities.com" regex_practice.txt >> email_results.txt
