set terminal png small size 1000,400
set output "Proto.png"
load 'temphum_include.gp'
set format x "%Y-%m-%d"

set title "alle Daten" textcolor rgbcolor "navy"

plot 'Proto.txt' using 1:3 with lines lt 4 title "Temperatur", \
     'Proto.txt' using 1:4 axes x1y2 with lines title "Luftfeuchtigkeit"
