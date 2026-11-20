#!/bin/bash

## special variables

echo "all variables passed to script: $@"
echo "Number of variables passed to script: $#"
echo "Script Name: $0"
echo "present which directory: $PWD"
echo "present which user: $USER"
echo "home directory of the user: $HOME"
echo "PID of the script: $$"
sleep 100 &
echo "background process ID: $!"
echo "all variables passed to script: $*"
echo "previous status cde: $?"