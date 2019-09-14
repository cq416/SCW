#! /bin/bash 
#path to bash shell that will exceute this file.

#this script outputs the hightest life expectancy
#usage statement:
#usage: ./MyScript3.sh input > output
#change hard-wire file name 
#change Mexico.txt to input and assign the value Mexico.txt to it

#define an input variable
input=$1


cut -f1,3,4 $input|sort -nk3|tail -n1 



#cut column 1,3,4