
# Gowin Project
Dokumentasi Elektronik Produk pertanian Gowin (Dropper Biji Jagung). 


# Rangkaian Elektronik Gowin
Secara general sistem elektrik Gowin
![GambarElektronik](/circuit/GoWinElectricalv2/GoWinElectricalv2.sch.svg)
Dibawah ini adalah rangkaian di dalam kotak elektronik 
![GambarHardware](/circuit/GoWinElectricalv2/GowinController.sch.svg)
Rangkaian Elektronik dalam bentuk PDF bisa [klik disini](/circuit/GoWinElectricalv2/GowinController-Controller.pdf)


## Program Arduino
Program Alat bisa klik [disini](/circuit/GoWinElectricalv1/program/GowinScript/GowinScript.ino)
Kemudian program untuk test hardware bisa klik [disini](/circuit/GoWinElectricalv1/program/GowinTestScript/GowinTestScript.ino)
# Foto Dokumentasi
Kontrol, Kotak Elektronik, dan Instrument <br>
![GambarHardwareControlDanInstrumen](/EditedPicture_Control.jpg)
<br>
Dropper dan encoder 
<br>
![GambarHardwareControlDanInstrumen](https://github.com/zharfanw/gowin/blob/master/DropperAndEncoder.jpg "DropperAndEncoder.jpg")
<br>
Konektor kabel Dropper biji 
<br>
# Cara Pemakaian
1. Putar tombol switch disebelah kotak elektronik hitam. Pastikan indikator tegangan menyala !

2. Kemudian perhatikan tampilan pada lcd, dan tunggu muncul tulisan "Gowin" maka alat mulai beroperasi. Dan ketika ada tulisan "Jarak" dan "Drop" maka peralatan telah berjalan.

3. Untuk melakukan reset, maka tekan tombol "reset" pada display.

4. Untuk melakukan pengaturan, tekan tombol "Atur". Untuk mengubah parameter kalibrasi "Tick/Biji" bisa tekan tombol  ( up ) atau tombol ( down ). Satuan yang digunakan merupakan centimeter. Dan untuk mengubah parameter yang ingin diatur, tekan lagi tombol "Atur".

5. Untuk kembali beroperasi, tekan tombol ( u) dan tombol ( down ) bersamaan
## Perhatian
- Charge baterai ketika menunjukan 8.1 V, dan jangan sampai melebihi 12V. Indikator terlihat pada kotak elektronik.
# Aplikasi Pendukung

 1. [KiCad](http://kicad-pcb.org/) sebagai pembuat skematik
 2. [draw.io](https://www.draw.io/) sebagai aplikai pembuat diagram
 3. [Arduino IDE](https://www.arduino.cc/)  sebagai IDE untuk memprogram Arduino UNO

# Partner Terlibat
UASC Manufacturing



<!--stackedit_data:
eyJoaXN0b3J5IjpbLTk2NDkyMjcyMiwxNTU1MzIyNjY5LDg0OD
I0MjA3MCwxMjE2MTA1OTY4LC0xNjIwMDA5NTI3LC03NTUyMTA0
MTksMTcwNzc5MjgyMiwtMzQ5MTI3ODIsMjMzMzkyODI1LDE5OD
c5NjQzMzYsMTM3MDQwNzAzLDEzNzA0MDcwM119
-->