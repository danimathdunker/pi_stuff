set terminal png small size 1000,400
set output "lemath01.df.png"
set xdata time
set timefmt "%Y-%m-%dT%H:%M:%S"
set format x "%Y-%m-%d\n%H:%M:%S"

set object 1 rectangle from graph 0,0 to graph 1,1 back fc rgb "steelblue" fillstyle solid 1.0 noborder
set object 2 rectangle from screen 0,0 to screen 1,1 behind fc rgb "antiquewhite" fillstyle solid 1.0 noborder

set grid front lc rgb "seagreen"
set grid front y2tics lc rgb "seagreen"

set ylabel "kB" textcolor rgbcolor "navy"
set xtics textcolor rgbcolor "navy"
set ytics textcolor rgbcolor "navy"

set yrange [0:*]
set format y "%.0f"

set title "df: alle Daten" textcolor rgbcolor "navy"

plot 'lemath01.df.txt' using 1:3 with lines lt 4 title "gesamt", \
     'lemath01.df.txt' using 1:($4+$5) with filledcurves below x1 title "frei", \
     'lemath01.df.txt' using 1:4 with filledcurves below x1 lt 7 title "verwendet"

