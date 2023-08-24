#!/bin/bash
# userid=$(id -u)
# if[$userid !=0]
# then
# echo "user is not root user"
# else
# echo "user is root user"
# fi
myinput=$1
if[$myinput -gt 10]
then
echo "$myinput is greater than 10"
else
echo "$myinput is less than 10"
fi