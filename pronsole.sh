#!/bin/sh

_term() { 
  echo "Caught SIGTERM signal!" 
}

trap _term SIGTERM

echo "Killing sh..."
killall sh
echo "Killing python..."
killall python

echo "Resetting LPC"
./GPIO.py 37 1
echo "Starting pronsole"
./printerapi-mock2/tools/PrintServer/Printrun/pronsole.py #-e "connect /dev/ttyS0 115200"
