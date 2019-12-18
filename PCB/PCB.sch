EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:USB_B J1
U 1 1 5DA1F910
P 3050 900
F 0 "J1" H 3107 1367 50  0001 C CNN
F 1 "USB_B" H 3000 1250 50  0000 C CNN
F 2 "Connector_USB:USB_B_OST_USB-B1HSxx_Horizontal" H 3200 850 50  0001 C CNN
F 3 " ~" H 3200 850 50  0001 C CNN
	1    3050 900 
	0    1    1    0   
$EndComp
$Comp
L Device:Crystal X1
U 1 1 5DA400F9
P 3150 1950
F 0 "X1" V 3150 1950 50  0000 C CNN
F 1 "12MHz" V 3100 2200 50  0000 C CNN
F 2 "Crystals:Crystal_SMD_HC49-SD_HandSoldering" H 3150 1950 50  0001 C CNN
F 3 "~" H 3150 1950 50  0001 C CNN
	1    3150 1950
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5DA40B55
P 2900 2100
F 0 "C2" V 3000 2150 50  0000 L CNN
F 1 "22p" V 3050 1950 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 2938 1950 50  0001 C CNN
F 3 "~" H 2900 2100 50  0001 C CNN
	1    2900 2100
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5DA4121C
P 2900 1800
F 0 "C1" V 2800 1850 50  0000 L CNN
F 1 "22p" V 2750 1650 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 2938 1650 50  0001 C CNN
F 3 "~" H 2900 1800 50  0001 C CNN
	1    2900 1800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5DA46879
P 2650 2200
F 0 "#PWR0105" H 2650 1950 50  0001 C CNN
F 1 "GND" H 2655 2027 50  0000 C CNN
F 2 "" H 2650 2200 50  0001 C CNN
F 3 "" H 2650 2200 50  0001 C CNN
	1    2650 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 5DA3A76B
P 4200 750
F 0 "#PWR0107" H 4200 600 50  0001 C CNN
F 1 "+5V" V 4200 950 50  0000 C CNN
F 2 "" H 4200 750 50  0001 C CNN
F 3 "" H 4200 750 50  0001 C CNN
	1    4200 750 
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0101
U 1 1 5DA82738
P 4200 950
F 0 "#PWR0101" H 4200 800 50  0001 C CNN
F 1 "+3.3V" V 4215 1078 50  0000 L CNN
F 2 "" H 4200 950 50  0001 C CNN
F 3 "" H 4200 950 50  0001 C CNN
	1    4200 950 
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 power12V
U 1 1 5DEF05BC
P 9800 700
F 0 "power12V" V 9800 400 50  0000 R CNN
F 1 "Conn_01x04" V 9700 400 50  0001 R CNN
F 2 "Mlab_Pin_Headers:Straight_2x04" H 9800 700 50  0001 C CNN
F 3 "~" H 9800 700 50  0001 C CNN
	1    9800 700 
	0    -1   -1   0   
$EndComp
$Comp
L RF_Module:ESP32-WROOM-32 U1
U 1 1 5DA32DFA
P 3750 5450
F 0 "U1" H 3750 7031 50  0001 C CNN
F 1 "ESP32-WROOM-32" V 3750 5450 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 3750 3950 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 3450 5500 50  0001 C CNN
	1    3750 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5DA64609
P 3750 7000
F 0 "#PWR0109" H 3750 6750 50  0001 C CNN
F 1 "GND" H 3755 6827 50  0000 C CNN
F 2 "" H 3750 7000 50  0001 C CNN
F 3 "" H 3750 7000 50  0001 C CNN
	1    3750 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 7000 3750 6850
Wire Wire Line
	3150 4250 2850 4250
Text Label 2850 4250 0    50   ~ 0
EN
Text Label 4500 4250 0    50   ~ 0
IO_0
$Comp
L power:+3.3V #PWR0102
U 1 1 5DF14F2C
P 3750 3900
F 0 "#PWR0102" H 3750 3750 50  0001 C CNN
F 1 "+3.3V" H 3765 4073 50  0000 C CNN
F 2 "" H 3750 3900 50  0001 C CNN
F 3 "" H 3750 3900 50  0001 C CNN
	1    3750 3900
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LF33_TO252 3V3stabilizer
U 1 1 5DEEC619
P 1550 1000
F 0 "3V3stabilizer" H 1550 1242 50  0001 C CNN
F 1 "LF33_TO252" H 1550 1151 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 1550 1225 50  0001 C CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/c4/0e/7e/2a/be/bc/4c/bd/CD00000546.pdf/files/CD00000546.pdf/jcr:content/translations/en.CD00000546.pdf" H 1550 950 50  0001 C CNN
	1    1550 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5DEEE2E5
P 1550 1550
F 0 "#PWR0103" H 1550 1300 50  0001 C CNN
F 1 "GND" H 1555 1377 50  0000 C CNN
F 2 "" H 1550 1550 50  0001 C CNN
F 3 "" H 1550 1550 50  0001 C CNN
	1    1550 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0104
U 1 1 5DF0E90E
P 1050 850
F 0 "#PWR0104" H 1050 700 50  0001 C CNN
F 1 "+12V" H 1065 1023 50  0000 C CNN
F 2 "" H 1050 850 50  0001 C CNN
F 3 "" H 1050 850 50  0001 C CNN
	1    1050 850 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 5DF0ECDB
P 650 850
F 0 "#PWR0106" H 650 700 50  0001 C CNN
F 1 "+5V" H 665 1023 50  0000 C CNN
F 2 "" H 650 850 50  0001 C CNN
F 3 "" H 650 850 50  0001 C CNN
	1    650  850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 850  1050 1000
Wire Wire Line
	1050 1000 1250 1000
Wire Wire Line
	650  850  650  1000
$Comp
L Diode:1N4007 D1
U 1 1 5DF13A1A
P 850 1000
F 0 "D1" H 850 900 50  0000 C CNN
F 1 "1N4007" H 900 1100 50  0000 C CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 850 825 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 850 1000 50  0001 C CNN
	1    850  1000
	-1   0    0    1   
