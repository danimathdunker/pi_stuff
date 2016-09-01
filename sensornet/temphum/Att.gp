set terminal png small size 1000,400
set output "Att.png"
load 'att_include.gp'
set format x "%Y-%m-%d"

set title "alle Daten" textcolor rgbcolor "navy"

plot 'Att.txt' using 1:5 with impulses lt 6 title "Anzahl Versuche"
