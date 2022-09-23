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
L Device:CP C1
U 1 1 609EE9CD
P 2950 1700
F 0 "C1" V 2695 1700 50  0000 C CNN
F 1 "1uf" V 2786 1700 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P2.50mm" H 2988 1550 50  0001 C CNN
F 3 "~" H 2950 1700 50  0001 C CNN
	1    2950 1700
	0    1    1    0   
$EndComp
$Comp
L Device:CP C2
U 1 1 609EF10C
P 4550 1600
F 0 "C2" H 4668 1646 50  0000 L CNN
F 1 "1uf" H 4668 1555 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P2.50mm" H 4588 1450 50  0001 C CNN
F 3 "~" H 4550 1600 50  0001 C CNN
	1    4550 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 609EF53C
P 4300 1300
F 0 "R1" V 4250 1150 50  0000 C CNN
F 1 "100" V 4300 1300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4230 1300 50  0001 C CNN
F 3 "~" H 4300 1300 50  0001 C CNN
	1    4300 1300
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 609EFA6A
P 4300 1400
F 0 "R2" V 4250 1250 50  0000 C CNN
F 1 "1K5" V 4300 1400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4230 1400 50  0001 C CNN
F 3 "~" H 4300 1400 50  0001 C CNN
	1    4300 1400
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 609F012B
P 4550 2050
F 0 "R3" H 4620 2096 50  0000 L CNN
F 1 "68K" H 4620 2005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4480 2050 50  0001 C CNN
F 3 "~" H 4550 2050 50  0001 C CNN
	1    4550 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 609F025D
P 4100 2250
F 0 "R4" V 3893 2250 50  0000 C CNN
F 1 "8k2" V 3984 2250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4030 2250 50  0001 C CNN
F 3 "~" H 4100 2250 50  0001 C CNN
	1    4100 2250
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:LM324 U1
U 1 1 609F1053
P 3500 1700
F 0 "U1" H 3300 1350 50  0000 C CNN
F 1 "LM324" H 3300 1450 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 3450 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 3550 1900 50  0001 C CNN
	1    3500 1700
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Female J1
U 1 1 609F21B1
P 4900 1300
F 0 "J1" H 4928 1276 50  0000 L CNN
F 1 "sensor" H 4928 1185 50  0000 L CNN
F 2 "Package_DIP:DIP-4_W7.62mm_LongPads" H 4900 1300 50  0001 C CNN
F 3 "~" H 4900 1300 50  0001 C CNN
	1    4900 1300
	1    0    0    -1  
$EndComp
$Comp
L MCU_Module:Arduino_Nano_Every A1
U 1 1 609F55DB
P 6400 2250
F 0 "A1" H 6400 1069 50  0000 C CNN
F 1 "Arduino_Nano_Every" H 6400 1160 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 6400 2250 50  0001 C CIN
F 3 "https://content.arduino.cc/assets/NANOEveryV3.0_sch.pdf" H 6400 2250 50  0001 C CNN
	1    6400 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 1200 5500 1500
Connection ~ 5500 1500
Wire Wire Line
	4700 1500 5500 1500
Wire Wire Line
	5500 1200 4700 1200
Wire Wire Line
	4700 1400 4550 1400
Wire Wire Line
	5500 1500 5500 2250
Wire Wire Line
	4550 1450 4550 1400
Wire Wire Line
	4550 1750 4550 1800
Wire Wire Line
	4550 1900 4550 1800
Connection ~ 4550 1800
Wire Wire Line
	4550 2200 4550 2250
Connection ~ 4550 2250
Wire Wire Line
	4550 2250 5500 2250
Wire Wire Line
	6400 1250 6400 1200
Wire Wire Line
	6400 1200 5500 1200
Connection ~ 5500 1200
Wire Wire Line
	6200 3300 6200 3250
Wire Wire Line
	5800 2350 5800 1850
Wire Wire Line
	4100 1300 4150 1300
Wire Wire Line
	4150 1400 4100 1400
Connection ~ 4100 1400
Wire Wire Line
	4100 1400 4100 1300
Wire Wire Line
	4100 1400 4100 3300
Wire Wire Line
	4100 3300 6200 3300
