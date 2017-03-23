#! /bin/bash
if [ "$3" == "" ]
then
	echo "Befejez egy mondatot a betöltött nyelvi modell alapján"
	echo "Így használd: 1. paraméter: a generáláshoz használandó nyelvi modell  2. paraméter: nyelvi modell fokszáma  3. paraméter: a befejezendő mondat"
	exit 1
fi
ngram -lm $1 -order $2 -gen-prefixes $3