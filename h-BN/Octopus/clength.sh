#!/bin/bash
echo "#nL Total Energy" > clength.dat
list="15 20 25 30 35 40 45 50 55 60"
for nL in $list
do
    echo "$nL"
    sed -i "s/^[[:space:]]*L[[:space:]]*=[[:space:]]*[0-9.]*/L = $nL/" inp
    /home/alarod/lib/octopus-13.0/bin/octopus >& cout-$nL
    energy=$(grep "Total" static/info | head -2 | tail -1 | cut -d "=" -f 2)
    echo "$nL $energy" >> clength.dat
    rm -rf restart
done
