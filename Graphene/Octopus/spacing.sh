#!/bin/bash
echo "#Spacing Total Energy" > spacing.dat
list="0.28 0.26 0.24 0.22 0.20 0.18 0.16 0.14 0.12 0.10"
for spacing in $list
do
    echo "$spacing"
    sed -i "s/^[[:space:]]*Spacing[[:space:]]*=[[:space:]]*[0-9.]*\*angstrom/Spacing = $spacing*angstrom/" inp
    /home/alarod/lib/octopus-13.0/bin/octopus >& sout-$spacing
    energy=$(grep "Total" static/info | head -2 | tail -1 | cut -d "=" -f 2)
    echo "$spacing $energy" >> spacing.dat
    rm -rf restart
done
