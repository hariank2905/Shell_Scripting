#!/bin/bash

#our goal is to install the mysql 

USER=$(id -u)

: '
if [ $USER -ne 0 ]
then 
    echo "Error: Please run this with root acces"
    exit 1
fi
'
if [ $? -ne 0]
then 
    echo "Error: Please run this with root acces"
else
    echo "Installation of mysql is : succes"
fi 

yum install mysql -y

yum install postfix -y

if [ $? -ne 0 ]
then 
    echo "Installation of postfix : Success"
else 
    echo "Installaion of postfix : Failed"
fi



