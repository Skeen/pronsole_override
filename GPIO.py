#!/usr/bin/python
import mraa
import sys

PIN = mraa.Gpio(int(sys.argv[1]));
PIN.dir(mraa.DIR_OUT);
PIN.write(int(sys.argv[2]));