Wire Wire Line
	4550 1400 4450 1400
Connection ~ 4550 1400
Wire Wire Line
	4250 2250 4550 2250
Wire Wire Line
	3900 1600 3800 1600
Wire Wire Line
	3800 1800 4550 1800
Wire Wire Line
	3200 1700 3150 1700
Wire Wire Line
	3150 1700 3150 2250
Wire Wire Line
	3150 2250 3550 2250
Connection ~ 3150 1700
Wire Wire Line
	3150 1700 3100 1700
Wire Wire Line
	2800 1700 2800 2350
Wire Wire Line
	2800 2350 5800 2350
Wire Wire Line
	3950 2250 3900 2250
Wire Wire Line
	3900 2250 3850 2250
Connection ~ 3900 2250
Wire Wire Line
	3900 2250 3900 1600
$Comp
L Device:C C3
U 1 1 609EE752
P 3700 2250
F 0 "C3" V 3448 2250 50  0000 C CNN
F 1 "104" V 3539 2250 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P2.50mm" H 3738 2100 50  0001 C CNN
F 3 "~" H 3700 2250 50  0001 C CNN
	1    3700 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	4450 1300 4700 1300
$Comp
L Device:R R5
U 1 1 60A38ECE
P 7150 2450
F 0 "R5" V 7100 2300 50  0000 C CNN
F 1 "220" V 7150 2450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 7080 2450 50  0001 C CNN
F 3 "~" H 7150 2450 50  0001 C CNN
	1    7150 2450
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 60A39298
P 7150 2350
F 0 "R6" V 7100 2200 50  0000 C CNN
F 1 "100" V 7150 2350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 7080 2350 50  0001 C CNN
F 3 "~" H 7150 2350 50  0001 C CNN
	1    7150 2350
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 60A3959D
P 7150 2250
F 0 "R7" V 7100 2100 50  0000 C CNN
F 1 "220" V 7150 2250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 7080 2250 50  0001 C CNN
F 3 "~" H 7150 2250 50  0001 C CNN
	1    7150 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 60A39717
P 7150 2550
F 0 "R8" V 7100 2400 50  0000 C CNN
F 1 "100" V 7150 2550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 7080 2550 50  0001 C CNN
F 3 "~" H 7150 2550 50  0001 C CNN
	1    7150 2550
	0    1    1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 60A3A0F8
P 7500 2450
F 0 "D1" H 7400 2500 50  0000 C CNN
F 1 "BRA" H 7650 2400 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P2.54mm_Vertical_KathodeUp" H 7500 2450 50  0001 C CNN
F 3 "~" H 7500 2450 50  0001 C CNN
	1    7500 2450
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 60A3A7A6
P 7500 2350
F 0 "D2" H 7400 2400 50  0000 C CNN
F 1 "NOR" H 7650 2300 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P2.54mm_Vertical_KathodeUp" H 7500 2350 50  0001 C CNN
F 3 "~" H 7500 2350 50  0001 C CNN
	1    7500 2350
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 60A3AD87
P 7500 2250
F 0 "D3" H 7400 2300 50  0000 C CNN
F 1 "TAQ" H 7650 2200 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P2.54mm_Vertical_KathodeUp" H 7500 2250 50  0001 C CNN
F 3 "~" H 7500 2250 50  0001 C CNN
	1    7500 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	7350 2450 7300 2450
Wire Wire Line
	7350 2350 7300 2350
Wire Wire Line
	7350 2250 7300 2250
Wire Wire Line
	7350 2550 7300 2550
Wire Wire Line
	7000 2250 6900 2250
Wire Wire Line
	6900 2350 7000 2350
Wire Wire Line
	7000 2450 6900 2450
Wire Wire Line
	6900 2550 7000 2550
Wire Wire Line
	7650 2250 7750 2250
Wire Wire Line
	7750 2250 7750 2350
Wire Wire Line
	7650 2450 7750 2450
Connection ~ 7750 2450
Wire Wire Line
	7750 2450 7750 2550
Wire Wire Line
	7650 2350 7750 2350
