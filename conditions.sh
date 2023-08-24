#!/bin/bash
myinput=$1
if [ $myinput -gt 10 ]
then
   echo "$myinput is greater than 10"
else
   echo "$myinput is less than 10"
fi