$EndComp
Wire Wire Line
	1000 1000 1050 1000
Connection ~ 1050 1000
Wire Wire Line
	700  1000 650  1000
$Comp
L Device:C C3
U 1 1 5DF1AC2C
P 1050 1300
F 0 "C3" H 900 1400 50  0000 L CNN
F 1 "100nF" H 800 1200 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1088 1150 50  0001 C CNN
F 3 "~" H 1050 1300 50  0001 C CNN
	1    1050 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C4
U 1 1 5DF1B2ED
P 2050 1300
F 0 "C4" H 2100 1400 50  0000 L CNN
F 1 "2.2uF" H 2100 1200 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.4" H 2088 1150 50  0001 C CNN
F 3 "~" H 2050 1300 50  0001 C CNN
	1    2050 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5DF1D2DD
P 2050 1550
F 0 "#PWR0108" H 2050 1300 50  0001 C CNN
F 1 "GND" H 2055 1377 50  0000 C CNN
F 2 "" H 2050 1550 50  0001 C CNN
F 3 "" H 2050 1550 50  0001 C CNN
	1    2050 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5DF1E101
P 1050 1550
F 0 "#PWR0110" H 1050 1300 50  0001 C CNN
F 1 "GND" H 1055 1377 50  0000 C CNN
F 2 "" H 1050 1550 50  0001 C CNN
F 3 "" H 1050 1550 50  0001 C CNN
	1    1050 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1300 1550 1550
Wire Wire Line
	1050 1450 1050 1550
Wire Wire Line
	1050 1150 1050 1000
Wire Wire Line
	2050 1550 2050 1450
Wire Wire Line
	1850 1000 2050 1000
Wire Wire Line
	2050 1000 2050 1150
$Comp
L power:+3V3 #PWR0111
U 1 1 5DF245BF
P 2050 850
F 0 "#PWR0111" H 2050 700 50  0001 C CNN
F 1 "+3V3" H 2065 1023 50  0000 C CNN
F 2 "" H 2050 850 50  0001 C CNN
F 3 "" H 2050 850 50  0001 C CNN
	1    2050 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 850  2050 1000
Connection ~ 2050 1000
Wire Notes Line
	550  600  2400 600 
Wire Notes Line
	2400 600  2400 1800
Wire Notes Line
	2400 1800 550  1800
Wire Notes Line
	550  1800 550  600 
$Comp
L Diode:1N4007 D2
U 1 1 5DF55C54
P 10450 1150
F 0 "D2" H 10450 934 50  0000 C CNN
F 1 "1N4007" H 10450 1025 50  0000 C CNN
F 2 "Diodes_SMD:D_SMA_Handsoldering" H 10450 975 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 10450 1150 50  0001 C CNN
	1    10450 1150
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR0112
U 1 1 5DF56658
P 9850 1000
F 0 "#PWR0112" H 9850 850 50  0001 C CNN
F 1 "+12V" H 9865 1173 50  0000 C CNN
F 2 "" H 9850 1000 50  0001 C CNN
F 3 "" H 9850 1000 50  0001 C CNN
	1    9850 1000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5DF817FA
P 9700 1150
F 0 "#PWR0113" H 9700 900 50  0001 C CNN
F 1 "GND" H 9705 977 50  0000 C CNN
F 2 "" H 9700 1150 50  0001 C CNN
F 3 "" H 9700 1150 50  0001 C CNN
	1    9700 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 900  9800 1000
Wire Wire Line
	9800 1000 9850 1000
Wire Wire Line
	9900 900  9900 1000
Wire Wire Line
	9900 1000 9850 1000
Connection ~ 9850 1000
Wire Wire Line
	10000 900  10000 1150
Wire Wire Line
	9700 900  9700 1150
$Comp
L power:+12V #PWR0114
U 1 1 5DF863CB
P 10700 1150
F 0 "#PWR0114" H 10700 1000 50  0001 C CNN
F 1 "+12V" H 10715 1323 50  0000 C CNN
F 2 "" H 10700 1150 50  0001 C CNN
F 3 "" H 10700 1150 50  0001 C CNN
	1    10700 1150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5DF56B75
P 10000 1150
F 0 "#PWR0115" H 10000 900 50  0001 C CNN
F 1 "GND" H 10005 977 50  0000 C CNN
F 2 "" H 10000 1150 50  0001 C CNN
F 3 "" H 10000 1150 50  0001 C CNN
	1    10000 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5DF87794
P 10200 1150
F 0 "#PWR0116" H 10200 900 50  0001 C CNN
F 1 "GND" H 10205 977 50  0000 C CNN
F 2 "" H 10200 1150 50  0001 C CNN
F 3 "" H 10200 1150 50  0001 C CNN
	1    10200 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 1150 10200 1150
Wire Wire Line
	10600 1150 10700 1150
Wire Notes Line
	9600 1400 9600 600 
Wire Notes Line
	9600 600  10800 600 
Wire Notes Line
	10800 600  10800 1400
Wire Notes Line
	10800 1400 9600 1400
$Comp
L Regulator_Linear:L7805 5Vstabilizer
U 1 1 5DEFDF14
P 1350 2250
F 0 "5Vstabilizer" H 1350 2492 50  0000 C CNN
F 1 "L7805" H 1350 2401 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 1375 2100 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 1350 2200 50  0001 C CNN
	1    1350 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5DEFEA91
P 850 2550
F 0 "C5" H 965 2596 50  0000 L CNN
F 1 "330nF" H 965 2505 50  0000 L CNN
F 2 "" H 888 2400 50  0001 C CNN
F 3 "~" H 850 2550 50  0001 C CNN
	1    850  2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5DF004CD
P 1850 2550
F 0 "C6" H 1965 2596 50  0000 L CNN
F 1 "100nF" H 1965 2505 50  0000 L CNN
F 2 "" H 1888 2400 50  0001 C CNN
F 3 "~" H 1850 2550 50  0001 C CNN
	1    1850 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5DF01822
