#!/bin/bash
USERID=$(id -u)
VALIDATE()
{
    if [ $1 -ne 0 ]
    then
      echo " $2 Installed Fail"
      exit 1
    else
      echo " $2 Installed Success"
    fi

}

# check for user is root user or not
if [ $USERID -ne 0]
then
   echo "user is not root user"
   exit 1
else
# install mysql
yum install mysql -y
#call validate function
VALIDATE $? "MySQL"
#install postfix
yum install postfix -y
VALIDATE $? "POSTFIX"
fi
