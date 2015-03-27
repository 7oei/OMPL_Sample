#set terminal postscript eps color enhanced 20
#set output "out.eps"
set xrange [0:22]
set yrange [0:22]

set xlabel "x"
set ylabel "y"

set key outside
set key top right

set size square

plot "testcase1_obstacle.dat" using 1:2 with filledcurves lt rgb "#ff0033" fill solid 0.5 notitle,\
'edges.dat' using 1:2 with lines lt 1 lc rgb "#728470" lw 0.5 title 'edges',\
'path.dat' using 1:2 with lines lt 1 lc rgb "#191970" lw 2 title 'Path',\
'path0.dat' using 1:2 with lines lt 1 lc rgb "#ff4500" lw 2 title 'Path0'