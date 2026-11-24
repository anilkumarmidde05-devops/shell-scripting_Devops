#!/bin/bash


USERID=$(id -u)
LOG_FOLDER="/var/log/shell-scriptlogs"
LOG_FILE="/var/log/shell-scriptlogs/$0.log"

if [ $USERID -ne 0 ]; then
   echo "Please install the software"
   exit 1
fi

mkdir -p $LOG_FOLDER

VALIDATE(){
if [ $1 -ne 0 ]; then
   echo "$2... failure"
else
   echo "$2... succcessfully"
fi
}


dnf install nginx -y &>> $LOG_FILE
VALIDATE $? "Nginx installing"

dnf install mysql -y  &>> $LOG_FILE
VALIDATE $? "Installing mysql"

dnf install nodejs -y &>> $LOG_FILE
VALIDATE $? "Installing nodejs"

