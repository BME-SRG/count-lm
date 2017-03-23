#! /bin/bash
if [ "$3" == "" ]
then
	echo "Nyelvi modellt készít alapértelmezett simítással"
	echo "Így használd: 1. paraméter: a feldolgozandó szövegfájl  2. paraméter: nyelvi modell fokszám  3. paraméter: a készítendő nyelvi modell helye és neve"
	exit 1
fi
if [ "$2" == "0" ] ;
then
	cat $1 | sed -r 's/\s+/\n/g' | sort -u > ./vocab/vocab.tmp
	ngram-count -vocab ./vocab/vocab.tmp -order 1 -lm $3
else
	ngram-count -text $1 -order $2 -lm $3
fi
