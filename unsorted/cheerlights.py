#!/usr/bin/python3
#
#   cheerlights.py - get cheerlights colour and sends it to Arduino via serial.
#
#   2015-12-12   Andreas Dunker   created
#
########################################################################

import urllib.request

f = urllib.request.urlopen('http://api.thingspeak.com/channels/1417/field/2/last.txt')
rgb = f.read ()

r = int (rgb [1:3], 16)
g = int (rgb [3:5], 16)
b = int (rgb [5:], 16)
print (r)
print (g)
print (b)

rstr = str (r).zfill (3)
gstr = str (g).zfill (3)
bstr = str (g).zfill (3)

print (rstr + gstr + bstr + "#")

