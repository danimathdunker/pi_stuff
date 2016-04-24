set terminal png small size 1000,400
set output "bmp280_1month.png"
load 'bmp280_include.gp'
set format x "%Y-%m-%d"


set title "letzter Monat" textcolor rgbcolor "navy"

plot 'bmp280_1month.txt' using 1:4 with lines lt 4 title "Luftdruck", \
     'bmp280_1month.txt' using 1:3 axes x1y2 with lines title "Temperatur Abeitszimmer"

