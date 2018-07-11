set multiplot

set origin 0.0,0.0
set size 1,0.16
set grid
set xtics 0.1
plot [150:151] "ss3_01" u 1:3

set origin 0.0,0.16
set size 1,0.16
set grid
set xtics 0.1
plot [150:151] "ss3_10" u 1:3

set origin 0.0,0.32
set size 1,0.16
set grid
set xtics 0.1
plot [150:151] "ss3_12" u 1:3

set origin 0.0,0.48
set size 1,0.16
set grid
set xtics 0.1
plot [150:151] "ss3_21" u 1:3

set origin 0.0,0.64
set size 1,0.16
set grid
set xtics 0.1
plot [150:151] "ss3_23" u 1:3

set origin 0.0,0.80
set size 1,0.16
set grid
set xtics 0.1
plot [150:151] "ss3_32" u 1:3
