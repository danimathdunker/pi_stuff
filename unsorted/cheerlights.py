#!/usr/bin/python
#
#   cheerlights.py - get cheerlights colour and sends it to Arduino via serial.
#
#   2015-12-12   Andreas Dunker   created
#
########################################################################

#import urllib.request
import urllib
import serial
import time

oldcol = '000000000#'

s = serial.Serial ('/dev/ttyACM0', 9600)
s.open ()
#print ('waiting 10 seconds')
time.sleep (10)

#f = urllib.request.urlopen('http://api.thingspeak.com/channels/1417/field/2/last.txt')
#rgb = f.read ()

while True:
    opener = urllib.FancyURLopener({})
    f = opener.open ('http://api.thingspeak.com/channels/1417/field/2/last.txt')
    rgb = f.read ()

    r = int (rgb [1:3], 16)
    g = int (rgb [3:5], 16)
    b = int (rgb [5:], 16)

    rstr = str (r).zfill (3)
    gstr = str (g).zfill (3)
    bstr = str (b).zfill (3)

    col = rstr + gstr + bstr + "#"
#    print (rstr + gstr + bstr + "#")
#    print (col)
    if ( col != oldcol):
        oldcol = col
#        print ('new color')
        s.write (col)
    time.sleep (10)

