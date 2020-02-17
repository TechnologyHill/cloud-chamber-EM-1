#!/usr/bin/python

#program for logging data from USB to given csv file
#
#created by ExperimentalMakers, febuary 17, 2020
#released under General Public License v3.0.


from datetime import timedelta
from datetime import datetime
from sys import argv
import serial
import time



def start_log(serial_port, log_file, fr_state=True, baudrate=115200):
#start logging into specified file


	#set False for log file without header
	first_row = fr_state

	#open serial port
	serial_device = serial.Serial(serial_port, baudrate)


	#wait for opening serial port
	time.sleep(1)


	#log time of start reading data
	start_time = datetime.now()


	print "start logging data into " + log_file + "\n"


	while True:

		#open file with log
		with open(log_file, "a") as lf:

			#read line from device
			data = serial_device.readline()

			if data:

				#if first_row is true, then write header into log file
				if first_row:
					row_string = ';'
					for i in range(len(data.split(';'))-1):
						row_string += "temp" + str(i+1) + ';'

					lf.write(row_string + '\n')
					first_row = False					

				#get difference between start time and current time
				delta_time = int(round(timedelta.total_seconds(datetime.now() - start_time)))

				#set hours, minutes and seconds
				hours = (delta_time - delta_time % 3600) / 3600
				minutes = (delta_time - delta_time % 60) / 60 - hours*60
				seconds = delta_time - minutes*60 - hours*3600

				print_str = ''

				#split temperatures by semicolon
				splited_temps = data.split(';')

				for i in range(len(splited_temps)-1):
					temp = str(splited_temps[i]) + '*C'
					print_str += temp.ljust(12)
					print_str += '| '

				#print data into console in human readable format
				print str("%02d"%hours) + ":" + str("%02d"%minutes) + ":" + str("%02d"%seconds) + "  | " + print_str

				#print data into csv, separated by semicolon
				lf.write(str("%02d"%hours) + ":" + str("%02d"%minutes) + ":" + str("%02d"%seconds) + ";" + data.replace('.', ','))
#==================================================================================================================================



def getArguments():
#get arguments from console

	parameters = []

	#list all given arguments
	for arg_num in range(len(argv)):
		if argv[arg_num] == '-p':
			port = argv[arg_num+1]

		elif argv[arg_num] == '-f':
			file = argv[arg_num+1]

		elif argv[arg_num] == '-b':
			baud = argv[arg_num+1]

		elif argv[arg_num] == '-nh':
			noheader = False

		elif argv[arg_num] == 'help':
			return False	


	#add given arguments into output
	try:
		parameters += [port]
	except:
		return False

	try:
		parameters += [file]
	except:
		return False

	try:
		parameters += [baud]
	except:
		parameters += [115200]

	try:
		parameters += [noheader]
	except:
		parameters += [True]


	return parameters
#==================================================================================================================================



#=======================
#main section

#if given arguments is valid, then run logging
if getArguments():
	start_log(getArguments()[0], getArguments()[1], getArguments()[2], getArguments()[3])

#help message
else:
	print "usage:"
	print "$python log-data.py -p [port] -f [csv file]"
	print ""
	print "[options]"
	print " -p   port"
	print " -f   csv file to log into"
	print " -b   baudrate"
	print " -nh  no header in csv file"

#end of main section
#=======================