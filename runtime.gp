reset
set ylabel 'time(sec)'
set style fill solid
set title 'perfomance comparison'
set term png enhanced font 'Verdana,10'
set output 'runtime.png'

plot [:]'output.txt' using 2:xtic(1) with histogram title 'original', \
'' using ($0-0.15):($2+0.015):2 with labels title ' ', \
'' using 3:xtic(1) with histogram title '-Ofast'  , \
'' using 4:xtic(1) with histogram title 'loop unrolling'  , \
'' using ($0-0.05):($3+0.015):3 with labels title ' ', \
'' using ($0+0.05):($4+0.015):4 with labels title ' ',\
'' using 5:xtic(1) with histogram title 'force inline'  , \
'' using ($0+0.1):($5+0.015):5 with labels title ' ', \
'' using 6:xtic(1) with histogram title 'OpenMP'  , \
'' using ($0+0.25):($6+0.06):6 with labels title ' ',\
'' using 7:xtic(1) with histogram title 'pthread'  , \
'' using ($0+0.4):($7+0.015):7 with labels title ' '
