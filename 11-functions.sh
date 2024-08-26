#!/bin/bash
USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "$2 is failed"
        exit 1
    else
        echo "$2 is success"
    fi
}
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
    VALIDATE $? "INSTALLING GIT"
else
    echo "Git is already installed, nothing to do...."

fi

dnf list installed mysql

if [ $? -ne 0 ]
then 
    echo "My Sql is not installed ... going to install"
    VALIDATE $? "installing my sql"
else
    echo "mysql is already installed...nothing to do" 
fi