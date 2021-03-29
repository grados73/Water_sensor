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
L grad73_library:NodeMCU_ESP_DEVKIT ESP1
U 1 1 5FB6A735
P 2900 2200
F 0 "ESP1" H 2900 2965 50  0000 C CNN
F 1 "NodeMCU_ESP_DEVKIT" H 2900 2874 50  0000 C CNN
F 2 "grados73:devkit1.0_NodeMCU_esp" H 2850 2950 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/0a-esp8266ex_datasheet_en.pdf" H 2850 2950 50  0001 C CNN
	1    2900 2200
	1    0    0    -1  
$EndComp
$Comp
L grad73_library:buzzer_z_gen Buzz1
U 1 1 5FB6C5F0
P 5150 1350
F 0 "Buzz1" H 5378 1513 50  0000 L CNN
F 1 "buzzer_z_gen" H 5378 1422 50  0000 L CNN
F 2 "grados73:buzzer_z_gen" H 5150 1850 50  0001 C CNN
F 3 "" H 5150 1850 50  0001 C CNN
	1    5150 1350
	1    0    0    -1  
$EndComp
$Comp
L grad73_library:przetwornica_U1v10f5_Pololu U3
U 1 1 5FB701E2
P 7400 1350
F 0 "U3" H 7628 1438 50  0000 L CNN
F 1 "przetwornica_U1v10f5_Pololu" H 7628 1347 50  0000 L CNN
F 2 "grados73:przetwornica_u1v10f5_pololu" H 7450 1550 50  0001 C CNN
F 3 "https://www.tme.eu/Document/5e8a94132252e76cb27a8b9f683a6282/POLOLU-2564.pdf" H 7450 1550 50  0001 C CNN
	1    7400 1350
	1    0    0    -1  
$EndComp
$Comp
L grad73_library:ładowarka_LiPol_charger U1
U 1 1 5FB7113F
P 5150 2950
F 0 "U1" H 5150 3465 50  0000 C CNN
F 1 "ładowarka_LiPol_charger" H 5150 3374 50  0000 C CNN
F 2 "grados73:ładowarka_LiPol_charger" H 5150 2950 50  0001 C CNN
F 3 "" H 5150 2950 50  0001 C CNN
	1    5150 2950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J1
U 1 1 5FB728BE
P 2450 4150
F 0 "J1" V 2604 3862 50  0000 R CNN
F 1 "czujnik1" V 2350 4250 50  0000 R CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x04_P2.00mm_Vertical" H 2450 4150 50  0001 C CNN
F 3 "~" H 2450 4150 50  0001 C CNN
	1    2450 4150
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 5FB73C5B
P 3100 4150
F 0 "J2" V 3254 3862 50  0000 R CNN
F 1 "czujnik2" V 3000 4250 50  0000 R CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x04_P2.00mm_Vertical" H 3100 4150 50  0001 C CNN
F 3 "~" H 3100 4150 50  0001 C CNN
	1    3100 4150
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RGBC D1
U 1 1 5FB76B59
P 4550 4000
F 0 "D1" H 4550 4497 50  0000 C CNN
F 1 "LED_RGBC" H 4550 4406 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 4550 3950 50  0001 C CNN
F 3 "~" H 4550 3950 50  0001 C CNN
	1    4550 4000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_MEC_5E SW1
U 1 1 5FB7B9AB
P 6450 4000
F 0 "SW1" H 6450 4385 50  0000 C CNN
F 1 "usser_button" H 6450 4294 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 6450 4300 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=1371" H 6450 4300 50  0001 C CNN
	1    6450 4000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 5FB7E333
P 7800 3650
F 0 "J4" V 7862 3694 50  0000 L CNN
F 1 "wejście_baterii" V 7953 3694 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Horizontal" H 7800 3650 50  0001 C CNN
F 3 "~" H 7800 3650 50  0001 C CNN
	1    7800 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 2700 7300 1550
Wire Wire Line
	7400 2400 7400 1550
