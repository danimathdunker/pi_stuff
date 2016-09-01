set terminal png small size 1000,400
set output "Proto_1day.png"

load 'temphum_include.gp'

set format x "%H:%M:%S"
set title "letzte 24 Stunden" textcolor rgbcolor "navy"

plot 'Proto_1day.txt' using 1:3 with lines lt 4 title "Temperatur", \
     'Proto_1day.txt' using 1:4 axes x1y2 with lines title "Luftfeuchtigkeit"