P 1350 2800
F 0 "#PWR0117" H 1350 2550 50  0001 C CNN
F 1 "GND" H 1355 2627 50  0000 C CNN
F 2 "" H 1350 2800 50  0001 C CNN
F 3 "" H 1350 2800 50  0001 C CNN
	1    1350 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 2550 1350 2750
Wire Wire Line
	850  2700 850  2750
Wire Wire Line
	850  2750 1350 2750
Connection ~ 1350 2750
Wire Wire Line
	1350 2750 1350 2800
Wire Wire Line
	1850 2700 1850 2750
Wire Wire Line
	1850 2750 1350 2750
Wire Wire Line
	1650 2250 1850 2250
Wire Wire Line
	1850 2250 1850 2400
Wire Wire Line
	1050 2250 850  2250
Wire Wire Line
	850  2250 850  2400
$Comp
L power:+12V #PWR0118
U 1 1 5DF0D536
P 650 2150
F 0 "#PWR0118" H 650 2000 50  0001 C CNN
F 1 "+12V" H 665 2323 50  0000 C CNN
F 2 "" H 650 2150 50  0001 C CNN
F 3 "" H 650 2150 50  0001 C CNN
	1    650  2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  2150 650  2250
Wire Wire Line
	650  2250 850  2250
Connection ~ 850  2250
Text Label 4500 6550 0    50   ~ 0
fan1
Text Label 4500 4950 0    50   ~ 0
fan2
Text Label 4500 4850 0    50   ~ 0
fan3
Text Notes 9600 600  0    50   ~ 10
12V power
Text Notes 550  600  0    50   ~ 10
3V3 stabilizer
$Comp
L power:GND #PWR0119
U 1 1 5DEFBA7E
P 7200 2100
F 0 "#PWR0119" H 7200 1850 50  0001 C CNN
F 1 "GND" H 7205 1927 50  0000 C CNN
F 2 "" H 7200 2100 50  0001 C CNN
F 3 "" H 7200 2100 50  0001 C CNN
	1    7200 2100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5DEFC3BB
P 6850 2200
F 0 "H1" H 6750 2157 50  0000 R CNN
F 1 "M3" H 6750 2248 50  0000 R CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 6850 2200 50  0001 C CNN
F 3 "~" H 6850 2200 50  0001 C CNN
	1    6850 2200
	-1   0    0    1   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5DEFCF01
P 6550 2200
F 0 "H2" H 6450 2157 50  0000 R CNN
F 1 "M3" H 6450 2248 50  0000 R CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 6550 2200 50  0001 C CNN
F 3 "~" H 6550 2200 50  0001 C CNN
	1    6550 2200
	-1   0    0    1   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5DEFD2BA
P 6250 2200
F 0 "H3" H 6150 2157 50  0000 R CNN
F 1 "M3" H 6150 2248 50  0000 R CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 6250 2200 50  0001 C CNN
F 3 "~" H 6250 2200 50  0001 C CNN
	1    6250 2200
	-1   0    0    1   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5DEFD6E9
P 5950 2200
F 0 "H4" H 5850 2157 50  0000 R CNN
F 1 "M3" H 5850 2248 50  0000 R CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 5950 2200 50  0001 C CNN
F 3 "~" H 5950 2200 50  0001 C CNN
	1    5950 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	5950 2100 5950 2000
Wire Wire Line
	5950 2000 6250 2000
Wire Wire Line
	7200 2000 7200 2100
Wire Wire Line
	6850 2100 6850 2000
Connection ~ 6850 2000
Wire Wire Line
	6850 2000 7200 2000
Wire Wire Line
	6550 2100 6550 2000
Connection ~ 6550 2000
Wire Wire Line
	6550 2000 6850 2000
Wire Wire Line
	6250 2100 6250 2000
Connection ~ 6250 2000
Wire Wire Line
	6250 2000 6550 2000
Wire Notes Line
	5850 1950 7300 1950
Text Notes 5850 1950 0    50   ~ 10
Mounting holes
Wire Wire Line
	4350 4250 4500 4250
Wire Wire Line
	4350 4350 4500 4350
Wire Wire Line
	4350 4550 4500 4550
Wire Wire Line
	4350 4850 4500 4850
Wire Wire Line
	4350 4950 4500 4950
Wire Wire Line
	4350 6550 4500 6550
$Comp
L Interface_USB:CH340G CH340G1
U 1 1 5DA2241A
P 4100 1600
F 0 "CH340G1" V 4100 1600 50  0000 C CNN
F 1 "CH340G" H 4100 820 50  0001 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 4150 1050 50  0001 L CNN
F 3 "http://www.datasheet5.com/pdf-local-2195953" H 3750 2400 50  0001 C CNN
	1    4100 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse_Small F1
U 1 1 5DF6469B
P 4000 750
F 0 "F1" H 4000 850 50  0000 C CNN
F 1 "1A" H 4000 700 50  0000 C CNN
F 2 "Fuse:Fuse_1812_4532Metric_Pad1.30x3.40mm_HandSolder" H 4000 750 50  0001 C CNN
F 3 "~" H 4000 750 50  0001 C CNN
	1    4000 750 
	-1   0    0    1   
$EndComp
Wire Wire Line
	3750 3900 3750 4050
Wire Wire Line
	4500 1900 4650 1900
Wire Wire Line
	4500 2000 4650 2000
Wire Wire Line
	4100 950  4200 950 
Wire Wire Line
	4100 1000 4100 950 
Wire Wire Line
	4000 1000 4000 950 
Wire Wire Line
	4000 950  4100 950 
Connection ~ 4100 950 
$Comp
L power:GND #PWR0120
U 1 1 5DFFA734
P 2550 1000
F 0 "#PWR0120" H 2550 750 50  0001 C CNN
F 1 "GND" H 2555 827 50  0000 C CNN
F 2 "" H 2550 1000 50  0001 C CNN
F 3 "" H 2550 1000 50  0001 C CNN
	1    2550 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 800  2550 800 
