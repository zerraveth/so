#!/bin/bash
kat=$1



for (( ;; )) ; do
echo -n "podaj cene minimalna: "
read cenamin
echo -n "podaj cene maksymalna: "
read cenamax
if (( $cenamin == 0 || $cenamax==0)) ; then
break

fi
awk 'BEGIN {licz=0} /'$kat'/ {if($3>0 && $4<'$cenamax' && $4>'$cenamin') {print $1" "$2" "$4;licz++; }} END {printf "wybranych pozycji " licz;}' dane
echo
done

