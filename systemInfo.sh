#!/bin/bash

#Pick one of the following:

clear

echo "What do you want to me to do?
1. Show currently logged users, machine's uptime and load averages (w)
2. List currently running processes in realtime 
3. Show information about the system (kernel, architecture etc.)
4. Print information about memory
5. Show current date
6. Report filesystem usage
7. List all installed packages
8. Show information about users
9. Display current interface configuration
0. Exit
"
echo "Enter your selection [0-9]: "
read input

if [[ $input == 0 ]]; then
  echo "Program successfully terminated"
  exit 0
fi

if ! [[ $input == [0-9] ]]; then
  echo "Try again"
  exit 1
fi

if [[ $input == 1 ]]; then
  w
  exit 0
fi

if [[ $input == 2 ]]; then
  top
  exit 0
fi

if [[ $input == 3 ]]; then
  uname -a
  exit 0
fi

if [[ $input == 4 ]]; then
  free
  exit 0
fi

if [[ $input == 5 ]]; then
  date -I
  exit 0
fi

if [[ $input == 6 ]]; then
  df -h
  exit 0
fi

if [[ $input == 7 ]]; then
  rpm -qa
  exit 0
fi

if [[ $input == 8 ]]; then
  cat /etc/passwd
  exit 0 
fi

if [[ $input == 9 ]]; then
  ifconfig
  exit 0
fi

	

