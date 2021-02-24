EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Air Quality"
Date "2021-02-12"
Rev ""
Comp "Olivier Wolf"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	2180 3055 2180 3060
Wire Wire Line
	2535 3055 2180 3055
$Comp
L Device:R R5
U 1 1 6027EE5C
P 3040 4155
F 0 "R5" V 2833 4155 50  0000 C CNN
F 1 "220 Ohm" V 2924 4155 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2970 4155 50  0001 C CNN
F 3 "~" H 3040 4155 50  0001 C CNN
	1    3040 4155
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 60297A8F
P 6185 4440
F 0 "#PWR011" H 6185 4190 50  0001 C CNN
F 1 "GND" H 6190 4267 50  0000 C CNN
F 2 "" H 6185 4440 50  0001 C CNN
F 3 "" H 6185 4440 50  0001 C CNN
	1    6185 4440
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR04
U 1 1 60297425
P 5205 4435
F 0 "#PWR04" H 5205 4285 50  0001 C CNN
F 1 "+3.3V" H 5220 4608 50  0000 C CNN
F 2 "" H 5205 4435 50  0001 C CNN
F 3 "" H 5205 4435 50  0001 C CNN
	1    5205 4435
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 60294C29
P 5505 4440
F 0 "R6" V 5298 4440 50  0000 C CNN
F 1 "10kOhm" V 5389 4440 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5435 4440 50  0001 C CNN
F 3 "~" H 5505 4440 50  0001 C CNN
	1    5505 4440
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 60293B0B
P 5985 4440
F 0 "SW1" H 5985 4725 50  0000 C CNN
F 1 "SW_Push" H 5985 4634 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 5985 4640 50  0001 C CNN
F 3 "~" H 5985 4640 50  0001 C CNN
	1    5985 4440
	1    0    0    -1  
$EndComp
Text Label 6070 3430 2    50   ~ 0
SCL
Text Label 6070 3630 2    50   ~ 0
SDA
Wire Wire Line
	5960 3330 5960 3340
Wire Wire Line
	6070 3330 5960 3330
$Comp
L power:GND #PWR06
U 1 1 6028FE4D
P 5960 3340
F 0 "#PWR06" H 5960 3090 50  0001 C CNN
F 1 "GND" H 5965 3167 50  0000 C CNN
F 2 "" H 5960 3340 50  0001 C CNN
F 3 "" H 5960 3340 50  0001 C CNN
	1    5960 3340
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR010
U 1 1 6028F68F
P 6070 3130
F 0 "#PWR010" H 6070 2980 50  0001 C CNN
F 1 "+3.3V" H 6085 3303 50  0000 C CNN
F 2 "" H 6070 3130 50  0001 C CNN
F 3 "" H 6070 3130 50  0001 C CNN
	1    6070 3130
	1    0    0    -1  
$EndComp
Text Label 6030 2795 2    50   ~ 0
SDA
Text Label 6030 2695 2    50   ~ 0
SCL
Text Label 5270 3295 0    50   ~ 0
TX
Text Label 5270 3390 0    50   ~ 0
RX
Text Label 5280 3590 0    50   ~ 0
SDA
Text Label 5270 3495 0    50   ~ 0
SCL
Wire Wire Line
	5830 2595 6030 2595
$Comp
L power:GND #PWR05
U 1 1 6028DDFB
P 5830 2595
F 0 "#PWR05" H 5830 2345 50  0001 C CNN
F 1 "GND" H 5835 2422 50  0000 C CNN
F 2 "" H 5830 2595 50  0001 C CNN
F 3 "" H 5830 2595 50  0001 C CNN
	1    5830 2595
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR09
U 1 1 6028CD8A
P 6030 2495
F 0 "#PWR09" H 6030 2345 50  0001 C CNN
F 1 "+3.3V" H 6045 2668 50  0000 C CNN
F 2 "" H 6030 2495 50  0001 C CNN
F 3 "" H 6030 2495 50  0001 C CNN
	1    6030 2495
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR02
U 1 1 6028C47B
P 5275 2995
F 0 "#PWR02" H 5275 2845 50  0001 C CNN
F 1 "+3.3V" H 5290 3168 50  0000 C CNN
F 2 "" H 5275 2995 50  0001 C CNN
F 3 "" H 5275 2995 50  0001 C CNN
	1    5275 2995
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 6028BE2C
P 5275 3095
F 0 "#PWR03" H 5275 2845 50  0001 C CNN
F 1 "GND" H 5280 2922 50  0000 C CNN
F 2 "" H 5275 3095 50  0001 C CNN
F 3 "" H 5275 3095 50  0001 C CNN
	1    5275 3095
	1    0    0    -1  
$EndComp
Wire Wire Line
	5135 2995 5275 2995
