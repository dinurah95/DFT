set arrow from       2.18926883,      3.43414587 to       2.18926883,     46.47919625 nohead
set arrow from       4.08523124,      3.43414587 to       4.08523124,     46.47919625 nohead
set arrow from       5.17986566,      3.43414587 to       5.17986566,     46.47919625 nohead
set arrow from       6.72791249,      3.43414587 to       6.72791249,     46.47919625 nohead
set arrow from       8.91718131,      3.43414587 to       8.91718131,     46.47919625 nohead
set arrow from      10.46522814,      3.43414587 to      10.46522814,     46.47919625 nohead
set arrow from      12.01327498,      3.43414587 to      12.01327498,     46.47919625 nohead
set arrow from      13.90923740,      3.43414587 to      13.90923740,     46.47919625 nohead
unset key
set xrange [0: 15.00387]
set yrange [      3.43414587 :     46.47919625]
set xtics (" G "  0.00000," H "  2.18927," P "  4.08523," N "  5.17987," G "  6.72791," H "  8.91718," N " 10.46523," G " 12.01327," P " 13.90924," N " 15.00387)
 set palette defined (-1 "blue", 0 "green", 1 "red")
 set pm3d map
 set zrange [-1:1]
 splot "Fe-bands.dat" with dots palette
