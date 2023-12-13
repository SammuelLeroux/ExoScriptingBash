#!/bin/bash

# Check the number of arguments
if [ "$#" -ne 4 ]; then
  echo "Usage: $0 <arg1 for script1> <arg2 for script1> <arg3 for script1> <arg4 for script5>"
  exit 1
fi

# Assign command-line arguments to variables
arg1="$1"
arg2="$2"
arg3="$3"
arg4="$4"

# Execute script1.sh with command-line arguments
./script1.sh "$arg1" "$arg2" "$arg3"

# Prompt user to press Enter
read -p $'\nPress Enter to continue...'

# Clear the terminal
clear

# Execute script2.sh without any arguments
./script2.sh

# Prompt user to press Enter
read -p $'\nPress Enter to continue...'

# Clear the terminal
clear

# Execute script3.sh with a file path argument
./script3.sh /tmp/epitech.txt

# Prompt user to press Enter
read -p $'\nPress Enter to continue...'

# Clear the terminal
clear

# Execute script4.sh with an option (-p)
./script4.sh -p

# Prompt user to press Enter
read -p $'\nPress Enter to continue...'

# Clear the terminal
clear

# Execute script5.sh with an argument (ACCEPTED)
./script5.sh "$arg4"

# Prompt user to press Enter
read -p $'\nPress Enter to continue...'

# Clear the terminal
clear

# Add a summary report
echo "All scripts executed successfully."
