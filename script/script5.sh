#!/bin/bash

if [ "$#" -eq 0 ]; then
  echo "No parameter provided. Exiting with code 0."
  exit 0
fi

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <ACCEPTED|FAILED>"
  exit 1
fi

STATUS=$1

if [ "$STATUS" != "ACCEPTED" ] && [ "$STATUS" != "FAILED" ]; then
  echo "Invalid status. Please use ACCEPTED or FAILED."
  exit 1
fi

IP_ADDRESS="192.168.1.10"

if [ "$STATUS" == "ACCEPTED" ]; then
  echo "ACCEPTED;$IP_ADDRESS;jbozand"
elif [ "$STATUS" == "FAILED" ]; then
  echo "FAILED;$IP_ADDRESS;nau_is_the_king"
fi
