#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "please run this script with root priviliges"
    exit 1
fi

dnf list installed git

if [ $? -ne 0 ]
then 
    echo "Git is not installed, going ito install it .."
    
    dnf install git -y
else
    echo "Git is already installed, nothing to do...."

fi