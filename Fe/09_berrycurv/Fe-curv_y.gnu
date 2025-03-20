set style data lines
set nokey
set xrange [0:15.00387]
set yrange [    -24.37389441 :   1195.25170228]
set arrow from       2.18926883,    -24.37389441 to       2.18926883,   1195.25170228 nohead
set arrow from       4.08523124,    -24.37389441 to       4.08523124,   1195.25170228 nohead
set arrow from       5.17986566,    -24.37389441 to       5.17986566,   1195.25170228 nohead
set arrow from       6.72791249,    -24.37389441 to       6.72791249,   1195.25170228 nohead
set arrow from       8.91718131,    -24.37389441 to       8.91718131,   1195.25170228 nohead
set arrow from      10.46522814,    -24.37389441 to      10.46522814,   1195.25170228 nohead
set arrow from      12.01327498,    -24.37389441 to      12.01327498,   1195.25170228 nohead
set arrow from      13.90923740,    -24.37389441 to      13.90923740,   1195.25170228 nohead
set xtics (" G "  0.00000," H "  2.18927," P "  4.08523," N "  5.17987," G "  6.72791," H "  8.91718," N " 10.46523," G " 12.01327," P " 13.90924," N " 15.00387)
 plot "Fe-curv.dat" u 1:3
