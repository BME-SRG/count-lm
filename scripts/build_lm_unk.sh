#! /bin/bash
if [ "$4" == "" ]
then
	echo "Nyelvi modellt készít a megadott szöveg és szótár alapján. A szótáron kívüli szavakat <unk> szimbólummal helyettesíti"
	echo "Így használd: 1. paraméter: a feldolgozandó szövegfájl  2. paraméter: nyelvi modell fokszám  3. paraméter: a készítendő nyelvi modell helye és neve 4. paraméter: a szótár"
	exit 1
fi
ngram-count -text $1 -order $2 -vocab $4 -unk -lm $3  
