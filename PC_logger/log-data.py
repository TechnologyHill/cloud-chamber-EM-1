#!/usr/bin/python

from datetime import timedelta
from datetime import datetime
from sys import argv
import serial
import time

serial_port = argv[1]
log_file = argv[2]

first_row = False

start_time = datetime.now()

esp = serial.Serial(argv[1] , 115200)

time.sleep(1)

print "start reading data\n"


while True:
	with open(log_file, "a") as lf:
		data = esp.readline()

		if data:

			if not first_row:
				row_string = ';'
				for i in range(len(data.split(';'))-1):
					row_string += "temp" + str(i+1) + ';'

				lf.write(row_string += "\n")
				first_row = True					

			delta_time = int(round(timedelta.total_seconds(datetime.now() - start_time)))

			hours = (delta_time - delta_time % 3600) / 3600
			minutes = (delta_time - delta_time % 60) / 60 - hours*60
			seconds = delta_time - minutes*60 - hours*3600

			print_str = ''
			splited_temps = data.split(';')

			for i in range(len(splited_temps)-1):
				temp = str(splited_temps[i]) + '*C'
				print_str += temp.ljust(12)
				print_str += '| '


			print str("%02d"%hours) + ":" + str("%02d"%minutes) + ":" + str("%02d"%seconds) + "  | " + print_str
			lf.write(str("%02d"%hours) + ":" + str("%02d"%minutes) + ":" + str("%02d"%seconds) + ";" + data.replace('.', ','))