Text Notes 7800 3650 0    50   ~ 0
VIN
Text Notes 7550 3650 0    50   ~ 0
GND\n
Wire Wire Line
	4100 3000 3750 3000
Wire Wire Line
	7500 1550 7500 1700
Wire Wire Line
	1900 3100 2050 3100
Wire Wire Line
	5450 2700 5500 2700
Wire Wire Line
	5500 2700 5500 2750
Wire Wire Line
	5500 2800 5450 2800
Wire Wire Line
	5750 2750 5750 3050
Wire Wire Line
	5750 3050 8500 3050
Wire Wire Line
	5500 2750 5750 2750
Connection ~ 5500 2750
Wire Wire Line
	5500 2750 5500 2800
Connection ~ 8500 3050
Wire Wire Line
	8500 3050 8500 2700
Wire Wire Line
	5450 2950 5500 2950
Wire Wire Line
	5500 2950 5500 3000
Wire Wire Line
	5500 3050 5450 3050
Wire Wire Line
	5500 3000 5650 3000
Wire Wire Line
	5650 3000 5650 4600
Connection ~ 5500 3000
Wire Wire Line
	5500 3000 5500 3050
Wire Wire Line
	5050 1700 5050 1500
Wire Wire Line
	2050 2000 1600 2000
Wire Wire Line
	1600 2000 1600 1300
Wire Wire Line
	1600 1300 4200 1300
Wire Wire Line
	4200 1300 4200 1850
Wire Wire Line
	4200 1850 5150 1850
Wire Wire Line
	5150 1850 5150 1500
Wire Wire Line
	4200 3100 4200 2100
Wire Wire Line
	3750 1800 4000 1800
Wire Wire Line
	4000 1800 4000 1900
Wire Wire Line
	4000 1900 6350 1900
Text Notes 2250 4200 0    39   ~ 0
GND
Text Notes 2500 4200 2    39   ~ 0
VCC
Text Notes 2600 4200 2    39   ~ 0
NC
Text Notes 2700 4200 2    39   ~ 0
SIG
Text Notes 3350 4200 2    39   ~ 0
SIG
Text Notes 3250 4200 2    39   ~ 0
NC
Text Notes 3150 4200 2    39   ~ 0
VCC
Text Notes 2900 4200 0    39   ~ 0
GND
Wire Wire Line
	2050 3000 1800 3000
Wire Wire Line
	2350 3800 2350 3950
Wire Wire Line
	3000 3800 3000 3950
Wire Wire Line
	3100 3700 3100 3950
Wire Wire Line
	2450 3700 2450 3950
Wire Wire Line
	3750 2400 3850 2400
Wire Wire Line
	3850 2400 3850 3600
Wire Wire Line
	3850 3600 2650 3600
Wire Wire Line
	2650 3600 2650 3950
Wire Wire Line
	3750 2500 4000 2500
Wire Wire Line
	4000 2500 4000 3800
Wire Wire Line
	4000 3800 3300 3800
Wire Wire Line
	3300 3800 3300 3950
$Comp
L Device:R R1
U 1 1 5FBA9748
P 5000 3800
F 0 "R1" V 4900 3750 50  0000 C CNN
F 1 "1k" V 4900 3850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4930 3800 50  0001 C CNN
F 3 "~" H 5000 3800 50  0001 C CNN
	1    5000 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5FBA9E95
P 5000 4000
F 0 "R2" V 4900 3950 50  0000 C CNN
F 1 "1k" V 4900 4050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4930 4000 50  0001 C CNN
F 3 "~" H 5000 4000 50  0001 C CNN
	1    5000 4000
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5FBAA3BD
P 5000 4200
F 0 "R3" V 4900 4150 50  0000 C CNN
F 1 "1k" V 4900 4250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4930 4200 50  0001 C CNN
F 3 "~" H 5000 4200 50  0001 C CNN
	1    5000 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 3800 4850 3800
