#!/bin/bash
userid=$(id -u)
if [ userid -ne 0]
then
echo "user is not root user"
fi
yum install mysqll -y
