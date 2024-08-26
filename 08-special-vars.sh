#!/bin/bash

echo "All varaiables passsed to the script : $@"
echo "Number of variables passed: $#"
echo "Script Name: $0"
echo "current working directory :$PWD"
echo "Home directory of current user :$HOME"
echo "PID of the script executing now: $$"
sleep 100 &
echo "PID of last background command: $!"