Wire Wire Line
	4750 4000 4850 4000
Wire Wire Line
	4750 4200 4850 4200
Wire Wire Line
	3750 1900 3950 1900
Wire Wire Line
	3950 1900 3950 2150
Wire Wire Line
	3950 2150 4300 2150
Wire Wire Line
	4300 2150 4300 3350
Wire Wire Line
	4300 3350 5500 3350
Wire Wire Line
	5500 3350 5500 4000
Wire Wire Line
	3750 2000 3900 2000
Wire Wire Line
	3900 2000 3900 2250
Wire Wire Line
	3900 2250 4250 2250
Wire Wire Line
	4250 2250 4250 3400
Wire Wire Line
	4250 3400 5450 3400
Wire Wire Line
	5450 3400 5450 3800
Wire Wire Line
	5450 3800 5150 3800
Wire Wire Line
	5500 4000 5150 4000
Wire Wire Line
	2050 2100 1700 2100
Wire Wire Line
	1700 2100 1700 4800
Wire Wire Line
	1700 4800 5500 4800
Wire Wire Line
	5500 4800 5500 4200
Wire Wire Line
	5500 4200 5150 4200
Wire Wire Line
	6650 3900 6700 3900
Wire Wire Line
	6700 3900 6700 3950
Wire Wire Line
	6700 4000 6650 4000
Wire Wire Line
	6700 3950 6950 3950
Connection ~ 6700 3950
Wire Wire Line
	6700 3950 6700 4000
Wire Wire Line
	6250 3900 6200 3900
Wire Wire Line
	6200 3900 6200 3950
Wire Wire Line
	6200 4000 6250 4000
Wire Wire Line
	3750 2600 3950 2600
Wire Wire Line
	3950 2600 3950 2300
Wire Wire Line
	3950 2300 5800 2300
Connection ~ 6200 3950
Wire Wire Line
	6200 3950 6200 4000
$Comp
L Device:C C1
U 1 1 5FC01ED5
P 5800 4150
F 0 "C1" H 5915 4196 50  0000 L CNN
F 1 "100nF" H 5915 4105 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 5838 4000 50  0001 C CNN
F 3 "~" H 5800 4150 50  0001 C CNN
	1    5800 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4300 5800 4600
Wire Wire Line
	5800 3950 5950 3950
Connection ~ 5800 3950
Wire Wire Line
	5800 3950 5800 4000
Wire Wire Line
	5800 2300 5800 3950
$Comp
L Device:R R4
U 1 1 5FC3509C
P 5950 3600
F 0 "R4" H 6020 3646 50  0000 L CNN
F 1 "10k" H 6020 3555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5880 3600 50  0001 C CNN
F 3 "~" H 5950 3600 50  0001 C CNN
	1    5950 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3750 5950 3950
Connection ~ 5950 3950
Wire Wire Line
	5950 3950 6200 3950
$Comp
L Device:R R5
U 1 1 5FC4B717
P 6750 3350
F 0 "R5" V 6957 3350 50  0000 C CNN
F 1 "10k" V 6866 3350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6680 3350 50  0001 C CNN
F 3 "~" H 6750 3350 50  0001 C CNN
	1    6750 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 5FC4BB7E
P 7400 3350
F 0 "R6" V 7607 3350 50  0000 C CNN
F 1 "10k" V 7516 3350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7330 3350 50  0001 C CNN
F 3 "~" H 7400 3350 50  0001 C CNN
	1    7400 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6600 3350 6500 3350
Wire Wire Line
	6900 3350 7100 3350
Connection ~ 8500 3350
Wire Wire Line
	8500 3350 8500 3050
Wire Wire Line
	2050 1700 1550 1700
Wire Wire Line
	1550 1700 1550 4900
Wire Wire Line
	1550 4900 7100 4900
Wire Wire Line
	7100 4900 7100 3350
Connection ~ 7100 3350
Wire Wire Line
	7100 3350 7250 3350
