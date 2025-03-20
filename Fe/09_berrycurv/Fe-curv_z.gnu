set style data lines
set nokey
set xrange [0:15.00387]
set yrange [   -538.72917671 :   1198.63877194]
set arrow from       2.18926883,   -538.72917671 to       2.18926883,   1198.63877194 nohead
set arrow from       4.08523124,   -538.72917671 to       4.08523124,   1198.63877194 nohead
set arrow from       5.17986566,   -538.72917671 to       5.17986566,   1198.63877194 nohead
set arrow from       6.72791249,   -538.72917671 to       6.72791249,   1198.63877194 nohead
set arrow from       8.91718131,   -538.72917671 to       8.91718131,   1198.63877194 nohead
set arrow from      10.46522814,   -538.72917671 to      10.46522814,   1198.63877194 nohead
set arrow from      12.01327498,   -538.72917671 to      12.01327498,   1198.63877194 nohead
set arrow from      13.90923740,   -538.72917671 to      13.90923740,   1198.63877194 nohead
set xtics (" G "  0.00000," H "  2.18927," P "  4.08523," N "  5.17987," G "  6.72791," H "  8.91718," N " 10.46523," G " 12.01327," P " 13.90924," N " 15.00387)
 plot "Fe-curv.dat" u 1:4
