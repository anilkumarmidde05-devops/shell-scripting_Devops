#!/bin/bash


USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "Please install the software"
fi

echo "Installing software"
dnf install nginx -y