$Comp
L Connector:Conn_01x03_Male J5
U 1 1 5FC711A0
P 7700 2450
F 0 "J5" V 7762 2594 50  0000 L CNN
F 1 "Przełącznik_zasilania" V 7853 2594 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 7700 2450 50  0001 C CNN
F 3 "~" H 7700 2450 50  0001 C CNN
	1    7700 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	7600 2700 7600 2650
Wire Wire Line
	7700 2700 7700 2650
Wire Wire Line
	7700 2700 8500 2700
NoConn ~ 7800 2650
NoConn ~ 2050 2900
NoConn ~ 2050 2800
NoConn ~ 2050 2500
NoConn ~ 2050 2400
NoConn ~ 2050 2300
NoConn ~ 2050 2200
NoConn ~ 2050 1900
NoConn ~ 2050 1800
NoConn ~ 3750 1700
NoConn ~ 3750 2100
NoConn ~ 3750 2700
NoConn ~ 3750 2800
NoConn ~ 3750 2900
NoConn ~ 2550 3950
NoConn ~ 3200 3950
NoConn ~ 4850 2750
NoConn ~ 4850 3000
$Comp
L grad73_library:buzzer_z_gen dht11
U 1 1 5FD45EF5
P 6350 1050
F 0 "dht11" H 6578 1213 50  0000 L CNN
F 1 "dht11" H 6578 1122 50  0000 L CNN
F 2 "grados73:buzzer_z_gen" H 6350 1550 50  0001 C CNN
F 3 "" H 6350 1550 50  0001 C CNN
	1    6350 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 1200 6350 1900
Text Label 3000 3800 2    39   ~ 0
GND
Text Label 3300 3700 2    39   ~ 0
3V
Text Label 2500 4700 2    39   ~ 0
5V
$Comp
L power:GND #PWR?
U 1 1 5FD9F68A
P 7700 4000
F 0 "#PWR?" H 7700 3750 50  0001 C CNN
F 1 "GND" H 7705 3827 50  0000 C CNN
F 2 "" H 7700 4000 50  0001 C CNN
F 3 "" H 7700 4000 50  0001 C CNN
	1    7700 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 4000 7700 3850
Wire Wire Line
	7800 3850 7800 4100
$Comp
L power:GND #PWR?
U 1 1 5FDB01C2
P 6500 3350
F 0 "#PWR?" H 6500 3100 50  0001 C CNN
F 1 "GND" H 6505 3177 50  0000 C CNN
F 2 "" H 6500 3350 50  0001 C CNN
F 3 "" H 6500 3350 50  0001 C CNN
	1    6500 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FDB08E8
P 6950 3950
F 0 "#PWR?" H 6950 3700 50  0001 C CNN
F 1 "GND" H 6955 3777 50  0000 C CNN
F 2 "" H 6950 3950 50  0001 C CNN
F 3 "" H 6950 3950 50  0001 C CNN
	1    6950 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FDB13C2
P 5650 4600
F 0 "#PWR?" H 5650 4350 50  0001 C CNN
F 1 "GND" H 5655 4427 50  0000 C CNN
F 2 "" H 5650 4600 50  0001 C CNN
F 3 "" H 5650 4600 50  0001 C CNN
	1    5650 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FDB1946
P 5800 4600
F 0 "#PWR?" H 5800 4350 50  0001 C CNN
F 1 "GND" H 5805 4427 50  0000 C CNN
F 2 "" H 5800 4600 50  0001 C CNN
F 3 "" H 5800 4600 50  0001 C CNN
	1    5800 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FDB20AA
P 4100 4050
F 0 "#PWR?" H 4100 3800 50  0001 C CNN
F 1 "GND" H 4105 3877 50  0000 C CNN
F 2 "" H 4100 4050 50  0001 C CNN
F 3 "" H 4100 4050 50  0001 C CNN
	1    4100 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FDB2AC4
