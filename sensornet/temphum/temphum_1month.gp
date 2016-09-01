set terminal png small size 1000,400
set output "Proto_1month.png"

load 'temphum_include.gp'

set format x "%Y-%m-%d"
set title "letzter Monat" textcolor rgbcolor "navy"

plot 'Proto_1month.txt' using 1:3 with lines lt 4 title "Temperatur", \
     'Proto_1month.txt' using 1:4 axes x1y2 with lines title "Luftfeuchtigkeit"
