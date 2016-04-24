set terminal png small size 1000,400
set output "bmp280.png"
load 'bmp280_include.gp'
set format x "%Y-%m-%d"

set title "alle Daten" textcolor rgbcolor "navy"

plot 'bmp280.txt' using 1:4 with lines lt 4 title "Luftdruck", \
     'bmp280.txt' using 1:3 axes x1y2 with lines title "Temperatur Arbeitszimmer"
