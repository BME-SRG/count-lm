#! /bin/bash

#Visszaadja egy szöveg typejait"
#Így használd: STDIN-en várja a szöveget, STDOUT-ra írja ki"

cat $* | sed -r 's/\s+/\n/g' | sort -u
