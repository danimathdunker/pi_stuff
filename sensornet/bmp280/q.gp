set terminal png small size 1000,400
set output "~/public_html/bmp280.png"
set xdata time
set timefmt "%Y-%m-%dT%H:%M:%S"
set format x "%Y-%m-%d\n%H:%M:%S"
set dashtype 1 ".-.-"

set object 1 rectangle from graph 0,0 to graph 1,1 back fc rgb "steelblue" fillstyle solid 1.0 noborder
set object 2 rectangle from screen 0,0 to screen 1,1 behind fc rgb "antiquewhite" fillstyle solid 1.0 noborder
#set object 1 rectangle from graph 0,0 to graph 1,1 back fc rgb "#303030" fillstyle solid 1.0
#set object 2 rectangle from screen 0,0 to screen 1,1 behind fc rgb "#202020" fillstyle solid 1.0

set grid front lc rgb "seagreen"
set grid front y2tics lc rgb "seagreen"

set ylabel "Luftdruck" textcolor rgbcolor "navy"
set y2label "Temperatur Arbeitszimmer" textcolor rgbcolor "navy"
set xtics textcolor rgbcolor "navy"
set ytics textcolor rgbcolor "navy"
set y2tics textcolor rgbcolor "navy"

set title "alle Daten" textcolor rgbcolor "navy"

plot 'bmp280.txt' using 1:4 with lines lt 4 notitle, \
     'bmp280.txt' using 1:3 axes x1y2 with lines notitle