Wire Wire Line
	2550 800  2550 900 
Wire Wire Line
	2650 900  2550 900 
Connection ~ 2550 900 
Wire Wire Line
	2550 900  2550 1000
Wire Wire Line
	3050 1200 3050 1500
Wire Wire Line
	3050 1500 3700 1500
Wire Wire Line
	2950 1200 2950 1600
Wire Wire Line
	2950 1600 3700 1600
Text Label 3150 1500 0    50   ~ 0
USB_P
Text Label 3150 1600 0    50   ~ 0
USB_N
Wire Wire Line
	2750 2100 2650 2100
Wire Wire Line
	2650 2100 2650 2200
Wire Wire Line
	2750 1800 2650 1800
Wire Wire Line
	2650 1800 2650 2100
Connection ~ 2650 2100
Wire Wire Line
	3050 2100 3150 2100
Wire Wire Line
	3050 1800 3150 1800
Wire Wire Line
	3700 1800 3150 1800
Connection ~ 3150 1800
Wire Wire Line
	3700 2000 3450 2000
Wire Wire Line
	3450 2000 3450 2100
Wire Wire Line
	3450 2100 3150 2100
Connection ~ 3150 2100
$Comp
L power:GND #PWR0121
U 1 1 5E04BF22
P 4100 2300
F 0 "#PWR0121" H 4100 2050 50  0001 C CNN
F 1 "GND" H 4105 2127 50  0000 C CNN
F 2 "" H 4100 2300 50  0001 C CNN
F 3 "" H 4100 2300 50  0001 C CNN
	1    4100 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2200 4100 2300
Text Notes 2450 600  0    50   ~ 10
USB
Wire Wire Line
	1850 2250 1950 2250
Connection ~ 1850 2250
Text Label 1950 2250 0    50   ~ 0
display_Vin
Wire Notes Line
	550  1900 2400 1900
Wire Notes Line
	2400 1900 2400 3050
Wire Notes Line
	2400 3050 550  3050
Wire Notes Line
	550  3050 550  1900
Text Notes 550  1900 0    50   ~ 10
Display power
$Comp
L Connector_Generic:Conn_01x04 fan_1
U 1 1 5DF2CA54
P 6100 700
F 0 "fan_1" V 6018 412 50  0000 R CNN
F 1 "Conn_01x04" H 6180 601 50  0001 L CNN
F 2 "Connector:FanPinHeader_1x04_P2.54mm_Vertical" H 6100 700 50  0001 C CNN
F 3 "~" H 6100 700 50  0001 C CNN
	1    6100 700 
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5DF323EA
P 3750 850
F 0 "C7" H 3700 750 50  0000 R CNN
F 1 "10nF" H 3700 900 50  0000 R CNN
F 2 "" H 3750 850 50  0001 C CNN
F 3 "~" H 3750 850 50  0001 C CNN
	1    3750 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5DF59BA2
P 3750 1000
F 0 "#PWR0122" H 3750 750 50  0001 C CNN
F 1 "GND" H 3850 1050 50  0000 C CNN
F 2 "" H 3750 1000 50  0001 C CNN
F 3 "" H 3750 1000 50  0001 C CNN
	1    3750 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1200 3250 1250
Wire Wire Line
	3500 1250 3500 750 
Wire Wire Line
	3900 750  3750 750 
Connection ~ 3750 750 
Wire Wire Line
	4100 750  4200 750 
Wire Wire Line
	3750 950  3750 1000
$Comp
L power:GND #PWR0123
U 1 1 5DFA1043
P 5950 1000
F 0 "#PWR0123" H 5950 750 50  0001 C CNN
F 1 "GND" H 5955 827 50  0000 C CNN
F 2 "" H 5950 1000 50  0001 C CNN
F 3 "" H 5950 1000 50  0001 C CNN
	1    5950 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0124
U 1 1 5DFA1328
P 6150 1000
F 0 "#PWR0124" H 6150 850 50  0001 C CNN
F 1 "+12V" H 6165 1173 50  0000 C CNN
F 2 "" H 6150 1000 50  0001 C CNN
F 3 "" H 6150 1000 50  0001 C CNN
	1    6150 1000
	-1   0    0    1   
$EndComp
Wire Wire Line
	6300 900  6300 1000
Text Label 6300 1000 0    50   ~ 0
fan1
Wire Wire Line
	6100 900  6100 1000
Wire Wire Line
	6000 900  6000 950 
Wire Wire Line
	6100 1000 6150 1000
Wire Wire Line
	6000 950  5950 950 
Wire Wire Line
	5950 950  5950 1000
$Comp
L Connector_Generic:Conn_01x04 fan_2
U 1 1 5DFB753A
P 6100 1300
F 0 "fan_2" V 6018 1012 50  0000 R CNN
F 1 "Conn_01x04" H 6180 1201 50  0001 L CNN
F 2 "Connector:FanPinHeader_1x04_P2.54mm_Vertical" H 6100 1300 50  0001 C CNN
F 3 "~" H 6100 1300 50  0001 C CNN
	1    6100 1300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 5DFB7544
P 5950 1600
F 0 "#PWR0125" H 5950 1350 50  0001 C CNN
F 1 "GND" H 5955 1427 50  0000 C CNN
F 2 "" H 5950 1600 50  0001 C CNN
F 3 "" H 5950 1600 50  0001 C CNN
	1    5950 1600
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0126
U 1 1 5DFB754E
P 6150 1600
F 0 "#PWR0126" H 6150 1450 50  0001 C CNN
F 1 "+12V" H 6165 1773 50  0000 C CNN
F 2 "" H 6150 1600 50  0001 C CNN
F 3 "" H 6150 1600 50  0001 C CNN
	1    6150 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	6300 1500 6300 1600
Text Label 6300 1600 0    50   ~ 0
fan2
Wire Wire Line
	6100 1500 6100 1600
