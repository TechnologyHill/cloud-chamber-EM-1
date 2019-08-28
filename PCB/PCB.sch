EESchema Schematic File Version 4
LIBS:PCB-cache
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
P 8500 1800
F 0 "U?" H 8500 1111 50  0001 C CNN
F 1 "CH340G" H 8500 1020 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 8550 1250 50  0001 L CNN
F 3 "http://www.datasheet5.com/pdf-local-2195953" H 8150 2600 50  0001 C CNN
	1    8500 1800
	-1   0    0    1   
$EndComp
$Comp
L Connector:USB_B J?
U 1 1 5D670289
P 9700 1900
F 0 "J?" H 9470 1797 50  0001 R CNN
F 1 "USB_B" H 9470 1843 50  0000 R CNN
F 2 "Connector_USB:USB_B_OST_USB-B1HSxx_Horizontal" H 9850 1850 50  0001 C CNN
F 3 " ~" H 9850 1850 50  0001 C CNN
	1    9700 1900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D677A17
P 9450 1350
F 0 "#PWR?" H 9450 1100 50  0001 C CNN
F 1 "GND" H 9455 1177 50  0000 C CNN
F 2 "" H 9450 1350 50  0001 C CNN
F 3 "" H 9450 1350 50  0001 C CNN
	1    9450 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D677FB5
P 8700 1050
F 0 "#PWR?" H 8700 800 50  0001 C CNN
F 1 "GND" H 8705 877 50  0000 C CNN
F 2 "" H 8700 1050 50  0001 C CNN
F 3 "" H 8700 1050 50  0001 C CNN
	1    8700 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 1500 9700 1200
Wire Wire Line
	9700 1200 9450 1200
Wire Wire Line
	9450 1200 9450 1350
Wire Wire Line
	8700 1050 8700 900 
Wire Wire Line
	8700 900  8500 900 
Wire Wire Line
	8500 900  8500 1200
Wire Wire Line
	8900 1800 9400 1800
Wire Wire Line
	9400 1900 8900 1900
$EndSCHEMATC
