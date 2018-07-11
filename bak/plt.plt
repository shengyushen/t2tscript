set xrange [180.2:180.5]
set xlabel "Time(seconds)"
set ylabel "Size(MB)"
plot \
  "ss3_01" u 1:3 ,\
  "ss3_02" u 1:3 ,\
  "ss3_03" u 1:3 ,\
  "ss3_10" u 1:3 ,\
  "ss3_12" u 1:3 ,\
  "ss3_13" u 1:3 ,\
  "ss3_20" u 1:3 ,\
  "ss3_21" u 1:3 ,\
  "ss3_23" u 1:3 ,\
  "ss3_30" u 1:3 ,\
  "ss3_31" u 1:3 ,\
  "ss3_32" u 1:3 
