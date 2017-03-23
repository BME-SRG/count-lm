#! /bin/bash
if [ "$2" == "" ] ;
then
	echo "Kiírja a bemeneten kapott fájl sorainak N %-át"
	echo "Így használd: 1. paraméter: a feldolgozandó fájl  2. paraméter: kiírandó [0-100]%"
	exit 1
fi
LINENUM="$(wc -l < $1)"	#A bemenő fájl sorainak száma
LINENUMN="$(echo $2 \/ 100 \* $LINENUM | bc -l)"  #A kiválasztandó rész sorainak száma
cat $1 | head -n ${LINENUMN%.*}
