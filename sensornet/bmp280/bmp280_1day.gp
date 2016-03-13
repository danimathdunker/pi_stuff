set terminal png small size 1000,400
set output "bmp280_1day.png"
set xdata time
set timefmt "%Y-%m-%dT%H:%M:%S"
set format x "%H:%M:%S"

set object 1 rectangle from graph 0,0 to graph 1,1 back fc rgb "steelblue" fillstyle solid 1.0 noborder
set object 2 rectangle from screen 0,0 to screen 1,1 behind fc rgb "antiquewhite" fillstyle solid 1.0 noborder

set grid front lc rgb "seagreen"
set grid front y2tics lc rgb "seagreen"

set ylabel "Luftdruck" textcolor rgbcolor "navy"
set y2label "Temperatur Arbeitszimmer" textcolor rgbcolor "navy"
set xtics textcolor rgbcolor "navy"
set ytics textcolor rgbcolor "navy"
set y2tics textcolor rgbcolor "navy"

set title "letzte 24 Stunden" textcolor rgbcolor "navy"

plot 'bmp280_1day.txt' using 1:4 with lines lt 4 notitle, \
     'bmp280_1day.txt' using 1:3 axes x1y2 with lines notitle
