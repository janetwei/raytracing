reset
set ylabel 'time(sec)'
set style fill solid
set title 'perfomance comparison'
set term png enhanced font 'Verdana,10'
set output 'runtime.png'

plot [:]'output.txt' using 2:xtic(1) with histogram title 'original', \
'' using ($0+0.06):($2+0.015):2 with labels title ' ', \
'' using 3:xtic(1) with histogram title 'loop unrolling'  , \
'' using ($0+0.3):($3+0.015):3 with labels title ' ', \
'' using 4:xtic(1) with histogram title 'force inline'  , \
'' using ($0+0.3):($4+0.015):4 with labels title ' '
