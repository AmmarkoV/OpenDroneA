# Controller

 - Turnigy 9X with module
        http://www.hobbyking.com/hobbyking/store/uh_viewitem.asp?idproduct=66518

# Quad

 - ZMR250 carbon ($$$) or glass ($)
 - A250 from HK --> 16e
 - cc3d mini revo 
 - battery 2200mah 
 - props 

# Future order

 - LEDs
 - new power distribution board
 - arduino
 - op-gps
 - op-link modem
 - OSD (minimOSD -> minopOSD)
 - voltage sensor
 - solder iron
 - bigger frame (300?)
   - EMAX Nighthawk 250 Pro II Pure Carbon Fiber Quadcopter Multicoptor Frame Kit
   - http://www.banggood.com/Nighthawk-250-Pro-II-Pure-Carbon-Fiber-Quadcopter-Multicoptor-Frame-Kit-p-1007104.html
 - more props: 5040, 6030, 6045, GF,HQ
 - bullet connectors
 - FTDI adapter.


# Setup and Test failsafe modes

 - http://de.iee168.wikia.com/wiki/LostOPWiki:_How_to_Setup_Failsafe_for_Revo_and_CC3D
 - add buzzer 


## FPV Gear Related:

 - runcam 2
 - cloverleaf antennas (NOTE same handedness, check connector type (RP-SMA or SMA))
 - connector extender 
 - connector angle (FrSky 90 degree Antenna Adapter)
 - TS5823 TX/RX 5.8Ghz , 32ch 200MW
 - Batteries? (maybe i can use the li-ion, test first)
 - Quannum DIY FPV v2 pro goggles??? Exei kai alla goggles o banggood se kales times.

### FPV Gear i got:

Andoer FPV 200mW AV Wireless Transmitter TX Rx Empfänger TS351 + RC805 Kit 2KM
2000M 


## Next order from HK

 - Quannum FPV v2 pro googles.
 - op link 
 - SMA connector 90' angle
 - battery pack for googles
 - battery pack for quad.
 - spare motor and esc?dr



# Motor Specs

Quick run down of the results - DYS BE1806 2300KV Brushless Motors:
GF 5030 Prop - 415 Grams pulling 9.0A @ 100% / 230 Grams pulling 3.6A @ 50%
HQ 5030 Prop - 360 Grams pulling 7.5A @ 100% / 205 Grams pulling 3.3A @ 50%
HQ 5040 Prop - 440 Grams pulling 10.6A @ 100% / 225 Grams pulling 4.2A @ 50%
HQ 6030 Prop - 485 Grams pulling 10.2A @ 100% / 240 Grams pulling 4.0A @ 50%
HQ 6045 Prop - 580 Grams pulling 16.1A @ 100% / 235 Grams pulling 5.1A @ 50%


http://www.rcgroups.com/forums/showthread.php?t=2180080That
http://www.banggood.com/DYS-BE1806-2300KV-Brushless-Motor-2-3S-for-Mini-Multicopters-p-933192.html



# Usefull links:

 - Mini quad wiring diagram: http://boltrc.com/blog/typical-mini-quad-wiring-diagram/
 - FPV 101: http://www.dronetrest.com/t/fpv-cameras-for-your-drone-what-you-need-to-know-before-you-buy-one/1441



# Op LINK info

- Coordinator Device ID (ground): 606DCD92

Howto connect the oplink mini to the T9X for vehicle control.
http://opwiki.readthedocs.io/en/latest/user_manual/oplink/control.html
https://librepilot.atlassian.net/wiki/display/LPDOC/OPLink+Configuration

Check the images in this folder for the pinout. There is no 6V pin in T9X (it is grounded). 
So we need a 5v bec...
- 78M05 - 5V 0.5A Positive Regulator Datasheet - Buy 78M05 (from mark1 pdb)

## Bluetooth module for oplink ground

https://www.cableworks.gr

hc-05 for master/slave mode.
https://mcuoneclipse.com/2013/06/19/using-the-hc-06-bluetooth-module/


