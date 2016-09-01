set terminal png small size 1000,400
set output "Att_1day.png"

load 'att_include.gp'

set format x "%H:%M:%S"
set title "letzte 24 Stunden" textcolor rgbcolor "navy"

plot 'Att_1day.txt' using 1:5 with impulses lt 6 title "Anzahl Versuche"
