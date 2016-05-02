EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:analog-cache
EELAYER 27 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "PREAMPino overdrive unit"
Date "2 may 2016"
Rev "2"
Comp ""
Comment1 "Bazz Fuss -> Electra Dist -> Tillman Preamp -> TwinCaster -> Cromesphere Buffer"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R R1A
U 1 1 53C3A842
P 12550 3950
F 0 "R1A" V 12630 3950 40  0000 C CNN
F 1 "3.0M" V 12557 3951 40  0000 C CNN
F 2 "~" V 12480 3950 30  0000 C CNN
F 3 "~" H 12550 3950 30  0000 C CNN
	1    12550 3950
	1    0    0    -1  
$EndComp
$Comp
L BF244A Q1A
U 1 1 53C3A900
P 13000 3500
F 0 "Q1A" H 13000 3351 40  0000 R CNN
F 1 "J201" H 13000 3650 40  0000 R CNN
F 2 "" H 12840 3602 29  0000 C CNN
F 3 "" H 13000 3500 60  0000 C CNN
	1    13000 3500
	1    0    0    -1  
$EndComp
$Comp
L R R2A
U 1 1 53C3A945
P 13100 3950
F 0 "R2A" V 13180 3950 40  0000 C CNN
F 1 "2.2K" V 13107 3951 40  0000 C CNN
F 2 "~" V 13030 3950 30  0000 C CNN
F 3 "~" H 13100 3950 30  0000 C CNN
	1    13100 3950
	1    0    0    -1  
$EndComp
$Comp
L R R3A
U 1 1 53C3A98B
P 13100 2850
F 0 "R3A" V 13180 2850 40  0000 C CNN
F 1 "6.8K" V 13107 2851 40  0000 C CNN
F 2 "~" V 13030 2850 30  0000 C CNN
F 3 "~" H 13100 2850 30  0000 C CNN
	1    13100 2850
	1    0    0    -1  
$EndComp
$Comp
L CP1 C1A
U 1 1 53C3A9E6
P 13600 3200
F 0 "C1A" H 13650 3300 50  0000 L CNN
F 1 "4.7uF" H 13650 3100 50  0000 L CNN
F 2 "~" H 13600 3200 60  0000 C CNN
F 3 "~" H 13600 3200 60  0000 C CNN
	1    13600 3200
	0    -1   1    0   
$EndComp
$Comp
L R R4A
U 1 1 53C3AA15
P 13900 3650
F 0 "R4A" V 13980 3650 40  0000 C CNN
F 1 "51K" V 13907 3651 40  0000 C CNN
F 2 "~" V 13830 3650 30  0000 C CNN
F 3 "~" H 13900 3650 30  0000 C CNN
	1    13900 3650
	1    0    0    -1  
$EndComp
$Comp
L CP1 C2A
U 1 1 53C3AA63
P 13650 2650
F 0 "C2A" H 13700 2750 50  0000 L CNN
F 1 "10uF" H 13700 2550 50  0000 L CNN
F 2 "~" H 13650 2650 60  0000 C CNN
F 3 "~" H 13650 2650 60  0000 C CNN
	1    13650 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 53C3AACE
P 12550 4250
F 0 "#PWR02" H 12550 4250 30  0001 C CNN
F 1 "GND" H 12550 4180 30  0001 C CNN
F 2 "" H 12550 4250 60  0000 C CNN
F 3 "" H 12550 4250 60  0000 C CNN
	1    12550 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 53C3AADD
P 13100 4250
F 0 "#PWR03" H 13100 4250 30  0001 C CNN
F 1 "GND" H 13100 4180 30  0001 C CNN
F 2 "" H 13100 4250 60  0000 C CNN
F 3 "" H 13100 4250 60  0000 C CNN
	1    13100 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 53C3AAEC
P 13900 4250
F 0 "#PWR04" H 13900 4250 30  0001 C CNN
F 1 "GND" H 13900 4180 30  0001 C CNN
F 2 "" H 13900 4250 60  0000 C CNN
F 3 "" H 13900 4250 60  0000 C CNN
	1    13900 4250
	1    0    0    -1  
$EndComp
Text GLabel 900  3200 0    60   Input ~ 0
Input
$Comp
L GND #PWR05
U 1 1 53C3D09D
P 13650 2850
F 0 "#PWR05" H 13650 2850 30  0001 C CNN
F 1 "GND" H 13650 2780 30  0001 C CNN
F 2 "" H 13650 2850 60  0000 C CNN
F 3 "" H 13650 2850 60  0000 C CNN
	1    13650 2850
	1    0    0    -1  
$EndComp
$Comp
L C C1B
U 1 1 53C3D1CF
P 1600 8450
F 0 "C1B" H 1600 8550 40  0000 L CNN
F 1 "47nF" H 1606 8365 40  0000 L CNN
F 2 "~" H 1638 8300 30  0000 C CNN
F 3 "~" H 1600 8450 60  0000 C CNN
	1    1600 8450
	0    -1   -1   0   