Wire Wire Line
	5135 3095 5275 3095
Wire Wire Line
	5280 3595 5280 3590
Wire Wire Line
	5135 3595 5280 3595
Wire Wire Line
	5135 3495 5270 3495
Wire Wire Line
	5270 3395 5270 3390
Wire Wire Line
	5135 3395 5270 3395
Wire Wire Line
	5135 3295 5270 3295
$Comp
L Connector:Conn_01x07_Female J3
U 1 1 6028803C
P 6270 3430
F 0 "J3" H 6298 3456 50  0000 L CNN
F 1 "Conn_01x07_Female" H 6298 3365 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x07_P2.54mm_Vertical" H 6270 3430 50  0001 C CNN
F 3 "~" H 6270 3430 50  0001 C CNN
	1    6270 3430
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 60286BC4
P 6230 2595
F 0 "J2" H 6258 2571 50  0000 L CNN
F 1 "Conn_01x04_Female" H 6258 2480 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6230 2595 50  0001 C CNN
F 3 "~" H 6230 2595 50  0001 C CNN
	1    6230 2595
	1    0    0    -1  
$EndComp
$Comp
L Device:Buzzer BZ1
U 1 1 60282041
P 2080 3160
F 0 "BZ1" V 2038 3312 50  0000 L CNN
F 1 "Buzzer" V 2129 3312 50  0000 L CNN
F 2 "Buzzer_Beeper:Buzzer_12x9.5RM7.6" V 2055 3260 50  0001 C CNN
F 3 "~" V 2055 3260 50  0001 C CNN
	1    2080 3160
	0    1    1    0   
$EndComp
Wire Wire Line
	3430 4155 3190 4155
Wire Wire Line
	3430 4095 3430 4155
Wire Wire Line
	3735 4095 3430 4095
Wire Wire Line
	3510 3975 3185 3975
Wire Wire Line
	3510 3995 3510 3975
Wire Wire Line
	3735 3995 3510 3995
Wire Wire Line
	3545 3895 3735 3895
Wire Wire Line
	3545 3820 3545 3895
Wire Wire Line
	3190 3820 3545 3820
Wire Wire Line
	3585 3670 3190 3670
Wire Wire Line
	3585 3795 3585 3670
Wire Wire Line
	3735 3795 3585 3795
Wire Wire Line
	3645 3695 3735 3695
Wire Wire Line
	3645 3530 3645 3695
Wire Wire Line
	3195 3530 3645 3530
Wire Wire Line
	2590 4155 2385 4155
Wire Wire Line
	2585 3975 2385 3975
Wire Wire Line
	2590 3820 2385 3820
Wire Wire Line
	2590 3670 2385 3670
Wire Wire Line
	2595 3530 2385 3530
$Comp
L Device:LED D4
U 1 1 60275716
P 2735 3975
F 0 "D4" H 2728 4192 50  0000 C CNN
F 1 "LED" H 2728 4101 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 2735 3975 50  0001 C CNN
F 3 "~" H 2735 3975 50  0001 C CNN
	1    2735 3975
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 60275219
P 2740 3820
F 0 "D3" H 2733 4037 50  0000 C CNN
F 1 "LED" H 2733 3946 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 2740 3820 50  0001 C CNN
F 3 "~" H 2740 3820 50  0001 C CNN
	1    2740 3820
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 60274376
P 2740 3670
F 0 "D2" H 2733 3887 50  0000 C CNN
F 1 "LED" H 2733 3796 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 2740 3670 50  0001 C CNN
F 3 "~" H 2740 3670 50  0001 C CNN
	1    2740 3670
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D5
U 1 1 602732DF
P 2740 4155
F 0 "D5" H 2733 4372 50  0000 C CNN
F 1 "LED" H 2733 4281 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 2740 4155 50  0001 C CNN
F 3 "~" H 2740 4155 50  0001 C CNN
	1    2740 4155
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 60270D29
P 2745 3530
F 0 "D1" H 2738 3747 50  0000 C CNN
F 1 "LED" H 2738 3656 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 2745 3530 50  0001 C CNN
F 3 "~" H 2745 3530 50  0001 C CNN
	1    2745 3530
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 60270948
P 3085 3055
F 0 "R7" V 2878 3055 50  0000 C CNN
F 1 "220 Ohm" V 2969 3055 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3015 3055 50  0001 C CNN
F 3 "~" H 3085 3055 50  0001 C CNN
	1    3085 3055
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 602706C8
P 3035 3975
F 0 "R4" V 2828 3975 50  0000 C CNN
F 1 "220 Ohm" V 2919 3975 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2965 3975 50  0001 C CNN
F 3 "~" H 3035 3975 50  0001 C CNN
	1    3035 3975
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 60270467
P 3040 3820
F 0 "R3" V 2833 3820 50  0000 C CNN
F 1 "220 Ohm" V 2924 3820 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2970 3820 50  0001 C CNN
F 3 "~" H 3040 3820 50  0001 C CNN
	1    3040 3820
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 6026FFA0
P 3040 3670
F 0 "R2" V 2833 3670 50  0000 C CNN
F 1 "220 Ohm" V 2924 3670 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2970 3670 50  0001 C CNN
F 3 "~" H 3040 3670 50  0001 C CNN
	1    3040 3670
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 6026F691
P 3045 3530
F 0 "R1" V 2838 3530 50  0000 C CNN
F 1 "220 Ohm" V 2929 3530 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2975 3530 50  0001 C CNN
F 3 "~" H 3045 3530 50  0001 C CNN
	1    3045 3530
	0    1    1    0   
