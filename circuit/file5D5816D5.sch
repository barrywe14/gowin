EESchema Schematic File Version 2
LIBS:arduino
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
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
LIBS:Symbols_DCDC-ACDC-Converter_RevC_20Jul2012
LIBS:Symbols_EN60617_13Mar2013
LIBS:Symbols_EN60617-10_HF-Radio_DRAFT_12Sep2013
LIBS:Symbols_ICs-Diskrete_RevD10
LIBS:Symbols_ICs-Opto_RevB_16Sep2013
LIBS:Symbols_Microcontroller_Philips-NXP_RevA_06Oct2013
LIBS:Symbols_Socket-DIN41612_RevA
LIBS:Symbols_Transformer-Diskrete_RevA
LIBS:SymbolsSimilarEN60617+oldDIN617-RevE8
LIBS:hc11
LIBS:74xgxx
LIBS:ac-dc
LIBS:actel
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos_ieee
LIBS:dc-dc
LIBS:diode
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic_symbols
LIBS:icl7660
LIBS:infineon
LIBS:intersil
LIBS:ir
LIBS:Lattice
LIBS:leds
LIBS:LEM
LIBS:logic_programmable
LIBS:maxim
LIBS:mechanical
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic32mcu
LIBS:modules
LIBS:motor_drivers
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:Oscillators
LIBS:Power_Management
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:rfcom
LIBS:RFSolutions
LIBS:Sensor_Magnetic
LIBS:sensors
LIBS:silabs
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:transf
LIBS:triac_thyristor
LIBS:ttl_ieee
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:zetex
LIBS:Zilog
LIBS:lm2596_adjustable_dcdc_stepdownmodule
LIBS:mosfetmotordriver
LIBS:GoWin Electrical-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
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
L A1301KLHLT-T U1
U 1 1 5D5817A7
P 4450 2700
F 0 "U1" H 4450 3150 50  0000 L CNN
F 1 "A1301KLHLT-T" H 4450 3050 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Horizontal2_Inline_Narrow_Oval" H 4450 2350 50  0001 L CIN
F 3 "" H 4350 2700 50  0001 C CNN
	1    4450 2700
	1    0    0    -1  
$EndComp
$Comp
L A1301KLHLT-T U3
U 1 1 5D581813
P 4450 3800
F 0 "U3" H 4450 4250 50  0000 L CNN
F 1 "A1301KLHLT-T" H 4450 4150 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Horizontal2_Inline_Narrow_Oval" H 4450 3450 50  0001 L CIN
F 3 "" H 4350 3800 50  0001 C CNN
	1    4450 3800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR01
U 1 1 5D5818C3
P 4350 1950
F 0 "#PWR01" H 4350 1800 50  0001 C CNN
F 1 "+5V" H 4350 2090 50  0000 C CNN
F 2 "" H 4350 1950 50  0001 C CNN
F 3 "" H 4350 1950 50  0001 C CNN
	1    4350 1950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5D581927
P 4350 4350
F 0 "#PWR02" H 4350 4100 50  0001 C CNN
F 1 "GND" H 4350 4200 50  0000 C CNN
F 2 "" H 4350 4350 50  0001 C CNN
F 3 "" H 4350 4350 50  0001 C CNN
	1    4350 4350
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04_Female EncoderConn1
U 1 1 5D5819A2
P 6050 2300
F 0 "EncoderConn1" H 6050 2500 50  0000 C CNN
F 1 "Conn_01x04_Female" H 6050 2000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.00mm" H 6050 2300 50  0001 C CNN
F 3 "" H 6050 2300 50  0001 C CNN
	1    6050 2300
	1    0    0    -1  
$EndComp
Text HLabel 5450 1750 2    60   Input ~ 0
+5V
Text HLabel 5450 1850 2    60   Input ~ 0
EncoderTick
Text HLabel 5450 1950 2    60   Input ~ 0
EncoderDir
Text HLabel 5450 2050 2    60   Input ~ 0
GND
Wire Wire Line
	4350 1950 4350 2300
Wire Wire Line
	4350 3100 4350 3200
Wire Wire Line
	4350 3200 4050 3200
Wire Wire Line
	4050 3200 4050 4250
Wire Wire Line
	4050 4250 5450 4250
Wire Wire Line
	4350 4200 4350 4350
Connection ~ 4350 4250
Wire Wire Line
	4350 3400 4350 3350
Wire Wire Line
	4350 3350 4100 3350
Wire Wire Line
	4100 3350 4100 2050
Wire Wire Line
	4100 2050 4350 2050
Connection ~ 4350 2050
Wire Wire Line
	4350 2200 5850 2200
Connection ~ 4350 2200
Wire Wire Line
	4750 2700 5100 2700
Wire Wire Line
	5100 2700 5100 2300
Wire Wire Line
	5000 2300 5850 2300
Wire Wire Line
	4750 3800 5250 3800
Wire Wire Line
	5250 3800 5250 2400
Wire Wire Line
	5250 2400 5850 2400
Wire Wire Line
	5450 4250 5450 2050
Wire Wire Line
	5450 2500 5850 2500
Wire Wire Line
	5450 1750 5200 1750
Wire Wire Line
	5200 1750 5200 2200
Connection ~ 5200 2200
Wire Wire Line
	5450 1850 5250 1850
Wire Wire Line
	5250 1850 5250 2300
Connection ~ 5250 2300
Wire Wire Line
	5450 1950 5300 1950
Wire Wire Line
	5300 1950 5300 2400
Connection ~ 5300 2400
Connection ~ 5450 2500
Wire Wire Line
	4350 2050 4350 2200
Text GLabel 5000 1600 0    60   Input ~ 0
Encoder
Wire Wire Line
	5000 1600 5000 2300
Connection ~ 5100 2300
$EndSCHEMATC