$EndComp
$Comp
L R R1B
U 1 1 53C3D1E7
P 2050 8800
F 0 "R1B" V 2130 8800 40  0000 C CNN
F 1 "1M" V 2057 8801 40  0000 C CNN
F 2 "~" V 1980 8800 30  0000 C CNN
F 3 "~" H 2050 8800 30  0000 C CNN
	1    2050 8800
	1    0    0    -1  
$EndComp
$Comp
L ECC83 U1B
U 1 1 53C3D225
P 2700 8450
F 0 "U1B" H 2830 8760 50  0000 C CNN
F 1 "12AU7" H 3050 8150 50  0000 C CNN
F 2 "VALVE-NOVAL_P" H 2970 8050 50  0001 C CNN
F 3 "" H 2700 8450 60  0000 C CNN
	1    2700 8450
	1    0    0    -1  
$EndComp
$Comp
L R R2B
U 1 1 53C3D3A9
P 2700 7650
F 0 "R2B" V 2780 7650 40  0000 C CNN
F 1 "220K" V 2707 7651 40  0000 C CNN
F 2 "~" V 2630 7650 30  0000 C CNN
F 3 "~" H 2700 7650 30  0000 C CNN
	1    2700 7650
	1    0    0    -1  
$EndComp
$Comp
L C C2B
U 1 1 53C3D3FF
P 3450 7950
F 0 "C2B" H 3450 8050 40  0000 L CNN
F 1 "47nF" H 3456 7865 40  0000 L CNN
F 2 "~" H 3488 7800 30  0000 C CNN
F 3 "~" H 3450 7950 60  0000 C CNN
	1    3450 7950
	0    -1   -1   0   
$EndComp
$Comp
L R R4B
U 1 1 53C3D43E
P 3650 8950
F 0 "R4B" V 3730 8950 40  0000 C CNN
F 1 "470K" V 3657 8951 40  0000 C CNN
F 2 "~" V 3580 8950 30  0000 C CNN
F 3 "~" H 3650 8950 30  0000 C CNN
	1    3650 8950
	1    0    0    -1  
$EndComp
$Comp
L ECC83 U2B
U 1 1 53C3D57C
P 4200 8450
F 0 "U2B" H 4330 8760 50  0000 C CNN
F 1 "12AU7" H 4550 8150 50  0000 C CNN
F 2 "VALVE-NOVAL_P" H 4470 8050 50  0001 C CNN
F 3 "" H 4200 8450 60  0000 C CNN
	1    4200 8450
	1    0    0    -1  
$EndComp
$Comp
L R R3B
U 1 1 53C3D5C8
P 4200 7650
F 0 "R3B" V 4280 7650 40  0000 C CNN
F 1 "100K" V 4207 7651 40  0000 C CNN
F 2 "~" V 4130 7650 30  0000 C CNN
F 3 "~" H 4200 7650 30  0000 C CNN
	1    4200 7650
	1    0    0    -1  
$EndComp
$Comp
L CP1 C3B
U 1 1 53C3D647
P 4850 7950
F 0 "C3B" H 4900 8050 50  0000 L CNN
F 1 "1uF" H 4900 7850 50  0000 L CNN
F 2 "~" H 4850 7950 60  0000 C CNN
F 3 "~" H 4850 7950 60  0000 C CNN
	1    4850 7950
	0    -1   -1   0   
$EndComp
$Comp
L C C1D
U 1 1 53C3F950
P 12550 8400
F 0 "C1D" H 12550 8500 40  0000 L CNN
F 1 "100nF" H 12556 8315 40  0000 L CNN
F 2 "~" H 12588 8250 30  0000 C CNN
F 3 "~" H 12550 8400 60  0000 C CNN
	1    12550 8400
	0    -1   -1   0   
$EndComp
$Comp
L R R1D
U 1 1 53C3FB1B
P 13050 8000
F 0 "R1D" V 13130 8000 40  0000 C CNN
F 1 "1M" V 13057 8001 40  0000 C CNN
F 2 "~" V 12980 8000 30  0000 C CNN
F 3 "~" H 13050 8000 30  0000 C CNN
	1    13050 8000
	1    0    0    -1  
$EndComp
$Comp
L R R2D
U 1 1 53C3FB2A
P 13050 8800
F 0 "R2D" V 13130 8800 40  0000 C CNN
F 1 "1M" V 13057 8801 40  0000 C CNN
F 2 "~" V 12980 8800 30  0000 C CNN
F 3 "~" H 13050 8800 30  0000 C CNN
	1    13050 8800
	1    0    0    -1  
$EndComp
$Comp
L SSM-2017P U1D
U 1 1 53C3FB90
P 13900 8500
F 0 "U1D" H 14050 8700 60  0000 C CNN
F 1 "LM741" H 14200 8800 60  0000 C CNN
F 2 "" H 13900 8500 60  0000 C CNN
F 3 "" H 13900 8500 60  0000 C CNN
	1    13900 8500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 53C3FC31
P 13050 9050
F 0 "#PWR011" H 13050 9050 30  0001 C CNN
F 1 "GND" H 13050 8980 30  0001 C CNN
F 2 "" H 13050 9050 60  0000 C CNN
F 3 "" H 13050 9050 60  0000 C CNN
	1    13050 9050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 53C3FC40
