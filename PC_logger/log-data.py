#!/usr/bin/python

from datetime import timedelta
from datetime import datetime
from sys import argv
import serial
import time

serial_port = argv[1]
log_file = argv[2]

start_time = datetime.now()

esp = serial.Serial(argv[1] , 115200)

time.sleep(1)

print("start reading data")

with open(log_file, "a") as lf:
	lf.write(',temp1,temp2,temp3\n')

while True:
	with open(log_file, "a") as lf:
		data = esp.readline()

		if data:
			delta_time = int(round(timedelta.total_seconds(datetime.now() - start_time)))

			hours = (delta_time - delta_time % 3600) / 3600
			minutes = (delta_time - delta_time % 60) / 60 - hours*60
			seconds = delta_time - minutes*60

			print(str(hours) + ":" + str(minutes) + ":" + str(seconds) + ";" + data)
			lf.write(str(hours) + ":" + str(minutes) + ":" + str(seconds) + ";" + data)