set terminal png small size 1000,400
set output "Att_1week.png"

load 'att_include.gp'

set format x "%Y-%m-%d"
set title "letzte Woche" textcolor rgbcolor "navy"

plot 'Att_1week.txt' using 1:5 with impulses lt 6 title "Anzahl Versuche"