P 13800 8900
F 0 "#PWR012" H 13800 8900 30  0001 C CNN
F 1 "GND" H 13800 8830 30  0001 C CNN
F 2 "" H 13800 8900 60  0000 C CNN
F 3 "" H 13800 8900 60  0000 C CNN
	1    13800 8900
	1    0    0    -1  
$EndComp
$Comp
L CP1 C2D
U 1 1 53C3FD13
P 14900 8500
F 0 "C2D" H 14950 8600 50  0000 L CNN
F 1 "10uF" H 14950 8400 50  0000 L CNN
F 2 "~" H 14900 8500 60  0000 C CNN
F 3 "~" H 14900 8500 60  0000 C CNN
	1    14900 8500
	0    -1   -1   0   
$EndComp
$Comp
L C C1C
U 1 1 53C3FF13
P 7750 8450
F 0 "C1C" H 7750 8550 40  0000 L CNN
F 1 "47nF" H 7756 8365 40  0000 L CNN
F 2 "~" H 7788 8300 30  0000 C CNN
F 3 "~" H 7750 8450 60  0000 C CNN
	1    7750 8450
	0    -1   -1   0   
$EndComp
$Comp
L R R1C
U 1 1 53C3FF19
P 8200 8800
F 0 "R1C" V 8280 8800 40  0000 C CNN
F 1 "1M" V 8207 8801 40  0000 C CNN
F 2 "~" V 8130 8800 30  0000 C CNN
F 3 "~" H 8200 8800 30  0000 C CNN
	1    8200 8800
	1    0    0    -1  
$EndComp
$Comp
L ECC83 U1C
U 1 1 53C3FF25
P 8850 8450
F 0 "U1C" H 8980 8760 50  0000 C CNN
F 1 "12AU7" H 9200 8150 50  0000 C CNN
F 2 "VALVE-NOVAL_P" H 9120 8050 50  0001 C CNN
F 3 "" H 8850 8450 60  0000 C CNN
	1    8850 8450
	1    0    0    -1  
$EndComp
$Comp
L R R2C
U 1 1 53C3FF3D
P 8850 7650
F 0 "R2C" V 8930 7650 40  0000 C CNN
F 1 "220K" V 8857 7651 40  0000 C CNN
F 2 "~" V 8780 7650 30  0000 C CNN
F 3 "~" H 8850 7650 30  0000 C CNN
	1    8850 7650
	1    0    0    -1  
$EndComp
$Comp
L C C2C
U 1 1 53C3FF43
P 9600 7950
F 0 "C2C" H 9600 8050 40  0000 L CNN
F 1 "47nF" H 9606 7865 40  0000 L CNN
F 2 "~" H 9638 7800 30  0000 C CNN
F 3 "~" H 9600 7950 60  0000 C CNN
	1    9600 7950
	0    -1   -1   0   
$EndComp
$Comp
L R R4C
U 1 1 53C3FF49
P 9800 8950
F 0 "R4C" V 9880 8950 40  0000 C CNN
F 1 "470K" V 9807 8951 40  0000 C CNN
F 2 "~" V 9730 8950 30  0000 C CNN
F 3 "~" H 9800 8950 30  0000 C CNN
	1    9800 8950
	1    0    0    -1  
$EndComp
$Comp
L ECC83 U2C
U 1 1 53C3FF55
P 10350 8450
F 0 "U2C" H 10480 8760 50  0000 C CNN
F 1 "12AU7" H 10700 8150 50  0000 C CNN
F 2 "VALVE-NOVAL_P" H 10620 8050 50  0001 C CNN
F 3 "" H 10350 8450 60  0000 C CNN
	1    10350 8450
	1    0    0    -1  
$EndComp
$Comp
L R R3C
U 1 1 53C3FF61
P 10350 7650
F 0 "R3C" V 10430 7650 40  0000 C CNN
F 1 "100K" V 10357 7651 40  0000 C CNN
F 2 "~" V 10280 7650 30  0000 C CNN
F 3 "~" H 10350 7650 30  0000 C CNN
	1    10350 7650
	1    0    0    -1  
$EndComp
$Comp
L CP1 C3C
U 1 1 53C3FF67
P 11000 7950
F 0 "C3C" H 11050 8050 50  0000 L CNN
F 1 "1uF" H 11050 7850 50  0000 L CNN
F 2 "~" H 11000 7950 60  0000 C CNN
F 3 "~" H 11000 7950 60  0000 C CNN
	1    11000 7950
	0    -1   -1   0   
