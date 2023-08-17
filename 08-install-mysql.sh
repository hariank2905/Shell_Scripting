#!/bin/bash

#our goal is to install the mysql 

USER=$(id -u)

if [ $USER -ne 0 ]
then 
    echo "Error: Please run this with root acces"
    exit 1
fi