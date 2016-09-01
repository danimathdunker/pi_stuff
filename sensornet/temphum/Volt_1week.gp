set terminal png small size 1000,400
set output "Volt_1week.png"

load 'volt_include.gp'

set format x "%Y-%m-%d"
set title "letzte Woche" textcolor rgbcolor "navy"

plot 'Volt_1week.txt' using 1:6 with lines lt 6 title "Voltage"
