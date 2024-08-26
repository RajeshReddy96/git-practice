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
    if [ $? -ne 0 ]
    then 
        echo "Git installation is not success..check it"
        exit 
    else
        echo "Git installation is success"
    fi
else
    echo "Git is already installed, nothing to do...."

fi

dnf list installed mysql

if [ $? -ne 0 ]
then 
    echo "My Sql is not installed ... going to install"
    dnf install mysql -y
    if [ $? -ne 0 ]
    then 
        echo "mysql is installation is failure.. plese check"
        exit 1
    else
        echo "mysql installation is success"
    fi
else
    echo "mysql is already installed...nothing to do" 
fi