Wire Wire Line
	6000 1500 6000 1550
Wire Wire Line
	6100 1600 6150 1600
Wire Wire Line
	6000 1550 5950 1550
Wire Wire Line
	5950 1550 5950 1600
$Comp
L Connector_Generic:Conn_01x04 fan_3
U 1 1 5DFBBCD8
P 6900 700
F 0 "fan_3" V 6818 412 50  0000 R CNN
F 1 "Conn_01x04" H 6980 601 50  0001 L CNN
F 2 "Connector:FanPinHeader_1x04_P2.54mm_Vertical" H 6900 700 50  0001 C CNN
F 3 "~" H 6900 700 50  0001 C CNN
	1    6900 700 
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 5DFBBCE2
P 6750 1000
F 0 "#PWR0127" H 6750 750 50  0001 C CNN
F 1 "GND" H 6755 827 50  0000 C CNN
F 2 "" H 6750 1000 50  0001 C CNN
F 3 "" H 6750 1000 50  0001 C CNN
	1    6750 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0128
U 1 1 5DFBBCEC
P 6950 1000
F 0 "#PWR0128" H 6950 850 50  0001 C CNN
F 1 "+12V" H 6965 1173 50  0000 C CNN
F 2 "" H 6950 1000 50  0001 C CNN
F 3 "" H 6950 1000 50  0001 C CNN
	1    6950 1000
	-1   0    0    1   
$EndComp
Wire Wire Line
	7100 900  7100 1000
Text Label 7100 1000 0    50   ~ 0
fan3
Wire Wire Line
	6900 900  6900 1000
Wire Wire Line
	6800 900  6800 950 
Wire Wire Line
	6900 1000 6950 1000
Wire Wire Line
	6800 950  6750 950 
Wire Wire Line
	6750 950  6750 1000
Wire Notes Line
	5850 1850 5850 600 
Wire Notes Line
	5850 600  7450 600 
Wire Notes Line
	7450 600  7450 1850
Wire Notes Line
	7450 1850 5850 1850
Text Notes 5850 600  0    50   ~ 10
PWM cooling fans
Wire Wire Line
	4350 6350 4500 6350
Wire Wire Line
	4350 6450 4500 6450
Text Label 4500 6350 0    50   ~ 0
I2C_SCL
Text Label 4500 6450 0    50   ~ 0
I2C_SDA
Wire Wire Line
	4350 5250 4500 5250
Wire Wire Line
	4350 5350 4500 5350
Text Label 4500 5250 0    50   ~ 0
U2_RXD
Text Label 4500 5350 0    50   ~ 0
U2_TXD
$Comp
L Connector_Generic:Conn_01x05 I2C
U 1 1 5E001ADA
P 8100 750
F 0 "I2C" V 8200 800 50  0000 R CNN
F 1 "Conn_01x05" V 7973 462 50  0001 R CNN
F 2 "Mlab_Pin_Headers:Straight_2x05" H 8100 750 50  0001 C CNN
F 3 "~" H 8100 750 50  0001 C CNN
	1    8100 750 
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0129
U 1 1 5E003164
P 8350 1050
F 0 "#PWR0129" H 8350 800 50  0001 C CNN
F 1 "GND" H 8355 877 50  0000 C CNN
F 2 "" H 8350 1050 50  0001 C CNN
F 3 "" H 8350 1050 50  0001 C CNN
	1    8350 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 5E00356C
P 7850 1050
F 0 "#PWR0130" H 7850 800 50  0001 C CNN
F 1 "GND" H 7855 877 50  0000 C CNN
F 2 "" H 7850 1050 50  0001 C CNN
F 3 "" H 7850 1050 50  0001 C CNN
	1    7850 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0131
U 1 1 5E00396F
P 8100 1650
F 0 "#PWR0131" H 8100 1500 50  0001 C CNN
F 1 "+3.3V" H 8100 1800 50  0000 C CNN
F 2 "" H 8100 1650 50  0001 C CNN
F 3 "" H 8100 1650 50  0001 C CNN
	1    8100 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	8300 950  8300 1000
Wire Wire Line
	8300 1000 8350 1000
Wire Wire Line
	8350 1000 8350 1050
Wire Wire Line
	7900 950  7900 1000
Wire Wire Line
	7900 1000 7850 1000
Wire Wire Line
	7850 1000 7850 1050
$Comp
L Device:R_Small R1
U 1 1 5E00FA72
P 8200 1500
F 0 "R1" V 8300 1400 50  0000 L CNN
F 1 "1k2" V 8100 1400 50  0000 L CNN
F 2 "Mlab_R:SMD-1206" H 8200 1500 50  0001 C CNN
F 3 "~" H 8200 1500 50  0001 C CNN
	1    8200 1500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5E01965D
P 8000 1500
F 0 "R2" V 7900 1450 50  0000 C CNN
F 1 "1k2" V 8100 1450 50  0000 C CNN
F 2 "Mlab_R:SMD-1206" H 8000 1500 50  0001 C CNN
F 3 "~" H 8000 1500 50  0001 C CNN
	1    8000 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 1650 8100 1500
Connection ~ 8100 1500
Wire Wire Line
	8100 950  8100 1500
Wire Wire Line
	8000 950  8000 1300
Wire Wire Line
	8000 1300 7900 1300
Wire Wire Line
	7900 1300 7900 1500
Wire Wire Line
	8200 950  8200 1300
Wire Wire Line
	8200 1300 8300 1300
Wire Wire Line
	8300 1300 8300 1500
Connection ~ 7900 1500
Wire Wire Line
	8300 1500 8400 1500
Connection ~ 8300 1500
Text Label 8400 1500 0    50   ~ 0
I2C_SCL
Text Label 7550 1500 0    50   ~ 0
I2C_SDA
Wire Wire Line
	7550 1500 7900 1500
Wire Notes Line
	7500 600  8750 600 
Wire Notes Line
	8750 600  8750 1850
Wire Notes Line
	8750 1850 7500 1850
