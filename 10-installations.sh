#!/bin/bash


USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "Please install the software"
   exit 1
fi

echo "Installing software"
dnf install nginx -y