$EndComp
Text Notes 11650 2200 0    60   ~ 0
Solid state booster (Tillman Preamp)
Text Notes 3150 7100 0    60   ~ 0
First ValveCaster
Text Notes 9150 7100 0    60   ~ 0
Second ValveCaster
Text Notes 13750 7050 0    60   ~ 0
Buffer
Text Notes 14700 3400 0    60   Italic 0
Boost/Volume
Text Notes 2100 9350 0    60   Italic 0
Gain 1
Text Notes 10850 8500 0    60   Italic 0
Volume
$Comp
L C C1
U 1 1 53F4999B
P 6650 2900
F 0 "C1" H 6650 3000 40  0000 L CNN
F 1 "100nF" H 6656 2815 40  0000 L CNN
F 2 "~" H 6688 2750 30  0000 C CNN
F 3 "~" H 6650 2900 60  0000 C CNN
	1    6650 2900
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 53F5E5C0
P 7100 2650
F 0 "R1" V 7180 2650 40  0000 C CNN
F 1 "2.2M" V 7107 2651 40  0000 C CNN
F 2 "~" V 7030 2650 30  0000 C CNN
F 3 "~" H 7100 2650 30  0000 C CNN
	1    7100 2650
	0    -1   -1   0   
$EndComp
$Comp
L NPN Q1
U 1 1 53F5E5CF
P 7450 2900
F 0 "Q1" H 7450 2750 50  0000 R CNN
F 1 "NPN" H 7450 3050 50  0000 R CNN
F 2 "~" H 7450 2900 60  0000 C CNN
F 3 "~" H 7450 2900 60  0000 C CNN
	1    7450 2900
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 53F5E5DE
P 7100 2400
F 0 "R2" V 7180 2400 40  0000 C CNN
F 1 "3.3k" V 7107 2401 40  0000 C CNN
F 2 "~" V 7030 2400 30  0000 C CNN
F 3 "~" H 7100 2400 30  0000 C CNN
	1    7100 2400
	0    -1   -1   0   
$EndComp
$Comp
L +9V #PWR?
U 1 1 53F5E77D
P 6850 2400
F 0 "#PWR?" H 6850 2370 20  0001 C CNN
F 1 "+9V" H 6850 2510 30  0000 C CNN
F 2 "" H 6850 2400 60  0000 C CNN
F 3 "" H 6850 2400 60  0000 C CNN
	1    6850 2400
	0    -1   -1   0   
$EndComp
$Comp
L C C2
U 1 1 53F5E78C
P 7950 2650
F 0 "C2" H 7950 2750 40  0000 L CNN
F 1 "100nF" H 7956 2565 40  0000 L CNN
F 2 "~" H 7988 2500 30  0000 C CNN
F 3 "~" H 7950 2650 60  0000 C CNN
	1    7950 2650
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 53F5E79B
P 7550 3350
F 0 "R3" V 7630 3350 40  0000 C CNN
F 1 "680" V 7557 3351 40  0000 C CNN
F 2 "~" V 7480 3350 30  0000 C CNN
F 3 "~" H 7550 3350 30  0000 C CNN
	1    7550 3350
	1    0    0    -1  
$EndComp
$Comp
L DIODE D1
U 1 1 53F5E964
P 8350 2850
F 0 "D1" H 8350 2950 40  0000 C CNN
F 1 "1N34A" H 8350 2750 40  0000 C CNN
F 2 "~" H 8350 2850 60  0000 C CNN
F 3 "~" H 8350 2850 60  0000 C CNN
	1    8350 2850
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D2
U 1 1 53F5E973
P 8650 2850
F 0 "D2" H 8650 2950 40  0000 C CNN
F 1 "1N4148" H 8650 2750 40  0000 C CNN
F 2 "~" H 8650 2850 60  0000 C CNN
F 3 "~" H 8650 2850 60  0000 C CNN
	1    8650 2850
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D3
U 1 1 53F5E982
P 9000 2850
F 0 "D3" H 9000 2950 40  0000 C CNN
F 1 "1N34A" H 9000 2750 40  0000 C CNN
F 2 "~" H 9000 2850 60  0000 C CNN
F 3 "~" H 9000 2850 60  0000 C CNN
	1    9000 2850
	0    1    1    0   
$EndComp
$Comp
L DIODE D4
U 1 1 53F5E991
P 9300 2850
F 0 "D4" H 9300 2950 40  0000 C CNN
F 1 "1N4148" H 9300 2750 40  0000 C CNN
F 2 "~" H 9300 2850 60  0000 C CNN
F 3 "~" H 9300 2850 60  0000 C CNN
	1    9300 2850
	0    1    1    0   
$EndComp
$Comp
L CP1 C3
U 1 1 53F5F35E
P 2800 3050
F 0 "C3" H 2850 3150 50  0000 L CNN
F 1 "2.2uF" H 2850 2950 50  0000 L CNN
F 2 "~" H 2800 3050 60  0000 C CNN
F 3 "~" H 2800 3050 60  0000 C CNN
	1    2800 3050
	0    -1   1    0   
$EndComp
$Comp
L DARL_N Q2
U 1 1 53F5F36D
P 3650 3100
F 0 "Q2" H 3650 3350 50  0000 C CNN
F 1 "MPSA13" H 3450 3000 50  0000 C CNN
F 2 "~" H 3650 3100 60  0000 C CNN
F 3 "~" H 3650 3100 60  0000 C CNN
	1    3650 3100
	1    0    0    -1  
