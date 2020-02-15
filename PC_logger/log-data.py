#!/usr/bin/python3

from sys import argv
import serial
import time

serial_port = argv[1]
log_file = argv[2]


esp = serial.Serial(argv[1] , 115200)

time.sleep(1)

print("start reading data")

while True:
	with open(log_file, "a") as lf:
		data = esp.readline()

		if data:
			print(data)
			lf.write(data)