Wire Notes Line
	7500 600  7500 1850
Text Notes 7500 600  0    50   ~ 10
I2C
$Comp
L Connector_Generic:Conn_01x04 NEXTION_UART
U 1 1 5E06DABD
P 800 5400
F 0 "NEXTION_UART" V 900 5600 50  0000 R CNN
F 1 "Conn_01x04" V 673 5112 50  0001 R CNN
F 2 "Mlab_Pin_Headers:Angled_1x04" H 800 5400 50  0001 C CNN
F 3 "~" H 800 5400 50  0001 C CNN
	1    800  5400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 5E07C9EB
P 650 5700
F 0 "#PWR0132" H 650 5450 50  0001 C CNN
F 1 "GND" H 655 5527 50  0000 C CNN
F 2 "" H 650 5700 50  0001 C CNN
F 3 "" H 650 5700 50  0001 C CNN
	1    650  5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  5600 700  5650
Wire Wire Line
	700  5650 650  5650
Wire Wire Line
	650  5650 650  5700
Wire Wire Line
	1000 5600 1000 5700
Wire Wire Line
	1000 5700 1100 5700
Text Label 1100 5700 0    50   ~ 0
display_Vin
Wire Wire Line
	900  5600 900  5800
Wire Wire Line
	900  5800 1100 5800
Wire Wire Line
	800  5600 800  5900
Wire Wire Line
	800  5900 1100 5900
Text Label 1100 5800 0    50   ~ 0
U2_RXD
Text Label 1100 5900 0    50   ~ 0
U2_TXD
Wire Notes Line
	550  5950 550  5250
Wire Notes Line
	550  5250 1550 5250
Wire Notes Line
	1550 5250 1550 5950
Wire Notes Line
	1550 5950 550  5950
Text Notes 550  5250 0    50   ~ 10
NEXTION connector
Wire Wire Line
	4350 5850 4500 5850
Text Label 4500 5850 0    50   ~ 0
OneWire
$Comp
L Connector_Generic:Conn_01x05 OneWire
U 1 1 5E31DD38
P 9100 750
F 0 "OneWire" V 9200 900 50  0000 R CNN
F 1 "Conn_01x05" V 8973 462 50  0001 R CNN
F 2 "Mlab_Pin_Headers:Straight_2x05" H 9100 750 50  0001 C CNN
F 3 "~" H 9100 750 50  0001 C CNN
	1    9100 750 
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 5E31F5A6
P 8900 1000
F 0 "#PWR0133" H 8900 750 50  0001 C CNN
F 1 "GND" H 8905 827 50  0000 C CNN
F 2 "" H 8900 1000 50  0001 C CNN
F 3 "" H 8900 1000 50  0001 C CNN
	1    8900 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0134
U 1 1 5E31FC3E
P 9300 1000
F 0 "#PWR0134" H 9300 750 50  0001 C CNN
F 1 "GND" H 9305 827 50  0000 C CNN
F 2 "" H 9300 1000 50  0001 C CNN
F 3 "" H 9300 1000 50  0001 C CNN
	1    9300 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0135
U 1 1 5E3293EA
P 9100 1450
F 0 "#PWR0135" H 9100 1300 50  0001 C CNN
F 1 "+3.3V" H 9115 1623 50  0000 C CNN
F 2 "" H 9100 1450 50  0001 C CNN
F 3 "" H 9100 1450 50  0001 C CNN
	1    9100 1450
	-1   0    0    1   
$EndComp
Text Label 9250 1300 0    50   ~ 0
OneWire
$Comp
L Device:R_Small R3
U 1 1 5E3396A0
P 8950 1400
F 0 "R3" V 8950 1350 50  0000 L CNN
F 1 "4k7" V 8850 1350 50  0000 L CNN
F 2 "" H 8950 1400 50  0001 C CNN
F 3 "~" H 8950 1400 50  0001 C CNN
	1    8950 1400
	0    -1   -1   0   
$EndComp
Text Notes 8800 600  0    50   ~ 10
OneWire
Wire Wire Line
	8900 950  8900 1000
Wire Wire Line
	9300 950  9300 1000
Wire Wire Line
	9100 950  9100 1400
Wire Wire Line
	9050 1400 9100 1400
Connection ~ 9100 1400
Wire Wire Line
	9100 1400 9100 1450
Wire Wire Line
	8850 1400 8850 1300
Wire Wire Line
	8850 1300 9000 1300
Wire Wire Line
	9000 1300 9000 950 
Wire Wire Line
	9200 950  9200 1300
Wire Wire Line
	9200 1300 9000 1300
Connection ~ 9000 1300
Wire Wire Line
	9200 1300 9250 1300
Connection ~ 9200 1300
Wire Notes Line
	8800 600  9550 600 
Wire Notes Line
	9550 600  9550 1700
Wire Notes Line
	9550 1700 8800 1700
Wire Notes Line
	8800 1700 8800 600 
$Comp
L Device:R_Small R4
U 1 1 5DF3D01D
P 4650 1200
F 0 "R4" V 4454 1200 50  0000 C CNN
F 1 "470R" V 4545 1200 50  0000 C CNN
F 2 "" H 4650 1200 50  0001 C CNN
F 3 "~" H 4650 1200 50  0001 C CNN
	1    4650 1200
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5DF45CF6
P 4650 1300
F 0 "R5" V 4850 1300 50  0000 C CNN
F 1 "470R" V 4750 1300 50  0000 C CNN
F 2 "" H 4650 1300 50  0001 C CNN
F 3 "~" H 4650 1300 50  0001 C CNN
	1    4650 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 1200 4550 1200
Wire Wire Line
	4500 1300 4550 1300
Wire Wire Line
	4750 1200 4850 1200
Wire Wire Line
	4750 1300 4850 1300
Wire Wire Line
	3500 750  3750 750 
Wire Wire Line
	3250 1250 3500 1250
Wire Notes Line
	5850 2400 7300 2400
Wire Notes Line
	5850 1950 5850 2400
