set terminal png small size 1000,400
set output "Volt_1month.png"

load 'volt_include.gp'

set format x "%Y-%m-%d"
set title "letzter Monat" textcolor rgbcolor "navy"

plot 'Volt_1month.txt' using 1:6 with lines lt 6 title "Voltage"
