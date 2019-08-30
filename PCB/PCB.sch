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
L RF_Module:ESP32-WROOM-32 U?
U 1 1 5D66FD00
P 4300 3800
F 0 "U?" H 4300 5381 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 4300 5290 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 4300 2300 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 4000 3850 50  0001 C CNN
	1    4300 3800
	1    0    0    -1  
$EndComp
$Comp
L Interface_USB:CH340G U?
U 1 1 5D6724AA
P 2300 1750
F 0 "U?" H 2300 1061 50  0001 C CNN
F 1 "CH340G" H 2300 970 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 2350 1200 50  0001 L CNN
F 3 "http://www.datasheet5.com/pdf-local-2195953" H 1950 2550 50  0001 C CNN
	1    2300 1750
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B J?
U 1 1 5D670289
P 1100 1650
F 0 "J?" H 870 1547 50  0001 R CNN
F 1 "USB_B" H 870 1593 50  0000 R CNN
F 2 "Connector_USB:USB_B_OST_USB-B1HSxx_Horizontal" H 1250 1600 50  0001 C CNN
F 3 " ~" H 1250 1600 50  0001 C CNN
	1    1100 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1750 1400 1750
Wire Wire Line
	1400 1650 1900 1650
$Comp
L power:GND #PWR?
U 1 1 5D69F6EE
P 1100 2350
F 0 "#PWR?" H 1100 2100 50  0001 C CNN
F 1 "GND" H 1105 2177 50  0000 C CNN
F 2 "" H 1100 2350 50  0001 C CNN
F 3 "" H 1100 2350 50  0001 C CNN
	1    1100 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D69F9AA
P 2300 2650
F 0 "#PWR?" H 2300 2400 50  0001 C CNN
F 1 "GND" H 2305 2477 50  0000 C CNN
F 2 "" H 2300 2650 50  0001 C CNN
F 3 "" H 2300 2650 50  0001 C CNN
	1    2300 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2350 2300 2650
Wire Wire Line
	1100 2050 1100 2350
$Comp
L power:GND #PWR?
U 1 1 5D6A10B5
P 4300 5450
F 0 "#PWR?" H 4300 5200 50  0001 C CNN
F 1 "GND" H 4305 5277 50  0000 C CNN
F 2 "" H 4300 5450 50  0001 C CNN
F 3 "" H 4300 5450 50  0001 C CNN
	1    4300 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 5200 4300 5450
$EndSCHEMATC
