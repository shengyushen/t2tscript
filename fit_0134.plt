f01(x)=a01*x+b01
fit f01(x) "ss3_01" using 2:3 via a01,b01
f34(x)=a34*x+b34
fit f34(x) "ss3_34" using 2:3 via a34,b34
set xlabel "Transmitting time(ms)"
set ylabel "Transmitting size(MB)"
plot "ss3_01" u 2:3,\
     f01(x),\
     "ss3_34" u 2:3,\
     f34(x)
