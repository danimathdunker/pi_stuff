set xdata time
set timefmt "%Y-%m-%dT%H:%M:%S"

set object 1 rectangle from graph 0,0 to graph 1,1 back fc rgb "white" fillstyle solid 1.0 noborder
#set object 1 rectangle from graph 0,0 to graph 1,1 back fc rgb "honeydew" fillstyle solid 1.0 noborder
set object 2 rectangle from screen 0,0 to screen 1,1 behind fc rgb "antiquewhite" fillstyle solid 1.0 noborder

set grid front lc rgb "midnight-blue"
set grid front y2tics lc rgb "midnight-blue"

set ylabel "#" textcolor rgbcolor "navy"
set xtics textcolor rgbcolor "navy"
set ytics textcolor rgbcolor "navy"

set yrange [0:*]
