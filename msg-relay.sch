EESchema Schematic File Version 4
LIBS:msg-relay-cache
EELAYER 29 0
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
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5CC346B9
P 5450 3600
F 0 "A1" H 5450 2511 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 5450 2420 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 5600 2650 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5450 2600 50  0001 C CNN
	1    5450 3600
	1    0    0    -1  
$EndComp
$Comp
L Relay:SANYOU_SRD_Form_C K1
U 1 1 5CC35D85
P 8250 2700
F 0 "K1" H 8680 2746 50  0000 L CNN
F 1 "SANYOU_SRD_Form_C" H 8680 2655 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 8700 2650 50  0001 L CNN
F 3 "http://www.sanyourelay.ca/public/products/pdf/SRD.pdf" H 8250 2700 50  0001 C CNN
	1    8250 2700
	1    0    0    -1  
$EndComp
$Comp
L Relay:SANYOU_SRD_Form_C K2
U 1 1 5CC392A2
P 8250 3500
F 0 "K2" H 8680 3546 50  0000 L CNN
F 1 "SANYOU_SRD_Form_C" H 8680 3455 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 8700 3450 50  0001 L CNN
F 3 "http://www.sanyourelay.ca/public/products/pdf/SRD.pdf" H 8250 3500 50  0001 C CNN
	1    8250 3500
	1    0    0    -1  
$EndComp
$Comp
L Relay:SANYOU_SRD_Form_C K3
U 1 1 5CC39846
P 8250 4300
F 0 "K3" H 8680 4346 50  0000 L CNN
F 1 "SANYOU_SRD_Form_C" H 8680 4255 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 8700 4250 50  0001 L CNN
F 3 "http://www.sanyourelay.ca/public/products/pdf/SRD.pdf" H 8250 4300 50  0001 C CNN
	1    8250 4300
	1    0    0    -1  
$EndComp
$Comp
L Relay:SANYOU_SRD_Form_C K4
U 1 1 5CC3A0C3
P 8250 5050
F 0 "K4" H 8680 5096 50  0000 L CNN
F 1 "SANYOU_SRD_Form_C" H 8680 5005 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 8700 5000 50  0001 L CNN
F 3 "http://www.sanyourelay.ca/public/products/pdf/SRD.pdf" H 8250 5050 50  0001 C CNN
	1    8250 5050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5CC4B18F
P 3200 2850
F 0 "J1" H 3118 2525 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 3118 2616 50  0000 C CNN
F 2 "Connector_Phoenix_MC_HighVoltage:PhoenixContact_MCV_1,5_2-G-5.08_1x02_P5.08mm_Vertical" H 3200 2850 50  0001 C CNN
F 3 "~" H 3200 2850 50  0001 C CNN
	1    3200 2850
	-1   0    0    1   
$EndComp
$EndSCHEMATC