$EndComp
$Comp
L DIODE D5
U 1 1 53F5F388
P 3200 2850
F 0 "D5" H 3200 2950 40  0000 C CNN
F 1 "1N4148" H 3200 2750 40  0000 C CNN
F 2 "~" H 3200 2850 60  0000 C CNN
F 3 "~" H 3200 2850 60  0000 C CNN
	1    3200 2850
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 53F5F747
P 8500 4150
F 0 "#PWR?" H 8500 4150 30  0001 C CNN
F 1 "GND" H 8500 4080 30  0001 C CNN
F 2 "" H 8500 4150 60  0000 C CNN
F 3 "" H 8500 4150 60  0000 C CNN
	1    8500 4150
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 53F5F959
P 3400 2550
F 0 "R4" V 3480 2550 40  0000 C CNN
F 1 "10k" V 3407 2551 40  0000 C CNN
F 2 "~" V 3330 2550 30  0000 C CNN
F 3 "~" H 3400 2550 30  0000 C CNN
	1    3400 2550
	0    -1   1    0   
$EndComp
$Comp
L +9V #PWR?
U 1 1 53F5F9E4
P 3150 2550
F 0 "#PWR?" H 3150 2520 20  0001 C CNN
F 1 "+9V" H 3150 2660 30  0000 C CNN
F 2 "" H 3150 2550 60  0000 C CNN
F 3 "" H 3150 2550 60  0000 C CNN
	1    3150 2550
	0    -1   1    0   
$EndComp
$Comp
L C C4
U 1 1 53F5FA1C
P 4200 2850
F 0 "C4" H 4200 2950 40  0000 L CNN
F 1 "100nF" H 4206 2765 40  0000 L CNN
F 2 "~" H 4238 2700 30  0000 C CNN
F 3 "~" H 4200 2850 60  0000 C CNN
	1    4200 2850
	0    -1   1    0   
$EndComp
Text GLabel 8350 3200 3    60   UnSpc ~ 0
SW2A
Text GLabel 8650 3200 3    60   UnSpc ~ 0
SW2B
Text GLabel 9000 3200 3    60   UnSpc ~ 0
SW3A
Text GLabel 9300 3200 3    60   UnSpc ~ 0
SW3B
Text GLabel 8500 3900 1    60   UnSpc ~ 0
SW2M
Text GLabel 9150 3900 1    60   UnSpc ~ 0
SW3M
Text GLabel 7400 3900 0    60   UnSpc ~ 0
RV2A
Text GLabel 7800 3950 1    60   UnSpc ~ 0
RV2W
Text GLabel 8050 3950 1    60   UnSpc ~ 0
RV2B
Text GLabel 4000 3400 3    60   UnSpc ~ 0
RV1A
Text GLabel 4400 3750 0    60   UnSpc ~ 0
RV1W
Text GLabel 4000 4100 1    60   UnSpc ~ 0
RV1B
$Comp
L GND #PWR?
U 1 1 53F5F9D2
P 4000 4250
F 0 "#PWR?" H 4000 4250 30  0001 C CNN
F 1 "GND" H 4000 4180 30  0001 C CNN
F 2 "" H 4000 4250 60  0000 C CNN
F 3 "" H 4000 4250 60  0000 C CNN
	1    4000 4250
	1    0    0    -1  
$EndComp
Text GLabel 14650 3500 3    60   UnSpc ~ 0
RV3A
Text GLabel 14650 4200 1    60   UnSpc ~ 0
RV3B
Text GLabel 15050 3850 0    60   UnSpc ~ 0
RV3M
Text GLabel 2600 8950 3    60   UnSpc ~ 0
RV4A
Text GLabel 2950 9300 0    60   UnSpc ~ 0
RV4W
Text GLabel 2600 9650 1    60   UnSpc ~ 0
RV4B
$Comp
L +9V #PWR?
U 1 1 53F601C4
P 2050 7400
F 0 "#PWR?" H 2050 7370 20  0001 C CNN
F 1 "+9V" H 2050 7510 30  0000 C CNN
F 2 "" H 2050 7400 60  0000 C CNN
F 3 "" H 2050 7400 60  0000 C CNN
	1    2050 7400
	0    -1   -1   0   
$EndComp
Text GLabel 1650 3200 2    60   UnSpc ~ 0
SW6M
Text GLabel 2350 3050 0    60   UnSpc ~ 0
SW6A
Text GLabel 2350 3350 0    60   UnSpc ~ 0
SW6B
$Comp
L GND #PWR?
U 1 1 53F6036E
P 2600 9900
F 0 "#PWR?" H 2600 9900 30  0001 C CNN
F 1 "GND" H 2600 9830 30  0001 C CNN
F 2 "" H 2600 9900 60  0000 C CNN
F 3 "" H 2600 9900 60  0000 C CNN
	1    2600 9900
	1    0    0    -1  
