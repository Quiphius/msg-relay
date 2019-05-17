EESchema Schematic File Version 4
LIBS:msg-relay-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
L Relay:SANYOU_SRD_Form_C K1
U 1 1 5CDB8165
P 5100 3250
AR Path="/5CDB5718/5CDB8165" Ref="K1"  Part="1" 
AR Path="/5CDBF4F7/5CDB8165" Ref="K2"  Part="1" 
AR Path="/5CDC0251/5CDB8165" Ref="K?"  Part="1" 
AR Path="/5CDC07EB/5CDB8165" Ref="K?"  Part="1" 
AR Path="/5CDCF528/5CDB8165" Ref="K3"  Part="1" 
AR Path="/5CDD051B/5CDB8165" Ref="K4"  Part="1" 
F 0 "K4" H 5530 3296 50  0000 L CNN
F 1 "SANYOU_SRD_Form_C" H 5530 3205 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 5550 3200 50  0001 L CNN
F 3 "http://www.sanyourelay.ca/public/products/pdf/SRD.pdf" H 5100 3250 50  0001 C CNN
	1    5100 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5CDB816B
P 4900 4150
AR Path="/5CDB5718/5CDB816B" Ref="#PWR07"  Part="1" 
AR Path="/5CDBF4F7/5CDB816B" Ref="#PWR09"  Part="1" 
AR Path="/5CDC0251/5CDB816B" Ref="#PWR?"  Part="1" 
AR Path="/5CDC07EB/5CDB816B" Ref="#PWR?"  Part="1" 
AR Path="/5CDCF528/5CDB816B" Ref="#PWR011"  Part="1" 
AR Path="/5CDD051B/5CDB816B" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 4900 3900 50  0001 C CNN
F 1 "GND" H 4905 3977 50  0000 C CNN
F 2 "" H 4900 4150 50  0001 C CNN
F 3 "" H 4900 4150 50  0001 C CNN
	1    4900 4150
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC847 Q1
U 1 1 5CDB8172
P 4800 3850
AR Path="/5CDB5718/5CDB8172" Ref="Q1"  Part="1" 
AR Path="/5CDBF4F7/5CDB8172" Ref="Q2"  Part="1" 
AR Path="/5CDC0251/5CDB8172" Ref="Q?"  Part="1" 
AR Path="/5CDC07EB/5CDB8172" Ref="Q?"  Part="1" 
AR Path="/5CDCF528/5CDB8172" Ref="Q3"  Part="1" 
AR Path="/5CDD051B/5CDB8172" Ref="Q4"  Part="1" 
F 0 "Q4" H 4991 3896 50  0000 L CNN
F 1 "BC847" H 4991 3805 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5000 3775 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BC847SERIES_BC848SERIES_BC849SERIES_BC850SERIES-DS-v01_01-en.pdf?fileId=db3a304314dca389011541d4630a1657" H 4800 3850 50  0001 L CNN
	1    4800 3850
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D1
U 1 1 5CDB8178
P 4400 3250
AR Path="/5CDB5718/5CDB8178" Ref="D1"  Part="1" 
AR Path="/5CDBF4F7/5CDB8178" Ref="D2"  Part="1" 
AR Path="/5CDC0251/5CDB8178" Ref="D?"  Part="1" 
AR Path="/5CDC07EB/5CDB8178" Ref="D?"  Part="1" 
AR Path="/5CDCF528/5CDB8178" Ref="D3"  Part="1" 
AR Path="/5CDD051B/5CDB8178" Ref="D4"  Part="1" 
F 0 "D4" H 4400 3466 50  0000 C CNN
F 1 "1N4007" H 4400 3375 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 4400 3075 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 4400 3250 50  0001 C CNN
	1    4400 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 3550 4900 3600
Wire Wire Line
	4400 3400 4400 3600
Wire Wire Line
	4400 3600 4900 3600
Connection ~ 4900 3600
Wire Wire Line
	4900 3600 4900 3650
Wire Wire Line
	4900 2950 4400 2950
Wire Wire Line
	4400 2950 4400 3100
$Comp
L power:+5V #PWR06
U 1 1 5CDB8185
P 4900 2850
AR Path="/5CDB5718/5CDB8185" Ref="#PWR06"  Part="1" 
AR Path="/5CDBF4F7/5CDB8185" Ref="#PWR08"  Part="1" 
AR Path="/5CDC0251/5CDB8185" Ref="#PWR?"  Part="1" 
AR Path="/5CDC07EB/5CDB8185" Ref="#PWR?"  Part="1" 
AR Path="/5CDCF528/5CDB8185" Ref="#PWR010"  Part="1" 
AR Path="/5CDD051B/5CDB8185" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 4900 2700 50  0001 C CNN
F 1 "+5V" H 4915 3023 50  0000 C CNN
F 2 "" H 4900 2850 50  0001 C CNN
F 3 "" H 4900 2850 50  0001 C CNN
	1    4900 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2850 4900 2950
Connection ~ 4900 2950
Wire Wire Line
	4900 4050 4900 4150
$Comp
L Device:R R1
U 1 1 5CDB818E
P 4350 3850
AR Path="/5CDB5718/5CDB818E" Ref="R1"  Part="1" 
AR Path="/5CDBF4F7/5CDB818E" Ref="R2"  Part="1" 
AR Path="/5CDC0251/5CDB818E" Ref="R?"  Part="1" 
AR Path="/5CDC07EB/5CDB818E" Ref="R?"  Part="1" 
AR Path="/5CDCF528/5CDB818E" Ref="R3"  Part="1" 
AR Path="/5CDD051B/5CDB818E" Ref="R4"  Part="1" 
F 0 "R4" V 4250 3850 50  0000 C CNN
F 1 "R" V 4350 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4280 3850 50  0001 C CNN
F 3 "~" H 4350 3850 50  0001 C CNN
	1    4350 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 3850 4600 3850
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 5CDB8196
P 6750 3300
AR Path="/5CDB5718/5CDB8196" Ref="J2"  Part="1" 
AR Path="/5CDBF4F7/5CDB8196" Ref="J3"  Part="1" 
AR Path="/5CDC0251/5CDB8196" Ref="J?"  Part="1" 
AR Path="/5CDC07EB/5CDB8196" Ref="J?"  Part="1" 
AR Path="/5CDCF528/5CDB8196" Ref="J4"  Part="1" 
AR Path="/5CDD051B/5CDB8196" Ref="J5"  Part="1" 
F 0 "J5" H 6722 3232 50  0000 R CNN
F 1 "Conn_01x03_Male" H 6722 3323 50  0000 R CNN
F 2 "Connector_Phoenix_MC_HighVoltage:PhoenixContact_MCV_1,5_3-G-5.08_1x03_P5.08mm_Vertical" H 6750 3300 50  0001 C CNN
F 3 "~" H 6750 3300 50  0001 C CNN
	1    6750 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5200 2900 5200 2950
Wire Wire Line
	5300 3550 5300 3600
Wire Wire Line
	5300 3600 6350 3600
Wire Wire Line
	6350 3600 6350 3300
Wire Wire Line
	6350 3300 6550 3300
Wire Wire Line
	5400 2950 6500 2950
Wire Wire Line
	6500 2950 6500 3200
Wire Wire Line
	6500 3200 6550 3200
Wire Wire Line
	5200 2900 6450 2900
Wire Wire Line
	6450 2900 6450 3400
Wire Wire Line
	6450 3400 6550 3400
Text HLabel 4100 3850 0    50   Input ~ 0
In
Wire Wire Line
	4100 3850 4200 3850
$EndSCHEMATC