Wire Notes Line
	7300 1950 7300 2400
$Comp
L Device:LED RXD
U 1 1 5E04BA83
P 1300 3650
F 0 "RXD" H 1293 3395 50  0000 C CNN
F 1 "LED_R" H 1293 3486 50  0000 C CNN
F 2 "" H 1300 3650 50  0001 C CNN
F 3 "~" H 1300 3650 50  0001 C CNN
	1    1300 3650
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5E057CB9
P 950 3650
F 0 "R6" V 754 3650 50  0000 C CNN
F 1 "1k" V 845 3650 50  0000 C CNN
F 2 "Mlab_R:SMD-1206" H 950 3650 50  0001 C CNN
F 3 "~" H 950 3650 50  0001 C CNN
	1    950  3650
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E061ED7
P 650 3400
F 0 "#PWR?" H 650 3250 50  0001 C CNN
F 1 "+3.3V" H 665 3573 50  0000 C CNN
F 2 "" H 650 3400 50  0001 C CNN
F 3 "" H 650 3400 50  0001 C CNN
	1    650  3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5E06218F
P 950 4000
F 0 "R7" V 754 4000 50  0000 C CNN
F 1 "1k" V 845 4000 50  0000 C CNN
F 2 "Mlab_R:SMD-1206" H 950 4000 50  0001 C CNN
F 3 "~" H 950 4000 50  0001 C CNN
	1    950  4000
	0    1    1    0   
$EndComp
$Comp
L Device:LED TXD
U 1 1 5E062710
P 1300 4000
F 0 "TXD" H 1300 3750 50  0000 C CNN
F 1 "LED_R" H 1293 3836 50  0000 C CNN
F 2 "" H 1300 4000 50  0001 C CNN
F 3 "~" H 1300 4000 50  0001 C CNN
	1    1300 4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	650  3400 650  3650
Wire Wire Line
	650  3650 850  3650
Wire Wire Line
	850  4000 650  4000
Wire Wire Line
	650  4000 650  3650
Connection ~ 650  3650
Wire Wire Line
	1050 3650 1150 3650
Wire Wire Line
	1050 4000 1150 4000
Wire Wire Line
	1450 3650 1600 3650
Wire Wire Line
	1450 4000 1600 4000
Text Label 1600 3650 0    50   ~ 0
RXD
Text Label 1600 4000 0    50   ~ 0
TXD
$Comp
L Device:LED Power
U 1 1 5E08E5BB
P 1300 4400
F 0 "Power" H 1300 4150 50  0000 C CNN
F 1 "LED_R" H 1293 4236 50  0000 C CNN
F 2 "" H 1300 4400 50  0001 C CNN
F 3 "~" H 1300 4400 50  0001 C CNN
	1    1300 4400
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R8
U 1 1 5E08ED9B
P 950 4400
F 0 "R8" V 754 4400 50  0000 C CNN
F 1 "1k" V 845 4400 50  0000 C CNN
F 2 "Mlab_R:SMD-1206" H 950 4400 50  0001 C CNN
F 3 "~" H 950 4400 50  0001 C CNN
	1    950  4400
	0    1    1    0   
$EndComp
$Comp
L Device:LED signal
U 1 1 5E08F438
P 1300 4800
F 0 "signal" H 1300 4550 50  0000 C CNN
F 1 "LED_R" H 1293 4636 50  0000 C CNN
F 2 "" H 1300 4800 50  0001 C CNN
F 3 "~" H 1300 4800 50  0001 C CNN
	1    1300 4800
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R9
U 1 1 5E08FAD8
P 950 4800
F 0 "R9" V 754 4800 50  0000 C CNN
F 1 "1k" V 845 4800 50  0000 C CNN
F 2 "Mlab_R:SMD-1206" H 950 4800 50  0001 C CNN
F 3 "~" H 950 4800 50  0001 C CNN
	1    950  4800
	0    1    1    0   
$EndComp
Wire Wire Line
	850  4400 650  4400
Wire Wire Line
	650  4400 650  4000
Connection ~ 650  4000
$Comp
L power:GND #PWR?
U 1 1 5E09628C
P 1600 4900
F 0 "#PWR?" H 1600 4650 50  0001 C CNN
F 1 "GND" H 1605 4727 50  0000 C CNN
F 2 "" H 1600 4900 50  0001 C CNN
F 3 "" H 1600 4900 50  0001 C CNN
	1    1600 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 4800 1600 4800
Wire Wire Line
	1600 4800 1600 4900
Wire Wire Line
	1450 4400 1600 4400
Wire Wire Line
	1600 4400 1600 4800
Connection ~ 1600 4800
Wire Wire Line
	1050 4400 1150 4400
Wire Wire Line
	1050 4800 1150 4800
Wire Wire Line
	850  4800 650  4800
Wire Wire Line
	4350 6250 4500 6250
Text Label 4500 6250 0    50   ~ 0
s_LED
Text Label 650  4800 0    50   ~ 0
s_LED
Wire Notes Line
	550  3150 1800 3150
Wire Notes Line
	1800 3150 1800 5150
Wire Notes Line
	1800 5150 550  5150
Wire Notes Line
	550  5150 550  3150
Text Notes 550  3150 0    50   ~ 10
LED indicator
$Comp
L Device:R_Small R10
U 1 1 5DFC92DE
P 4900 1850
F 0 "R10" V 4704 1850 50  0000 C CNN
F 1 "12k" V 4795 1850 50  0000 C CNN
F 2 "" H 4900 1850 50  0001 C CNN
F 3 "~" H 4900 1850 50  0001 C CNN
	1    4900 1850
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R11
U 1 1 5DFD1233
P 4900 2050
F 0 "R11" V 5100 2050 50  0000 C CNN
F 1 "12k" V 5000 2050 50  0000 C CNN
F 2 "" H 4900 2050 50  0001 C CNN
F 3 "~" H 4900 2050 50  0001 C CNN
	1    4900 2050
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:S8050 Q1
U 1 1 5DFD25AA
P 5300 1700
F 0 "Q1" H 5490 1746 50  0000 L CNN
F 1 "S8050" H 5490 1655 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5500 1625 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 5300 1700 50  0001 L CNN
	1    5300 1700
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:S8050 Q2
U 1 1 5DFD4215
P 5300 2200
F 0 "Q2" H 5490 2154 50  0000 L CNN
F 1 "S8050" H 5490 2245 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5500 2125 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 5300 2200 50  0001 L CNN
	1    5300 2200
	1    0    0    1   