$EndComp
Text GLabel 8750 8950 3    60   UnSpc ~ 0
RV5A
Text GLabel 9100 9300 0    60   UnSpc ~ 0
RV5W
Text GLabel 8750 9650 1    60   UnSpc ~ 0
RV5B
$Comp
L GND #PWR?
U 1 1 53F60879
P 8750 9900
F 0 "#PWR?" H 8750 9900 30  0001 C CNN
F 1 "GND" H 8750 9830 30  0001 C CNN
F 2 "" H 8750 9900 60  0000 C CNN
F 3 "" H 8750 9900 60  0000 C CNN
	1    8750 9900
	1    0    0    -1  
$EndComp
NoConn ~ 6300 7400
Text GLabel 11350 8050 3    60   UnSpc ~ 0
RV5A
Text GLabel 11700 8400 0    60   UnSpc ~ 0
RV5W
Text GLabel 11350 8750 1    60   UnSpc ~ 0
RV5B
$Comp
L +9V #PWR?
U 1 1 53F60F7E
P 12950 2450
F 0 "#PWR?" H 12950 2420 20  0001 C CNN
F 1 "+9V" H 12950 2560 30  0000 C CNN
F 2 "" H 12950 2450 60  0000 C CNN
F 3 "" H 12950 2450 60  0000 C CNN
	1    12950 2450
	0    -1   -1   0   
$EndComp
Text GLabel 15550 8500 2    60   Output ~ 0
OUTPUT
Text Notes 8300 9350 0    60   Italic 0
Gain 2
Text Notes 6800 6600 2    60   ~ 0
TwinCaster
Text Notes 6250 8350 2    60   Italic 0
Second ValveCaster bypass
Text Notes 7000 3900 2    60   Italic 0
Gain
Text Notes 8650 3600 2    60   Italic 0
Clip up
Text Notes 9350 3600 2    60   Italic 0
Clip down
Text Notes 4350 3450 2    60   Italic 0
Gain
Text Notes 6250 2750 2    60   Italic 0
Dist Bypass
Text Notes 11850 3350 2    60   Italic 0
Boost bypass
$Comp
L +9V #PWR?
U 1 1 53F61D03
P 12850 7550
F 0 "#PWR?" H 12850 7520 20  0001 C CNN
F 1 "+9V" H 12850 7660 30  0000 C CNN
F 2 "" H 12850 7550 60  0000 C CNN
F 3 "" H 12850 7550 60  0000 C CNN
	1    12850 7550
	0    -1   -1   0   
$EndComp
Text Notes 1700 2900 0    60   Italic 0
Fuzz Bypass
$Comp
L GND #PWR?
U 1 1 53FDA19E
P 14650 4400
F 0 "#PWR?" H 14650 4400 30  0001 C CNN
F 1 "GND" H 14650 4330 30  0001 C CNN
F 2 "" H 14650 4400 60  0000 C CNN
F 3 "" H 14650 4400 60  0000 C CNN
	1    14650 4400
	1    0    0    -1  
$EndComp
Text GLabel 5600 3050 2    60   UnSpc ~ 0
SW6M
Text GLabel 6300 2900 0    60   UnSpc ~ 0
SW6A
Text GLabel 6300 3200 0    60   UnSpc ~ 0
SW6B
Text GLabel 11150 3650 2    60   UnSpc ~ 0
SW6M
Text GLabel 11850 3500 0    60   UnSpc ~ 0
SW6A
Text GLabel 11850 3800 0    60   UnSpc ~ 0
SW6B
Text GLabel 5250 7950 2    60   UnSpc ~ 0
SW6M
Text GLabel 5950 7800 0    60   UnSpc ~ 0
SW6B
Text GLabel 5950 8100 0    60   UnSpc ~ 0
SW6A
Connection ~ 3650 9800
Wire Wire Line
	3650 9800 3650 9200
Wire Wire Line
	4100 9800 4100 8850
Wire Wire Line
	2050 9800 4100 9800
Wire Wire Line
	2050 9050 2050 9800
Wire Wire Line
	2600 8850 2600 8950
Wire Wire Line
	14050 3200 14050 4750
Wire Wire Line
	15050 3850 15700 3850
Wire Notes Line
	14550 4300 14550 3450
Wire Notes Line
	15100 4300 14550 4300
Wire Notes Line
	15100 3450 15100 4300
Wire Notes Line
	14550 3450 15100 3450
Wire Wire Line
	14650 3200 14650 3500
Wire Wire Line
	14650 4200 14650 4400
Wire Notes Line
	4450 3300 3850 3300
Wire Notes Line
	4450 4150 4450 3300
Wire Notes Line
	3850 4150 4450 4150
Wire Notes Line
	3850 3300 3850 4150
Wire Wire Line
	4000 4100 4000 4250
Wire Notes Line
	7100 4100 7100 3650
Wire Notes Line
	8150 4100 7100 4100
Wire Notes Line
	8150 3650 8150 4100
Wire Notes Line
	7100 3650 8150 3650
Wire Wire Line
	8050 3950 8050 4050
Wire Wire Line
	7800 3950 7800 4050
Wire Notes Line
	8900 3950 8900 3150
Wire Notes Line
	9400 3950 8900 3950
Wire Notes Line
	9400 3150 9400 3950
Wire Notes Line
	8900 3150 9400 3150
Wire Notes Line
	8250 3950 8250 3150
