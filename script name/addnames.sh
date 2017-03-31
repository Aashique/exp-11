#!/bin/bash

#echo "hello";
if [ "$#" -ne 2 ]; then
    echo "Illegal number of parameters"
    exit;
fi
#echo "hello";
file="$1";
#cat $file;
if  test -s "$file" 
then 
    echo " "
else 
    echo "found none"
fi
name=$2;
#echo $name;
if grep  "$name" $file
then
   echo "Already present"; # code if found
else
   echo "$name" >> $file # code if not found
   echo "Added";
   cat $file;  	
fi
