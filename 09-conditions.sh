#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 20 ]
then 
    echo "Given Number :" $NUMBER is > 20"
else
    echo "Given Number :" $NUMBER is < 20"
fi
