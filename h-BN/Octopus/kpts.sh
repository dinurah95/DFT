#!/bin/bash
echo "#nk Total Energy" > kpts.dat
list="2 4 6 8 10 12 14 16  18 20"
for nkpt in $list
do
    echo "$nkpt"
    sed -i "s/^[[:space:]]*[0-9]*[[:space:]]*|[[:space:]]*[0-9]*[[:space:]]*|[[:space:]]*[0-9]*$/ $nkpt | $nkpt | 1/" inp
    /home/alarod/lib/octopus-13.0/bin/octopus >& kout-$nkpt
    energy=$(grep "Total" static/info | head -2 | tail -1 | cut -d "=" -f 2)
    echo "$nkpt $energy" >> kpts.dat
    rm -rf restart
done
