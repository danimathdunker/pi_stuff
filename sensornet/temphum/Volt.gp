set terminal png small size 1000,400
set output "Volt.png"
load 'volt_include.gp'
set format x "%Y-%m-%d"

set title "alle Daten" textcolor rgbcolor "navy"

plot 'Volt.txt' using 1:6 with lines lt 6 title "Voltage"
