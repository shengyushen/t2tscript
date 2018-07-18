set size 1,0.5
set xlabel "Number of experts";
set ylabel "Size of model parameters";
f(x)=a*x+b;
fit f(x) "ttt2" using 1:2 via a,b;
x1=131072; 
y1=f(131072);
set xrange [2:500000];
set logscale xy;
set label ;
plot [0.1:500000] "ttt2" u 1:2 with points notitle,\
     [0.1:500000] f(x) notitle, \
     "" using (x1):(y1):(sprintf("%.0fGB with\n 128k experts",y1*4/(1024*1024*1024))) with labels notitle

