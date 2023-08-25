#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
echo "user is not root user"
exit 1
fi
yum install mysqll -y
