#!/usr/bin/gnuplot -p -e
set size 1,0.5
set xlabel "Number of experts";
set ylabel "Size of model parameters";
f(x)=a*x+b;
fit f(x) "moe2trainable" using 1:2 via a,b;
x1=131072; 
y1=f(131072);
set xrange [2:500000];
set logscale xy;
set label ;
plot [0.1:500000] "moe2trainable" u 1:2 with points notitle,\
     [0.1:500000] f(x) notitle, \
     "" using (x1):(y1):(sprintf("%.0fGB with\n 128k experts",y1/(1024*1024*1024))) with labels notitle