P 1800 3850
F 0 "#PWR?" H 1800 3600 50  0001 C CNN
F 1 "GND" H 1805 3677 50  0000 C CNN
F 2 "" H 1800 3850 50  0001 C CNN
F 3 "" H 1800 3850 50  0001 C CNN
	1    1800 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FDB2E04
P 2100 3850
F 0 "#PWR?" H 2100 3600 50  0001 C CNN
F 1 "GND" H 2105 3677 50  0000 C CNN
F 2 "" H 2100 3850 50  0001 C CNN
F 3 "" H 2100 3850 50  0001 C CNN
	1    2100 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FDB3297
P 2850 3850
F 0 "#PWR?" H 2850 3600 50  0001 C CNN
F 1 "GND" H 2855 3677 50  0000 C CNN
F 2 "" H 2850 3850 50  0001 C CNN
F 3 "" H 2850 3850 50  0001 C CNN
	1    2850 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3800 2100 3800
Wire Wire Line
	2100 3800 2100 3850
Wire Wire Line
	3000 3800 2850 3800
Wire Wire Line
	2850 3800 2850 3850
$Comp
L power:+3V3 #PWR?
U 1 1 5FDBD183
P 2450 3700
F 0 "#PWR?" H 2450 3550 50  0001 C CNN
F 1 "+3V3" H 2465 3873 50  0000 C CNN
F 2 "" H 2450 3700 50  0001 C CNN
F 3 "" H 2450 3700 50  0001 C CNN
	1    2450 3700
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5FDBDA76
P 3100 3700
F 0 "#PWR?" H 3100 3550 50  0001 C CNN
F 1 "+3V3" H 3115 3873 50  0000 C CNN
F 2 "" H 3100 3700 50  0001 C CNN
F 3 "" H 3100 3700 50  0001 C CNN
	1    3100 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FDBDF07
P 5050 1700
F 0 "#PWR?" H 5050 1450 50  0001 C CNN
F 1 "GND" H 5055 1527 50  0000 C CNN
F 2 "" H 5050 1700 50  0001 C CNN
F 3 "" H 5050 1700 50  0001 C CNN
	1    5050 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FDBE768
P 5500 1650
F 0 "#PWR?" H 5500 1500 50  0001 C CNN
F 1 "+5V" H 5515 1823 50  0000 C CNN
F 2 "" H 5500 1650 50  0001 C CNN
F 3 "" H 5500 1650 50  0001 C CNN
	1    5500 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 1750 5500 1750
Wire Wire Line
	5500 1750 5500 1650
Wire Wire Line
	5250 1500 5250 1750
$Comp
L power:GND #PWR?
U 1 1 5FDC3E5B
P 6250 1550
F 0 "#PWR?" H 6250 1300 50  0001 C CNN
F 1 "GND" H 6255 1377 50  0000 C CNN
F 2 "" H 6250 1550 50  0001 C CNN
F 3 "" H 6250 1550 50  0001 C CNN
	1    6250 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1200 6250 1550
$Comp
L power:+3V3 #PWR?
U 1 1 5FDC9183
P 6700 1500
F 0 "#PWR?" H 6700 1350 50  0001 C CNN
F 1 "+3V3" H 6715 1673 50  0000 C CNN
F 2 "" H 6700 1500 50  0001 C CNN
F 3 "" H 6700 1500 50  0001 C CNN
	1    6700 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 1200 6450 1600
Wire Wire Line
	6450 1600 6700 1600
Wire Wire Line
	6700 1600 6700 1500
Wire Wire Line
	7600 2700 7300 2700
Wire Wire Line
	8500 3350 8500 4100
Wire Wire Line
	7800 4100 8500 4100
$Comp
L power:GND #PWR?
U 1 1 5FDDE8D5
P 7400 2400
F 0 "#PWR?" H 7400 2150 50  0001 C CNN
F 1 "GND" H 7405 2227 50  0000 C CNN
F 2 "" H 7400 2400 50  0001 C CNN
F 3 "" H 7400 2400 50  0001 C CNN
	1    7400 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 1700 7750 1700