Wire Notes Line
	8750 3950 8250 3950
Wire Notes Line
	8750 3150 8750 3950
Wire Notes Line
	8250 3150 8750 3150
Wire Wire Line
	9150 4050 9150 3900
Wire Wire Line
	9300 3050 9300 3200
Wire Wire Line
	9000 3050 9000 3200
Wire Wire Line
	8650 3050 8650 3200
Wire Wire Line
	8350 3050 8350 3200
Wire Notes Line
	5500 2300 5500 4200
Wire Notes Line
	5500 2300 10250 2300
Wire Notes Line
	1550 2300 4800 2300
Connection ~ 9300 2650
Connection ~ 3800 2850
Wire Wire Line
	3800 2550 3650 2550
Wire Wire Line
	3800 2850 3800 2550
Wire Wire Line
	3000 2850 3000 3050
Wire Wire Line
	3400 2850 4000 2850
Connection ~ 8500 4050
Wire Wire Line
	8500 3900 8500 4150
Connection ~ 8050 4050
Wire Wire Line
	7800 4050 9150 4050
Wire Wire Line
	3000 3050 3400 3050
Connection ~ 9000 2650
Connection ~ 8650 2650
Connection ~ 8350 2650
Wire Wire Line
	6850 2900 7250 2900
Wire Wire Line
	6850 2650 6850 2900
Connection ~ 7550 2650
Wire Wire Line
	7350 2650 7750 2650
Wire Wire Line
	7550 2400 7550 2700
Wire Wire Line
	7350 2400 7550 2400
Wire Wire Line
	10600 6850 10600 7950
Wire Wire Line
	6300 6850 10600 6850
Wire Wire Line
	-42900 96000 4200 96000
Wire Wire Line
	14550 9100 14550 8500
Wire Wire Line
	13400 9100 14550 9100
Wire Wire Line
	13400 8600 13400 9100
Connection ~ 12550 3500
Connection ~ 13050 7550
Wire Wire Line
	13050 7750 13050 7550
Wire Wire Line
	12850 7550 13800 7550
Connection ~ 10600 7950
Wire Notes Line
	12250 9250 12250 7150
Wire Notes Line
	15300 7150 15300 9250
Wire Wire Line
	7000 8450 7550 8450
Connection ~ 10350 7950
Wire Wire Line
	10350 7950 10800 7950
Connection ~ 8850 7400
Wire Wire Line
	10350 7900 10350 8050
Connection ~ 9800 8450
Wire Wire Line
	10050 8450 9800 8450
Wire Wire Line
	9800 7950 9800 8700
Connection ~ 8850 7950
Wire Wire Line
	9400 7950 8850 7950
Wire Wire Line
	8850 7900 8850 8050
Wire Wire Line
	2050 7400 10350 7400
Connection ~ 8200 8450
Wire Wire Line
	8200 8550 8200 8450
Wire Wire Line
	7950 8450 8550 8450
Connection ~ 14550 8500
Wire Wire Line
	14400 8500 14700 8500
Wire Wire Line
	13800 7550 13800 8100
Connection ~ 13050 8400
Wire Wire Line
	13050 8250 13050 8550
Wire Wire Line
	12750 8400 13400 8400
Connection ~ 4200 7950
Wire Wire Line
	4650 7950 4200 7950
Connection ~ 2700 7400
Wire Wire Line
	4200 7900 4200 8050
Connection ~ 3650 8450
Wire Wire Line
	3900 8450 3650 8450
Wire Wire Line
	3650 7950 3650 8700
Connection ~ 2700 7950
Wire Wire Line
	3250 7950 2700 7950
Wire Wire Line
	2700 7900 2700 8050
Connection ~ 2050 8450
Wire Wire Line
	2050 8550 2050 8450
Wire Wire Line
	1800 8450 2400 8450
Wire Notes Line
	10900 2300 14100 2300
Wire Wire Line
	13900 3200 13900 3400
Connection ~ 13100 2450
Wire Wire Line
	12950 2450 13650 2450
Wire Wire Line
	13100 2450 13100 2600
Connection ~ 13100 3200
Wire Wire Line
	13400 3200 13100 3200
Wire Wire Line
	13100 3100 13100 3300
Wire Wire Line
	12550 3700 12550 3500
Wire Wire Line
	13900 3900 13900 4250
Wire Wire Line
	13100 4200 13100 4250
Wire Wire Line
	12550 4250 12550 4200
Connection ~ 13100 2600
Wire Wire Line
	2600 9650 2600 9900
Connection ~ 2600 9800
Wire Wire Line
	2950 9300 3000 9300
Wire Wire Line
	3000 9300 3000 9750
Wire Wire Line
	3000 9750 2600 9750
Connection ~ 2600 9750
Wire Notes Line
	2500 8900 3050 8900
Wire Notes Line
	3050 8900 3050 9700
Wire Notes Line
	3050 9700 2500 9700
Wire Notes Line
	2500 9700 2500 8900
Wire Notes Line
	1600 2950 1600 3450
Wire Notes Line
	1600 3450 2450 3450
Wire Notes Line
	2450 3450 2450 2950
