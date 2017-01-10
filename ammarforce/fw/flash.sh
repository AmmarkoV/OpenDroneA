#!/bin/bash

#arduinousblinker
24 4D 3C 00 EF EF
echo -e "\x24\x4D\x3C\x00\xEF\xEF" > /dev/ttyACM0
avrdude -c stk500v2 -b 19200 -P /dev/ttyACM0  -p m8 -vvvvv 
avrdude -c stk500v2 -b 19200 -P /dev/ttyACM0  -p m8 -e -v -U flash:w:afro_nfet.hex:i

avrdude -b 19200 -P /dev/ttyUSB0  -c arduino -p m8 -v -e -U flash:w:afro_nfet.hex:i


exit 0
