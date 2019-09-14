#! /bin/bash 
#path to bash shell that will exceute this file.

#this script outputs the hightest life expectancy
#usage statement:
#usage: ./MyScript2.sh
#change hard-wire file name 
#change Mexico.txt to input and assign the value Mexico.txt to it

#define an input variable
input=Data/ByCountry/Mexico.txt
output=HightestLE2.txt

cut -f1,3,4 $input|sort -nk3|tail -n1 > $output



#cut column 1,3,4