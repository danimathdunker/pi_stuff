set terminal png small size 1000,400
set output "Volt_1day.png"

load 'volt_include.gp'

set format x "%H:%M:%S"
set title "letzte 24 Stunden" textcolor rgbcolor "navy"

plot 'Volt_1day.txt' using 1:6 with lines lt 6 title "Voltage"
