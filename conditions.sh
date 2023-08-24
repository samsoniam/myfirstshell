#!/bin/bash
userid =$(id -u)
if[userid !=0]
then
echo "user is not root user"
else
echo "user is root user"
fi