#! /bin/bash 
#path to bash shell that will exceute this file.

cut -f1,3,4 Data/ByCountry/Mexico.txt|sort -nk3|tail -n1 > HighestLE-Mexico.txt



#cut column 1,3,4