Wire Wire Line
	7750 1700 7750 1650
$Comp
L power:+5V #PWR?
U 1 1 5FDE3658
P 7750 1650
F 0 "#PWR?" H 7750 1500 50  0001 C CNN
F 1 "+5V" H 7765 1823 50  0000 C CNN
F 2 "" H 7750 1650 50  0001 C CNN
F 3 "" H 7750 1650 50  0001 C CNN
	1    7750 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3550 2050 3550
Wire Wire Line
	2050 3550 2050 3450
Wire Wire Line
	1900 3100 1900 3550
$Comp
L power:+5V #PWR?
U 1 1 5FDE8E7A
P 2050 3450
F 0 "#PWR?" H 2050 3300 50  0001 C CNN
F 1 "+5V" H 2065 3623 50  0000 C CNN
F 2 "" H 2050 3450 50  0001 C CNN
F 3 "" H 2050 3450 50  0001 C CNN
	1    2050 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3100 4200 3100
$Comp
L power:+3V3 #PWR?
U 1 1 5FDE95CC
P 4200 2100
F 0 "#PWR?" H 4200 1950 50  0001 C CNN
F 1 "+3V3" H 4215 2273 50  0000 C CNN
F 2 "" H 4200 2100 50  0001 C CNN
F 3 "" H 4200 2100 50  0001 C CNN
	1    4200 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4000 4300 4000
Wire Wire Line
	4300 4000 4300 4050
$Comp
L power:GND #PWR?
U 1 1 5FDEE74C
P 4300 4050
F 0 "#PWR?" H 4300 3800 50  0001 C CNN
F 1 "GND" H 4305 3877 50  0000 C CNN
F 2 "" H 4300 4050 50  0001 C CNN
F 3 "" H 4300 4050 50  0001 C CNN
	1    4300 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3450 5950 3350
$Comp
L power:+3V3 #PWR?
U 1 1 5FDF33B9
P 5950 3350
F 0 "#PWR?" H 5950 3200 50  0001 C CNN
F 1 "+3V3" H 5965 3523 50  0000 C CNN
F 2 "" H 5950 3350 50  0001 C CNN
F 3 "" H 5950 3350 50  0001 C CNN
	1    5950 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2200 4450 2200
Wire Wire Line
	4450 2200 4450 2100
$Comp
L power:+3V3 #PWR?
U 1 1 5FDF84BE
P 4450 2100
F 0 "#PWR?" H 4450 1950 50  0001 C CNN
F 1 "+3V3" H 4465 2273 50  0000 C CNN
F 2 "" H 4450 2100 50  0001 C CNN
F 3 "" H 4450 2100 50  0001 C CNN
	1    4450 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2300 3900 2300
Wire Wire Line
	4100 3000 4100 4050
$Comp
L power:GND #PWR?
U 1 1 5FE15462
P 3900 4050
F 0 "#PWR?" H 3900 3800 50  0001 C CNN
F 1 "GND" H 3905 3877 50  0000 C CNN
F 2 "" H 3900 4050 50  0001 C CNN
F 3 "" H 3900 4050 50  0001 C CNN
	1    3900 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2300 3900 4050
Wire Wire Line
	7550 3350 8500 3350
$Comp
L power:GND #PWR?
U 1 1 5FE1A37B
P 1950 3850
F 0 "#PWR?" H 1950 3600 50  0001 C CNN
F 1 "GND" H 1955 3677 50  0000 C CNN
F 2 "" H 1950 3850 50  0001 C CNN
F 3 "" H 1950 3850 50  0001 C CNN
	1    1950 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3000 1800 3850
Wire Wire Line
	2050 2600 1850 2600
Wire Wire Line
	1850 2600 1850 3700
Wire Wire Line
	1850 3700 1950 3700
Wire Wire Line
	1950 3700 1950 3850
NoConn ~ 2050 2700
$EndSCHEMATC
