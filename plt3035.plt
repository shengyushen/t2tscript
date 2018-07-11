set multiplot

set origin 0.0,0.0
set size 1,0.16
set grid
set xtics 0.01
plot [150.3:150.35] "ss3_01" u 1:3

set origin 0.0,0.32
set size 1,0.16
set grid
set xtics 0.01
plot [150.3:150.35] "ss3_12" u 1:3

set origin 0.0,0.64
set size 1,0.16
set grid
set xtics 0.01
plot [150.3:150.35] "ss3_23" u 1:3

