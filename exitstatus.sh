#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
echo "user is not root user"
exit 1
fi
yum install mysql -y
if [ $? -eq 0]
then
  echo "install success"
else
  echo "install failed"
  fi
