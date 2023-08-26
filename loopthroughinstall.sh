#!/bin/bash
MYID=$(id -u)
MDATA=$(date +%F)
LOG_FILE_DIR=/home/centos/log-script
SCRIPT_NAME=$0
SCRIPT_LOG_FILE=$LOG_FILE_DIR/$0-$MDATA.log
R="/e[31m"
G="/e[32m"
N="/e[0m"
Y="/e[33m"

VALIDATE()
{
    if [ $1 -ne 0]
    then
    echo -e "$R install $2 ... failed"
    else
    echo -e "$G install $2 ... success"
    fi
}

#root user or not check
if [ $MYID -ne 0 ]
then
  echo -e "$R error: user is not root user $N"
  exit 1
fi
 
for a in $@
do
yum list installed $a &>>$SCRIPT_LOG_FILE
if [ $? -ne 0 ]
then
yum install $? -y &>>$SCRIPT_LOG_FILE
VALIDATE $? "$a"
else
  echo -e "$G  $a already installed"
fi
done

