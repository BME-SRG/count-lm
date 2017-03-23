#! /bin/bash
if [ "$3" == "" ]
then
	echo "Véletlenszerű szöveget generál nyelvi modell alapján"
	echo "Így használd: 1. paraméter: a generáláshoz használandó nyelvi modell  2. paraméter: nyelvi modell fokszám  3. paraméter: hány mondatot generáljon"
	exit 1
fi
ngram -lm $1 -order $2 -gen $3
