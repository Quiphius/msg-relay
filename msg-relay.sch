EESchema Schematic File Version 4
LIBS:msg-relay-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 7
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
L Connector:Screw_Terminal_01x02 J1
U 1 1 5CC4B18F
P 1150 3400
F 0 "J1" H 1068 3075 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 1068 3166 50  0000 C CNN
F 2 "Connector_Phoenix_MC_HighVoltage:PhoenixContact_MCV_1,5_2-G-5.08_1x02_P5.08mm_Vertical" H 1150 3400 50  0001 C CNN
F 3 "~" H 1150 3400 50  0001 C CNN
	1    1150 3400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5CC930B1
P 4500 4950
F 0 "#PWR04" H 4500 4700 50  0001 C CNN
F 1 "GND" H 4505 4777 50  0000 C CNN
F 2 "" H 4500 4950 50  0001 C CNN
F 3 "" H 4500 4950 50  0001 C CNN
	1    4500 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4650 4500 4650
Wire Wire Line
	4500 4650 4500 4950
Connection ~ 4500 4650
$Comp
L power:+12V #PWR01
U 1 1 5CC9DBB9
P 1350 3100
F 0 "#PWR01" H 1350 2950 50  0001 C CNN
F 1 "+12V" H 1365 3273 50  0000 C CNN
F 2 "" H 1350 3100 50  0001 C CNN
F 3 "" H 1350 3100 50  0001 C CNN
	1    1350 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5CC9E2A4
P 1350 3600
F 0 "#PWR02" H 1350 3350 50  0001 C CNN
F 1 "GND" H 1355 3427 50  0000 C CNN
F 2 "" H 1350 3600 50  0001 C CNN
F 3 "" H 1350 3600 50  0001 C CNN
	1    1350 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 3300 1350 3150
Wire Wire Line
	1350 3400 1350 3500
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5CC9F142
P 1350 3150
F 0 "#FLG01" H 1350 3225 50  0001 C CNN
F 1 "PWR_FLAG" V 1350 3278 50  0000 L CNN
F 2 "" H 1350 3150 50  0001 C CNN
F 3 "~" H 1350 3150 50  0001 C CNN
	1    1350 3150
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5CC9F653
P 1350 3500
F 0 "#FLG02" H 1350 3575 50  0001 C CNN
F 1 "PWR_FLAG" V 1350 3628 50  0000 L CNN
F 2 "" H 1350 3500 50  0001 C CNN
F 3 "~" H 1350 3500 50  0001 C CNN
	1    1350 3500
	0    1    1    0   
$EndComp
Connection ~ 1350 3500
Wire Wire Line
	1350 3500 1350 3600
Connection ~ 1350 3150
Wire Wire Line
	1350 3150 1350 3100
Text GLabel 3700 3850 0    50   Input ~ 0
RELAY1
Text GLabel 3700 3950 0    50   Input ~ 0
RELAY2
Text GLabel 3700 4050 0    50   Input ~ 0
RELAY3
Text GLabel 3700 4150 0    50   Input ~ 0
RELAY4
Wire Wire Line
	3700 3850 3900 3850
Wire Wire Line
	3700 3950 3900 3950
Wire Wire Line
	3700 4050 3900 4050
Wire Wire Line
	3700 4150 3900 4150
$Comp
L power:+5V #PWR05
U 1 1 5CCDB4EB
P 4600 2600
F 0 "#PWR05" H 4600 2450 50  0001 C CNN
F 1 "+5V" H 4615 2773 50  0000 C CNN
F 2 "" H 4600 2600 50  0001 C CNN
F 3 "" H 4600 2600 50  0001 C CNN
	1    4600 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2600 4600 2650
NoConn ~ 4500 2650
NoConn ~ 3900 4350
NoConn ~ 3900 4250
NoConn ~ 3900 3050
NoConn ~ 3900 3150
NoConn ~ 4900 3450
$Comp
L power:+12V #PWR03
U 1 1 5CCDEF17
P 4300 2600
F 0 "#PWR03" H 4300 2450 50  0001 C CNN
F 1 "+12V" H 4315 2773 50  0000 C CNN
F 2 "" H 4300 2600 50  0001 C CNN
F 3 "" H 4300 2600 50  0001 C CNN
	1    4300 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2600 4300 2650
