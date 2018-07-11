gnuplot -p -e \
  'set multiplot;set origin 0.0,0.0;set size 1,0.5;set xlabel "PPL";set ylabel "Average accuracy";plot [4.2:4.9] 1/exp(x),"+" using (4.33):(1/exp(4.33)):(sprintf("%f",1/exp(4.33))) with labels,"+" using (4.8):(1/exp(4.8)):(sprintf("%f",1/exp(4.8))) with labels'