Wire Notes Line
	2450 2950 1600 2950
Wire Wire Line
	6300 6850 6300 7800
Wire Wire Line
	7000 8450 7000 8100
Wire Wire Line
	8750 8850 8750 8950
Wire Wire Line
	8750 9650 8750 9900
Wire Wire Line
	9100 9300 9150 9300
Wire Wire Line
	9150 9300 9150 9750
Wire Wire Line
	9150 9750 8750 9750
Connection ~ 8750 9750
Wire Notes Line
	8650 8900 9200 8900
Wire Notes Line
	9200 8900 9200 9700
Wire Notes Line
	9200 9700 8650 9700
Wire Notes Line
	8650 9700 8650 8900
Wire Wire Line
	10250 9800 10250 8850
Wire Wire Line
	8200 9800 11350 9800
Connection ~ 8750 9800
Wire Wire Line
	8200 9800 8200 9050
Wire Wire Line
	9800 9200 9800 9800
Connection ~ 9800 9800
Connection ~ 4200 7400
Wire Wire Line
	11350 7950 11350 8050
Wire Wire Line
	11350 9800 11350 8750
Wire Notes Line
	11250 8000 11800 8000
Wire Notes Line
	11800 8800 11250 8800
Wire Notes Line
	11250 8800 11250 8000
Connection ~ 10250 9800
Wire Notes Line
	11800 8000 11800 8800
Wire Wire Line
	11350 7950 11200 7950
Wire Wire Line
	1400 8450 1150 8450
Wire Wire Line
	1150 8450 1150 6250
Wire Notes Line
	11950 6700 11950 10100
Wire Notes Line
	1050 10100 1050 6700
Wire Notes Line
	12250 7150 15300 7150
Wire Notes Line
	15300 9250 12250 9250
Wire Wire Line
	15100 8500 15550 8500
Wire Wire Line
	11700 8400 12350 8400
Wire Notes Line
	1050 6700 11950 6700
Wire Notes Line
	11950 10100 1050 10100
Wire Wire Line
	4400 3750 4500 3750
Wire Wire Line
	4500 3750 4500 4200
Wire Wire Line
	4500 4200 4000 4200
Connection ~ 4000 4200
Wire Wire Line
	3900 3250 4000 3250
Wire Wire Line
	4000 3250 4000 3400
Wire Notes Line
	4800 2300 4800 4650
Wire Notes Line
	4800 4650 1550 4650
Wire Notes Line
	1550 4650 1550 2300
Wire Wire Line
	4700 2850 4700 4500
Wire Wire Line
	4700 4500 2550 4500
Wire Notes Line
	10250 2300 10250 4650
Wire Notes Line
	10250 4650 5500 4650
Wire Notes Line
	5500 4650 5500 4150
Wire Wire Line
	15700 3850 15700 6250
Wire Wire Line
	15700 6250 1150 6250
Wire Wire Line
	7550 3600 7550 3900
Wire Wire Line
	7550 3900 7400 3900
Wire Wire Line
	14050 4750 12150 4750
Wire Notes Line
	10900 2300 10900 4950
Wire Notes Line
	10900 4950 14100 4950
Wire Notes Line
	14100 4950 14100 2300
Wire Wire Line
	2350 3050 2600 3050
Wire Wire Line
	2350 3350 2550 3350
Wire Wire Line
	2550 3350 2550 4500
Wire Wire Line
	900  3200 1650 3200
Wire Notes Line
	5550 2800 5550 3300
Wire Notes Line
	5550 3300 6400 3300
Wire Notes Line
	6400 3300 6400 2800
Wire Notes Line
	6400 2800 5550 2800
Wire Wire Line
	4700 3050 5600 3050
Wire Wire Line
	6300 2900 6450 2900
Wire Wire Line
	6300 3200 6500 3200
Wire Wire Line
	6500 3200 6500 4350
Wire Wire Line
	4400 2850 4700 2850
Connection ~ 4700 3050
Wire Wire Line
	6500 4350 9850 4350
Wire Wire Line
	9850 4350 9850 2650
Wire Wire Line
	9850 2650 8150 2650
Wire Notes Line
	11100 3400 11100 3900
Wire Notes Line
	11100 3900 11950 3900
Wire Notes Line
	11950 3900 11950 3400
Wire Notes Line
	11950 3400 11100 3400
Wire Wire Line
	9850 3650 11150 3650
Wire Wire Line
	11850 3500 12800 3500
Wire Wire Line
	11850 3800 12150 3800
Wire Wire Line
	12150 3800 12150 4750
Connection ~ 9850 3650
Wire Wire Line
	13800 3200 14650 3200
Connection ~ 14050 3200
Wire Notes Line
	5200 7700 5200 8200
Wire Notes Line
	5200 8200 6050 8200
Wire Notes Line
	6050 8200 6050 7700
Wire Notes Line
	6050 7700 5200 7700
Wire Wire Line
	5050 7950 5250 7950
Wire Wire Line
	7000 8100 5950 8100
Wire Wire Line
	6300 7800 5950 7800
$EndSCHEMATC
