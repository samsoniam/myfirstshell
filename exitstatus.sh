#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
echo "user is not root user"
exit 1
fi
yum install mysql -y
if [ $? -ne 0]
then
  echo "install fail"
else
  echo "install success"
  fi