NoConn ~ 3900 3450
NoConn ~ 3900 3550
NoConn ~ 3900 3650
NoConn ~ 3900 3750
NoConn ~ 4900 3650
NoConn ~ 4900 3050
NoConn ~ 4900 3150
NoConn ~ 4900 4350
NoConn ~ 4900 4250
NoConn ~ 4900 4150
NoConn ~ 4900 4050
NoConn ~ 4900 3950
NoConn ~ 4900 3850
NoConn ~ 4900 3750
$Sheet
S 6050 2450 500  150 
U 5CDB5718
F0 "Relay 1" 50
F1 "relay.sch" 50
F2 "In" I L 6050 2500 50 
$EndSheet
Text GLabel 5950 2500 0    50   Input ~ 0
RELAY1
Wire Wire Line
	5950 2500 6050 2500
$Sheet
S 6050 2850 500  150 
U 5CDBF4F7
F0 "Relay 2" 50
F1 "relay.sch" 50
F2 "In" I L 6050 2900 50 
$EndSheet
Text GLabel 5950 2900 0    50   Input ~ 0
RELAY2
Wire Wire Line
	5950 2900 6050 2900
$Sheet
S 6050 3250 500  150 
U 5CDCF528
F0 "Relay 3" 50
F1 "relay.sch" 50
F2 "In" I L 6050 3300 50 
$EndSheet
Text GLabel 5950 3300 0    50   Input ~ 0
RELAY3
Wire Wire Line
	5950 3300 6050 3300
$Sheet
S 6050 3650 500  150 
U 5CDD051B
F0 "Relay 4" 50
F1 "relay.sch" 50
F2 "In" I L 6050 3700 50 
$EndSheet
Text GLabel 5950 3700 0    50   Input ~ 0
RELAY4
Wire Wire Line
	5950 3700 6050 3700
$Comp
L Connector:Screw_Terminal_01x02 J6
U 1 1 5CF7D51B
P 1150 4550
F 0 "J6" H 1068 4225 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 1068 4316 50  0000 C CNN
F 2 "Connector_Phoenix_MC_HighVoltage:PhoenixContact_MCV_1,5_2-G-5.08_1x02_P5.08mm_Vertical" H 1150 4550 50  0001 C CNN
F 3 "~" H 1150 4550 50  0001 C CNN
	1    1150 4550
	-1   0    0    1   
$EndComp
Text GLabel 1400 4450 2    50   Input ~ 0
INPUT1
Text GLabel 1400 4550 2    50   Input ~ 0
INPUT2
Wire Wire Line
	1350 4450 1400 4450
Wire Wire Line
	1350 4550 1400 4550
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5CC346B9
P 4400 3650
F 0 "A1" H 4400 2561 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 4400 2470 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 4550 2700 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 4400 2650 50  0001 C CNN
	1    4400 3650
	1    0    0    -1  
$EndComp
$Sheet
S 2700 2800 500  150 
U 5CF8395A
F0 "Input1" 50
F1 "input.sch" 50
F2 "IN" I L 2700 2850 50 
F3 "OUT" I R 3200 2850 50 
$EndSheet
$Sheet
S 2700 3200 500  150 
U 5CF83BCA
F0 "Input2" 50
F1 "input.sch" 50
F2 "IN" I L 2700 3250 50 
F3 "OUT" I R 3200 3250 50 
$EndSheet
Wire Wire Line
	3200 2850 3550 2850
Wire Wire Line
	3550 2850 3550 3250
Wire Wire Line
	3550 3250 3900 3250
Wire Wire Line
	3200 3250 3350 3250
Wire Wire Line
	3350 3250 3350 3350
Wire Wire Line
	3350 3350 3900 3350
Text GLabel 2600 2850 0    50   Input ~ 0
INPUT1
Text GLabel 2600 3250 0    50   Input ~ 0
INPUT2
Wire Wire Line
	2600 3250 2700 3250
Wire Wire Line
	2600 2850 2700 2850
$EndSCHEMATC
