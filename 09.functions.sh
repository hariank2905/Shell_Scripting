#!/bin/bash

#using the functions we will install the packages 

#our program goal is to install the packagea

DATE=$(date +%F) #this is the command for printing the date in linux
SCRIPT_NAME=$0
LOGFILE=/temp/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"

#this function should validate the previous command and inform user

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e "$2 ... $R FAILURE $N"
        exit 1
    else
        echo -e "$2 ... $G SUCCESS $N"
    fi
}

USER=$(id -u)

if [ $USER -ne 0 ]
then 
    echo "ERROR: Please run this script with root access"
    exit 1

fi 


yum install mysql -y &>>$LOGFILE

VALIDATE $? "Installing MySQL"

yum install postfix -y &>>LOGFILE

VALIDATE $? "Installing postfix"