$EndComp
Wire Wire Line
	4650 2000 4650 2050
Wire Wire Line
	4650 2050 4700 2050
Wire Wire Line
	4650 1900 4650 1850
Wire Wire Line
	4650 1850 4750 1850
Wire Wire Line
	5000 1850 5050 1850
Wire Wire Line
	5050 1850 5050 1700
Wire Wire Line
	5050 1700 5100 1700
Wire Wire Line
	5000 2050 5050 2050
Wire Wire Line
	5050 2050 5050 2200
Wire Wire Line
	5050 2200 5100 2200
Wire Wire Line
	5400 2000 4750 2000
Wire Wire Line
	4750 2000 4750 1850
Connection ~ 4750 1850
Wire Wire Line
	4750 1850 4800 1850
Wire Wire Line
	5400 1900 4700 1900
Wire Wire Line
	4700 1900 4700 2050
Connection ~ 4700 2050
Wire Wire Line
	4700 2050 4800 2050
Wire Wire Line
	5400 1500 5500 1500
Wire Wire Line
	5400 2400 5500 2400
Text Label 4500 4350 0    50   ~ 0
RXD
Text Label 4500 4550 0    50   ~ 0
TXD
Text Label 4850 1200 0    50   ~ 0
TXD
Text Label 4850 1300 0    50   ~ 0
RXD
Text Label 5500 1500 0    50   ~ 0
EN
Text Label 5500 2400 0    50   ~ 0
IO_0
$Comp
L power:+3.3V #PWR?
U 1 1 5E0DC59F
P 5150 950
F 0 "#PWR?" H 5150 800 50  0001 C CNN
F 1 "+3.3V" H 5165 1123 50  0000 C CNN
F 2 "" H 5150 950 50  0001 C CNN
F 3 "" H 5150 950 50  0001 C CNN
	1    5150 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R12
U 1 1 5E0DE2D3
P 5150 1100
F 0 "R12" H 5209 1146 50  0000 L CNN
F 1 "10k" H 5209 1055 50  0000 L CNN
F 2 "" H 5150 1100 50  0001 C CNN
F 3 "~" H 5150 1100 50  0001 C CNN
	1    5150 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E0F42C2
P 5400 950
F 0 "#PWR?" H 5400 800 50  0001 C CNN
F 1 "+3.3V" H 5415 1123 50  0000 C CNN
F 2 "" H 5400 950 50  0001 C CNN
F 3 "" H 5400 950 50  0001 C CNN
	1    5400 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R13
U 1 1 5E0F42CC
P 5400 1100
F 0 "R13" H 5459 1146 50  0000 L CNN
F 1 "10k" H 5459 1055 50  0000 L CNN
F 2 "" H 5400 1100 50  0001 C CNN
F 3 "~" H 5400 1100 50  0001 C CNN
	1    5400 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 950  5150 1000
Wire Wire Line
	5400 950  5400 1000
Wire Wire Line
	5150 1200 5150 1300
Wire Wire Line
	5400 1200 5400 1300
Text Label 5150 1300 0    50   ~ 0
EN
Text Label 5400 1300 0    50   ~ 0
IO_0
Wire Notes Line
	2450 600  5800 600 
Wire Notes Line
	5800 600  5800 2550
Wire Notes Line
	5800 2550 2450 2550
Wire Notes Line
	2450 600  2450 2550
Text Label 750  6300 2    50   ~ 0
EN
$Comp
L power:GND #PWR?
U 1 1 5E153620
P 1350 6300
F 0 "#PWR?" H 1350 6050 50  0001 C CNN
F 1 "GND" H 1355 6127 50  0000 C CNN
F 2 "" H 1350 6300 50  0001 C CNN
F 3 "" H 1350 6300 50  0001 C CNN
	1    1350 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  6300 750  6300
Wire Wire Line
	1250 6300 1350 6300
$Comp
L Switch:SW_Push RESET
U 1 1 5E140153
P 1050 6300
F 0 "RESET" H 1050 6493 50  0000 C CNN
F 1 "SW_Push" H 1050 6494 50  0001 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_KMR2" H 1050 6500 50  0001 C CNN
F 3 "~" H 1050 6500 50  0001 C CNN
	1    1050 6300
	1    0    0    -1  
$EndComp
Text Label 750  6600 2    50   ~ 0
IO_0
$Comp
L power:GND #PWR?
U 1 1 5E1870BD
P 1350 6600
F 0 "#PWR?" H 1350 6350 50  0001 C CNN
F 1 "GND" H 1355 6427 50  0000 C CNN
F 2 "" H 1350 6600 50  0001 C CNN
F 3 "" H 1350 6600 50  0001 C CNN
	1    1350 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  6600 750  6600
Wire Wire Line
	1250 6600 1350 6600
$Comp
L Switch:SW_Push MODE
U 1 1 5E1870C9
P 1050 6600
F 0 "MODE" H 1050 6793 50  0000 C CNN
F 1 "SW_Push" H 1050 6794 50  0001 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_KMR2" H 1050 6800 50  0001 C CNN
F 3 "~" H 1050 6800 50  0001 C CNN
	1    1050 6600
	1    0    0    -1  
$EndComp
Wire Notes Line
	1450 6850 550  6850
Wire Notes Line
	550  6850 550  6050
Wire Notes Line
	550  6050 1450 6050
Wire Notes Line
	1450 6050 1450 6850
Text Notes 550  6050 0    50   ~ 10
Buttons
$EndSCHEMATC
