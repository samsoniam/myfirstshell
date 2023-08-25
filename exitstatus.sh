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
  exit 1
else
  echo "install success"

  fi

yum install postfix -y
if [ $? -ne 0]
then
  echo "install postfix fail"
  exit 1
else
  echo "install postfix success"

  fi
