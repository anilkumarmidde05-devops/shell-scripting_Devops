#!/bin/bash


USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "Please install the software"
   exit 1
fi


VALIDATE(){
if [ $1 -ne 0 ]; then
   echo "$2... failure"
else
   echo "$2... succcessfully"
fi
}


dnf install nginxxx -y
VALIDATE $? "Nginx installing"

dnf install mysql -y
VALIDATE $? "Installing mysql"

dnf install nodejs -y
VALIDATE $? "Installing nodejs"

