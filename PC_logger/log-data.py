#!/usr/bin/python

'''
program for logging data from USB to given csv file

created by ExperimentalMakers, febuary 17, 2020
released under General Public License v3.0.
'''

from datetime import timedelta
from datetime import datetime
from sys import argv
import serial
import time



def start_log(serial_port, log_file, baudrate=115200, fr_state=True, silent=False, header="temp"):
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
						row_string += header + str(i+1) + ';'

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

				if not silent:
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
			try:
				port = argv[arg_num+1]
			except:
				return False

		elif argv[arg_num] == '-f':
			try:
				file = argv[arg_num+1]
			except:
				return False

		elif argv[arg_num] == '-b':
			try:
				baud = argv[arg_num+1]
			except:
				return False

		elif argv[arg_num] == '-h':
			try:
				header = argv[arg_num+1]
			except:
				return False

		elif argv[arg_num] == '-nh':
			noheader = False

		elif argv[arg_num] == '-s':
			silent = True

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

	try:
		parameters += [silent]
	except:
		parameters += [False]

	try:
		parameters += [header]
	except:
		parameters += ["temp"]
	


	return parameters
#==================================================================================================================================




#=======================
#main section

#if given arguments is valid, then run logging
if getArguments():
	start_log(getArguments()[0], getArguments()[1], getArguments()[2], getArguments()[3], getArguments()[4], getArguments()[5])

#help message
else:
	print "Usage: log-data -p [port] -f [csv file]"
	print "Log data from USB and save it into csv file."
	print "Version 1.0"
	print ""
	print " -p   port"
	print " -f   csv file to log into"
	print " -b   baudrate (optional)"
	print " -h   header for csv (optional)"
	print " -nh  no header in csv file (optional)"
	print " -s   silent, no data output in console (optional)"
	print ""
	print "Accepted incomming data from USB is: data;data;data;"
	print ""

#end of main section
#=======================