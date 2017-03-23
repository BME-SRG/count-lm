#! /bin/bash
if [ "$3" == "" ]
then
	echo "Nyelvi modellt tesztelő script"
	echo "Így használd: 1. paraméter: a tesztelendő nyelvi modell  2. paraméter: nyelvi modell fokszám  3. paraméter: a tesztszöveg neve és helye"
	exit 1
fi

ngram -lm $1 -order $2 -ppl $3