Connection ~ 7750 2350
Wire Wire Line
	7750 2350 7750 2450
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 60A5789A
P 8150 2550
F 0 "J2" H 8050 2750 50  0000 L CNN
F 1 "1GND 2VCC 3DIO 4CLK" V 8200 2050 50  0000 L CNN
F 2 "TerminalBlock_TE-Connectivity:TerminalBlock_TE_282834-4_1x04_P2.54mm_Horizontal" H 8150 2550 50  0001 C CNN
F 3 "~" H 8150 2550 50  0001 C CNN
	1    8150 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 2750 6900 2750
Wire Wire Line
	6900 2650 7950 2650
$Comp
L Device:R R9
U 1 1 609EDC09
P 7650 1500
F 0 "R9" V 7443 1500 50  0000 C CNN
F 1 "10K" V 7534 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 7580 1500 50  0001 C CNN
F 3 "~" H 7650 1500 50  0001 C CNN
	1    7650 1500
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 609EDED3
P 7650 1850
F 0 "R10" V 7443 1850 50  0000 C CNN
F 1 "10K" V 7534 1850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 7580 1850 50  0001 C CNN
F 3 "~" H 7650 1850 50  0001 C CNN
	1    7650 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	7450 1850 7500 1850
Wire Wire Line
	7500 1500 7450 1500
Wire Wire Line
	7800 1850 7850 1850
Wire Wire Line
	7850 1850 7850 1500
Wire Wire Line
	7850 1500 7800 1500
Wire Wire Line
	7000 2150 6900 2150
Wire Wire Line
	6900 2050 6950 2050
Wire Wire Line
	6950 2050 6950 1500
Wire Wire Line
	6950 1500 7050 1500
Wire Wire Line
	7000 1850 7050 1850
Wire Wire Line
	7000 1850 7000 2150
Wire Wire Line
	7950 2450 7850 2450
Wire Wire Line
	7850 2450 7850 2250
Connection ~ 7850 1850
Wire Wire Line
	7750 2250 7850 2250
Connection ~ 7750 2250
Connection ~ 7850 2250
Wire Wire Line
	7850 2250 7850 1850
$Comp
L Switch:SW_Push SW1
U 1 1 60A5029E
P 7250 1500
F 0 "SW1" H 7250 1785 50  0000 C CNN
F 1 "SW_Push" H 7250 1694 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSA0Axx1LFTR" H 7250 1700 50  0001 C CNN
F 3 "~" H 7250 1700 50  0001 C CNN
	1    7250 1500
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 60A506C5
P 7250 1850
F 0 "SW2" H 7250 2135 50  0000 C CNN
F 1 "SW_Push" H 7250 2044 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSA0Axx1LFTR" H 7250 2050 50  0001 C CNN
F 3 "~" H 7250 2050 50  0001 C CNN
	1    7250 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1850 5800 1850
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 60ABD548
P 7200 2900
F 0 "J3" H 7308 3081 50  0000 C CNN
F 1 "1GND 2VCC" H 7308 2990 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7200 2900 50  0001 C CNN
F 3 "~" H 7200 2900 50  0001 C CNN
	1    7200 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 2450 7850 2900
Wire Wire Line
	7850 2900 7400 2900
Connection ~ 7850 2450
Wire Wire Line
	7750 2550 7650 2550
Wire Wire Line
	7950 2550 7900 2550
Wire Wire Line
	7900 2550 7900 3000
Wire Wire Line
	7900 3000 7400 3000
$Comp
L Device:LED D4
U 1 1 60A3AF59
P 7500 2550
F 0 "D4" H 7400 2600 50  0000 C CNN
F 1 "PUL" H 7650 2500 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P2.54mm_Vertical_KathodeUp" H 7500 2550 50  0001 C CNN
F 3 "~" H 7500 2550 50  0001 C CNN
	1    7500 2550
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM324 U1
U 5 1 60B574FF
P 3600 1700
F 0 "U1" H 3550 1750 50  0000 L CNN
F 1 "LM324" H 3558 1655 50  0000 L CNN
F 2 "" H 3550 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 3650 1900 50  0001 C CNN
	5    3600 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2000 3500 2500
Wire Wire Line
	4550 2500 4550 2250
Wire Wire Line
	3500 2500 4550 2500
Wire Wire Line
	4100 1400 3500 1400
$EndSCHEMATC