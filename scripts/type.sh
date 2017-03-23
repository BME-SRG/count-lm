#! /bin/bash

#Visszaadja egy szöveg type-jainak számát"
#Így használd: STDIN-en várja a szöveget"

cat $* | sed -r 's/\s+/\n/g' | sort -u | wc -w