$EndComp
$Comp
L Arduino-MKR:ARDUINO_MKR_ZERO U1
U 1 1 6026E99E
P 4435 3495
F 0 "U1" H 4435 4462 50  0000 C CNN
F 1 "ARDUINO_MKR_ZERO" H 4435 4371 50  0000 C CNN
F 2 "Arduino-MKR:MODULE_ARDUINO_MKR_ZERO" H 4435 3495 50  0001 L BNN
F 3 "" H 4435 3495 50  0001 L BNN
F 4 "Arduino" H 4435 3495 50  0001 L BNN "MANUFACTURER"
F 5 "N/A" H 4435 3495 50  0001 L BNN "PARTREV"
F 6 "N/A" H 4435 3495 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 7 "Manufacturer Recommendations" H 4435 3495 50  0001 L BNN "STANDARD"
	1    4435 3495
	1    0    0    -1  
$EndComp
Wire Wire Line
	5355 4440 5205 4440
Wire Wire Line
	5205 4440 5205 4435
Wire Wire Line
	3735 3595 3690 3595
Wire Wire Line
	3690 3595 3690 3055
Wire Wire Line
	3235 3055 3690 3055
Wire Wire Line
	1980 3060 1835 3060
$Comp
L power:GND #PWR0101
U 1 1 602A84F7
P 1835 3060
F 0 "#PWR0101" H 1835 2810 50  0001 C CNN
F 1 "GND" H 1840 2887 50  0000 C CNN
F 2 "" H 1835 3060 50  0001 C CNN
F 3 "" H 1835 3060 50  0001 C CNN
	1    1835 3060
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 602BD4B0
P 2385 3530
F 0 "#PWR0102" H 2385 3280 50  0001 C CNN
F 1 "GND" H 2390 3357 50  0000 C CNN
F 2 "" H 2385 3530 50  0001 C CNN
F 3 "" H 2385 3530 50  0001 C CNN
	1    2385 3530
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 602BD960
P 2385 3670
F 0 "#PWR0103" H 2385 3420 50  0001 C CNN
F 1 "GND" H 2390 3497 50  0000 C CNN
F 2 "" H 2385 3670 50  0001 C CNN
F 3 "" H 2385 3670 50  0001 C CNN
	1    2385 3670
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 602BDC55
P 2385 3820
F 0 "#PWR0104" H 2385 3570 50  0001 C CNN
F 1 "GND" H 2390 3647 50  0000 C CNN
F 2 "" H 2385 3820 50  0001 C CNN
F 3 "" H 2385 3820 50  0001 C CNN
	1    2385 3820
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 602BE14D
P 2385 3975
F 0 "#PWR0105" H 2385 3725 50  0001 C CNN
F 1 "GND" H 2390 3802 50  0000 C CNN
F 2 "" H 2385 3975 50  0001 C CNN
F 3 "" H 2385 3975 50  0001 C CNN
	1    2385 3975
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 602BE4D6
P 2385 4155
F 0 "#PWR0106" H 2385 3905 50  0001 C CNN
F 1 "GND" H 2390 3982 50  0000 C CNN
F 2 "" H 2385 4155 50  0001 C CNN
F 3 "" H 2385 4155 50  0001 C CNN
	1    2385 4155
	1    0    0    -1  
$EndComp
Wire Wire Line
	5785 4440 5655 4440
Wire Wire Line
	5655 4440 5655 4095
Wire Wire Line
	5655 4095 5135 4095
Connection ~ 5655 4440
$Comp
L Switch:SW_SPST SW2
U 1 1 602CE579
P 2735 3055
F 0 "SW2" H 2735 3290 50  0000 C CNN
F 1 "SW_SPST" H 2735 3199 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx01_Slide_9.78x4.72mm_W7.62mm_P2.54mm" H 2735 3055 50  0001 C CNN
F 3 "~" H 2735 3055 50  0001 C CNN
	1    2735 3055
	1    0    0    -1  
$EndComp
$EndSCHEMATC
