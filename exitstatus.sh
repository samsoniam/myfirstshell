#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
echo "user is not root user"
fi

