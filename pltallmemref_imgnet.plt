#!/usr/bin/gnuplot -p
set multiplot

set origin 0.0,0.0
set size 0.5,0.16
set grid
set xtics 10
set ytics 10
plot [50.2:50.6] "ss3_01" u 1:3

set origin 0.0,0.16
set size 0.5,0.16
set grid
set xtics 10
plot [50.2:50.6] "ss3_10" u 1:3

set origin 0.0,0.32
set size 0.5,0.16
set grid
set xtics 10
plot [50.2:50.6] "ss3_02" u 1:3

set origin 0.0,0.48
set size 0.5,0.16
set grid
set xtics 10
plot [50.2:50.6] "ss3_20" u 1:3

set origin 0.0,0.64
set size 0.5,0.16
set grid
set xtics 10
plot [50.2:50.6] "ss3_03" u 1:3

set origin 0.0,0.80
set size 0.5,0.16
set grid
set xtics 10
plot [50.2:50.6] "ss3_30" u 1:3

set origin 0.5,0.0
set size 0.5,0.16
set grid
set xtics 10
plot [50.2:50.6] "ss3_12" u 1:3

set origin 0.5,0.16
set size 0.5,0.16
set grid
set xtics 10
plot [50.2:50.6] "ss3_21" u 1:3

set origin 0.5,0.32
set size 0.5,0.16
set grid
set xtics 10
plot [50.2:50.6] "ss3_13" u 1:3

set origin 0.5,0.48
set size 0.5,0.16
set grid
set xtics 10
plot [50.2:50.6] "ss3_31" u 1:3

set origin 0.5,0.64
set size 0.5,0.16
set grid
set xtics 10
plot [50.2:50.6] "ss3_23" u 1:3

set origin 0.5,0.80
set size 0.5,0.16
set grid
set xtics 10
plot [50.2:50.6] "ss3_32" u 1:3

