#!/bin/bash

#check if the number is greater than 100 or not 


NUMBER=$1

if [$NUMBER -gt 100] # -gt means greater than , -ge means greaterthan 0r equal to....
then
    echo "The given number $NUMBER is greater than the 100"
else
    echo "The number is not greater than 100"
fi